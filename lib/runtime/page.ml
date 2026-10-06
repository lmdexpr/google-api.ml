[@@@alert "-internal"]

type ('acc, 'a) state = Done of ('acc, Error.t) result | Next of 'acc * 'a Call.t

let step ~next_page_token ~f acc call = function
  | Error e -> Done (Error e)
  | Ok page -> (
    let acc = f acc page in
    match next_page_token page with
    | None | Some "" -> Done (Ok acc)
    | Some token -> Next (acc, Call.page_token token call))

let fold ~access_token ~next_page_token ~init ~f call =
  let rec go acc call =
    match step ~next_page_token ~f acc call (Call.execute ~access_token call) with
    | Done result -> result
    | Next (acc, call) -> go acc call
  in
  go init call

(* Batch results come in the order of the pending states. *)
let advance ~next_page_token ~f states results =
  let advance results state =
    match state, results with
    | Next (acc, call), result :: results -> results, step ~next_page_token ~f acc call result
    | (Done _ | Next _), results -> results, state
  in
  List.fold_left_map advance results states |> snd

let fold_batch ~access_token ~endpoint ~next_page_token ~init ~f calls =
  let pending = List.filter_map (function Next (_, call) -> Some call | Done _ -> None) in
  let finished = List.filter_map (function Done result -> Some result | Next _ -> None) in
  let rec go states =
    match pending states with
    | [] -> Ok (finished states)
    | calls -> (
      match Batch.execute ~access_token ~endpoint calls with
      | Error e -> Error e
      | Ok results -> go (advance ~next_page_token ~f states results))
  in
  go (List.map (fun call -> Next (init, call)) calls)
