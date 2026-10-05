type t = (string * string list) list

let required name encode value = [ name, [ encode value ] ]
let optional name encode = function None -> [] | Some value -> required name encode value

(* Uri renders [(name, [a; b])] as [name=a,b]. *)
let repeated name encode values =
  Option.value values ~default:[] |> List.map (fun value -> name, [ encode value ])
