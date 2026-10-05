[@@@alert "-internal"]

module Calendar = Google_api_calendar
module Http = Google_api.Http
module Call = Google_api_runtime.Call

let json = Alcotest.testable Yojson.Safe.pp Yojson.Safe.equal
let parse = Yojson.Safe.from_string
let uri call = Uri.to_string (Call.request call).uri
let unwrap = function Ok x -> x | Error e -> Alcotest.fail (Google_api.Error.to_string e)

let with_stub ~(respond : Http.request -> Http.response) k =
  try k () with effect Http.Request request, k -> Effect.Deep.continue k (respond request)

(* Events *)

let list_events =
  Calendar.Events.list ~calendar_id:"room#1@resource.calendar.google.com"
    ~time_min:"2026-10-05T00:00:00Z" ~single_events:true ~order_by:`Start_time
    ~event_types:[ `Default; `Focus_time ] ~shared_extended_property:[ "k=v" ] ()
  |> Call.fields "nextPageToken,items(id,start,end)"

let test_list_events_query () =
  Alcotest.(check string)
    "uri"
    "https://www.googleapis.com/calendar/v3/calendars/room%231@resource.calendar.google.com/events?fields=nextPageToken%2Citems(id%2Cstart%2Cend)&eventTypes=default&eventTypes=focusTime&orderBy=startTime&sharedExtendedProperty=k=v&singleEvents=true&timeMin=2026-10-05T00:00:00Z"
    (uri list_events)

let test_list_events_decodes () =
  let events =
    Call.response list_events ~status:200
      ~body:
        {|{"items":[{"id":"e1","start":{"dateTime":"2026-10-05T10:00:00+09:00","timeZone":"Asia/Tokyo"},"end":{"date":"2026-10-06"},"extendedProperties":{"shared":{"k":"v"}},"eventType":"focusTime"}]}|}
    |> unwrap
  in
  match events.items with
  | Some [ event ] ->
    Alcotest.(check (option string))
      "start" (Some "2026-10-05T10:00:00+09:00")
      (Option.bind event.start (fun (start : Calendar.event_date_time) -> start.date_time));
    Alcotest.(check (option string))
      "end" (Some "2026-10-06")
      (Option.bind event.end_ (fun (end_ : Calendar.event_date_time) -> end_.date));
    Alcotest.(check (option (list (pair string string))))
      "shared"
      (Some [ "k", "v" ])
      (Option.bind event.extended_properties
         (fun (properties : Calendar.event_extended_properties) -> properties.shared));
    Alcotest.(check (option string)) "event type" (Some "focusTime") event.event_type
  | Some _ | None -> Alcotest.fail "expected one event"

let test_insert_event () =
  let date_time date_time = Calendar.make_event_date_time ~date_time ~time_zone:"Asia/Tokyo" () in
  let body =
    Calendar.make_event ~summary:"Meeting"
      ~start:(date_time "2026-10-05T10:00:00+09:00")
      ~end_:(date_time "2026-10-05T11:00:00+09:00")
      ~attendees:[ Calendar.make_event_attendee ~email:"a@example.com" ~optional:true () ]
      ()
  in
  let call =
    Calendar.Events.insert ~calendar_id:"primary" ~body ~send_updates:`All
      ~conference_data_version:1 ()
  in
  Alcotest.(check string)
    "uri"
    "https://www.googleapis.com/calendar/v3/calendars/primary/events?conferenceDataVersion=1&sendUpdates=all"
    (uri call);
  Alcotest.(check (option json))
    "body"
    (Some
       (parse
          {|{"summary":"Meeting","start":{"dateTime":"2026-10-05T10:00:00+09:00","timeZone":"Asia/Tokyo"},"end":{"dateTime":"2026-10-05T11:00:00+09:00","timeZone":"Asia/Tokyo"},"attendees":[{"email":"a@example.com","optional":true}]}|}))
    (Option.map parse (Call.request call).body)

(* FreeBusy *)

let test_free_busy () =
  let body =
    Calendar.make_free_busy_request ~time_min:"2026-10-05T00:00:00Z"
      ~time_max:"2026-10-06T00:00:00Z"
      ~items:[ Calendar.make_free_busy_request_item ~id:"a@example.com" () ]
      ()
  in
  let respond (_ : Http.request) =
    {
      Http.status = 200;
      headers = [];
      body =
        {|{"kind":"calendar#freeBusy","calendars":{"a@example.com":{"busy":[{"start":"2026-10-05T01:00:00Z","end":"2026-10-05T02:00:00Z"}]},"b@example.com":{"errors":[{"domain":"global","reason":"notFound"}]}}}|};
    }
  in
  let response =
    with_stub ~respond (fun () ->
      Calendar.Freebusy.query ~body () |> Call.execute ~access_token:"token")
    |> unwrap
  in
  let calendar id = Option.bind response.calendars (List.assoc_opt id) in
  Alcotest.(check (option (list (pair (option string) (option string)))))
    "busy"
    (Some [ Some "2026-10-05T01:00:00Z", Some "2026-10-05T02:00:00Z" ])
    (calendar "a@example.com"
    |> Fun.flip Option.bind (fun (calendar : Calendar.free_busy_calendar) -> calendar.busy)
    |> Option.map (List.map (fun (period : Calendar.time_period) -> period.start, period.end_)));
  Alcotest.(check (option (list (option string))))
    "errors" (Some [ Some "notFound" ])
    (calendar "b@example.com"
    |> Fun.flip Option.bind (fun (calendar : Calendar.free_busy_calendar) -> calendar.errors)
    |> Option.map (List.map (fun (error : Calendar.error) -> error.reason)))

let test_batch_endpoint () =
  Alcotest.(check string)
    "endpoint" "https://www.googleapis.com/batch/calendar/v3"
    (Uri.to_string Calendar.batch_endpoint)

let () =
  Alcotest.run "google-api-calendar"
    [
      ( "events",
        [
          Alcotest.test_case "list query" `Quick test_list_events_query;
          Alcotest.test_case "list decodes" `Quick test_list_events_decodes;
          Alcotest.test_case "insert" `Quick test_insert_event;
        ] );
      ( "freebusy",
        [
          Alcotest.test_case "query" `Quick test_free_busy;
          Alcotest.test_case "batch endpoint" `Quick test_batch_endpoint;
        ] );
    ]
