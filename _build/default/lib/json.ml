open Core

type t =
  [ `Object of (string * t) list
  | `Bool of bool
  | `Float of float
  | `Int of int
  | `Array of t list
  | `Null
  | `String of string
  ]

let rec to_string : t -> string = function
  | `Object pairs ->
    List.fold_left
      ~f:(fun out (k, v) -> out ^ sprintf "  %s: %s\n" k (to_string v))
      ~init:""
      pairs
    |> sprintf "{\n%s}\n"
  | `Array elts ->
    List.fold_left ~f:(fun out elt -> out ^ sprintf "%s; " (to_string elt)) ~init:"" elts
    |> sprintf "[ %s]"
  | `Bool b -> if b then "true" else "false"
  | `Float x -> string_of_float x
  | `Int n -> string_of_int n
  | `Null -> "null"
  | `String s -> s
;;

let output_value out_channel value = fprintf out_channel "%s\n" (to_string value)
