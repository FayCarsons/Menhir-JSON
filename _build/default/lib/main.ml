open Core
open Lexer
open Lexing

let print_position outx lexbuf =
  let pos = lexbuf.lex_curr_p in
  fprintf outx "%s:%d:%d" pos.pos_fname pos.pos_lnum (pos.pos_cnum - succ pos.pos_bol)
;;

let parse_with_error lexbuf =
  try Grammar.prog Lexer.read lexbuf with
  | Invalid msg ->
    fprintf stdout "%a: %s\n" print_position lexbuf msg;
    None
  | Grammar.Error ->
    fprintf stdout "%a: syntax error\n" print_position lexbuf;
    exit (-1)
;;

let rec parse_and_print lexbuf =
  match parse_with_error lexbuf with
  | Some value ->
    printf "%a\n" Json.output_value value;
    parse_and_print lexbuf
  | None -> ()
;;

let loop filename () =
  let inx = In_channel.create filename in
  let lexbuf = Lexing.from_channel inx in
  lexbuf.lex_curr_p <- { lexbuf.lex_curr_p with pos_fname = filename };
  parse_and_print lexbuf;
  In_channel.close inx
;;
