let usage = "google_api_gen DISCOVERY.json OUTPUT.ml OUTPUT.mli"

let write path contents =
  Out_channel.with_open_bin path (fun channel -> Out_channel.output_string channel contents)

let () =
  match Sys.argv with
  | [| _; discovery; ml_path; mli_path |] -> (
    match
      Google_api_gen.Discovery.of_yojson (Yojson.Safe.from_file discovery)
      |> Google_api_gen.Emit.generate
    with
    | ml, mli ->
      write ml_path ml;
      write mli_path mli
    | exception Google_api_gen.Discovery.Unsupported { path; message } ->
      Printf.eprintf "%s: %s: %s\n" discovery path message;
      exit 1
    | exception Google_api_gen.Emit.Invalid message ->
      Printf.eprintf "%s: %s\n" discovery message;
      exit 1)
  | _ ->
    prerr_endline usage;
    exit 2
