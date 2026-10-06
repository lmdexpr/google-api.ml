[@@@alert "-internal"]

(* [Next (pages, acc, call)]: [pages] pages are folded into [acc]; [call] asks for the next one. *)
type ('acc, 'a) state = Done of ('acc, Error.t) result | Next of int * 'acc * 'a Call.t

let step ?max_pages ~next_page_token ~f pages acc call = function
  | Error e -> Done (Error e)
  | Ok page -> (
    let acc = f acc page and pages = pages + 1 in
    match next_page_token page, max_pages with
    | (None | Some ""), _ -> Done (Ok acc)
    | Some _, Some max_pages when pages >= max_pages ->
      Done (Error (Error.Too_many_pages { max_pages }))
    | Some token, (Some _ | None) -> Next (pages, acc, Call.page_token token call))

let fold ~access_token ?max_pages ~next_page_token ~init ~f call =
  let rec go pages acc call =
    match step ?max_pages ~next_page_token ~f pages acc call (Call.execute ~access_token call) with
    | Done result -> result
    | Next (pages, acc, call) -> go pages acc call
  in
  go 0 init call

(* Batch results come in the order of the pending states. *)
let advance ?max_pages ~next_page_token ~f states results =
  let advance results state =
    match state, results with
    | Next (pages, acc, call), result :: results ->
      results, step ?max_pages ~next_page_token ~f pages acc call result
    | (Done _ | Next _), results -> results, state
  in
  List.fold_left_map advance results states |> snd

let fold_batch ~access_token ~endpoint ?max_pages ~next_page_token ~init ~f calls =
  let pending = List.filter_map (function Next (_, _, call) -> Some call | Done _ -> None) in
  let finished = List.filter_map (function Done result -> Some result | Next _ -> None) in
  let rec go states =
    match pending states with
    | [] -> Ok (finished states)
    | calls -> (
      match Batch.execute ~access_token ~endpoint calls with
      | Error e -> Error e
      | Ok results -> go (advance ?max_pages ~next_page_token ~f states results))
  in
  go (List.map (fun call -> Next (0, init, call)) calls)
