let is_upper c = c >= 'A' && c <= 'Z'
let is_lower c = c >= 'a' && c <= 'z'
let is_digit c = c >= '0' && c <= '9'

let words s =
  let len = String.length s in
  let at i = if i >= 0 && i < len then Some s.[i] else None in
  let boundary i =
    match at (i - 1), at (i + 1) with
    | Some prev, _ when is_lower prev || is_digit prev -> true
    | Some prev, Some next when is_upper prev && is_lower next -> true
    | Some _, (Some _ | None) | None, (Some _ | None) -> false
  in
  let buffer = Buffer.create (len + 8) in
  s
  |> String.iteri (fun i c ->
    if is_upper c then (
      if boundary i then Buffer.add_char buffer '_';
      Buffer.add_char buffer (Char.lowercase_ascii c))
    else if is_lower c || is_digit c then
      Buffer.add_char buffer c
    else
      Buffer.add_char buffer '_');
  Buffer.contents buffer |> String.split_all ~sep:"_" ~drop:String.is_empty

let snake s = match words s with [] -> "x" | words -> String.concat "_" words

let keywords =
  [
    "and";
    "as";
    "assert";
    "asr";
    "begin";
    "class";
    "constraint";
    "do";
    "done";
    "downto";
    "effect";
    "else";
    "end";
    "exception";
    "external";
    "false";
    "for";
    "fun";
    "function";
    "functor";
    "if";
    "in";
    "include";
    "inherit";
    "initializer";
    "land";
    "lazy";
    "let";
    "lor";
    "lsl";
    "lsr";
    "lxor";
    "match";
    "method";
    "mod";
    "module";
    "mutable";
    "new";
    "nonrec";
    "object";
    "of";
    "open";
    "or";
    "private";
    "rec";
    "sig";
    "struct";
    "then";
    "to";
    "true";
    "try";
    "type";
    "val";
    "virtual";
    "when";
    "while";
    "with";
  ]

let builtin_types =
  [
    "string";
    "int";
    "int64";
    "float";
    "bool";
    "list";
    "option";
    "unit";
    "result";
    "char";
    "bytes";
    "array";
    "exn";
  ]

let lowercase name =
  let name = snake name in
  if is_digit name.[0] then "v" ^ name else name

let value name =
  let name = lowercase name in
  if List.mem name keywords then name ^ "_" else name

let type_ name =
  let name = lowercase name in
  if List.mem name keywords || List.mem name builtin_types then name ^ "_" else name

let capitalized name = String.capitalize_ascii (if is_digit name.[0] then "V" ^ name else name)
let module_ name = capitalized (snake name)
let tag name = capitalized (snake name)
let rec fresh taken name = if List.mem name taken then fresh taken (name ^ "_") else name

let dedupe names =
  List.fold_left
    (fun (seen, acc) name ->
      let name = fresh seen name in
      name :: seen, name :: acc)
    ([], []) names
  |> snd |> List.rev
