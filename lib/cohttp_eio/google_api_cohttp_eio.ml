let perform ~client { Google_api.Http.meth; uri; headers; body } =
  Eio.Switch.run @@ fun sw ->
  let response, reader =
    Cohttp_eio.Client.call ~sw ~headers:(Http.Header.of_list headers)
      ?body:(Option.map Cohttp_eio.Body.of_string body)
      client
      (meth :> Http.Method.t)
      uri
  in
  {
    Google_api.Http.status = Http.Status.to_int (Http.Response.status response);
    headers = Http.Header.to_list (Http.Response.headers response);
    body = Eio.Buf_read.of_flow ~max_size:Int.max_int reader |> Eio.Buf_read.take_all;
  }

(* Raising from the handler frame would skip the handlers between the perform site and here, so
   failures go back through [discontinue]. *)
let run ~client k =
  try k ()
  with effect Google_api.Http.Request request, k -> (
    match perform ~client request with
    | response -> Effect.Deep.continue k response
    | exception exn -> Effect.Deep.discontinue k exn)
