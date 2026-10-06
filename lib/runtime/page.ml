[@@@alert "-internal"]

let fold ~access_token ~next_page_token ~init ~f call =
  let rec go acc call =
    match Call.execute ~access_token call with
    | Error e -> Error e
    | Ok page -> (
      let acc = f acc page in
      match next_page_token page with
      | None | Some "" -> Ok acc
      | Some token -> go acc (Call.page_token token call))
  in
  go init call
