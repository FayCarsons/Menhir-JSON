{
open Lexing 
open Grammar

exception Invalid of string
exception Malformed_string of string
}

let digit = ['0'-'9']
let frac = '.' digit*
let exp = ['e' 'E'] ['-' '+']? digit+
let float = digit* frac? exp?
let int = [ '-' '+' ]? digit digit*

let white = [' ' '\t']
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*

rule read = 
  parse 
  | white { read lexbuf }
  | newline { new_line lexbuf; read lexbuf }
  | int { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | float { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
  | "true" { TRUE }
  | "false" { FALSE }
  | "null" { NULL }
  | '"' { read_string (Buffer.create 17) lexbuf }
  | '{' { LEFT_CURLY }
  | '}' { RIGHT_CURLY }
  | '[' { LEFT_BRACKET }
  | ']' { RIGHT_BRACKET }
  | ':' { COLON }
  | ',' { COMMA }
  | _ { raise @@ Invalid ("Illegal char: " ^ Lexing.lexeme lexbuf) }
  | eof { EOF }

and read_string buf = 
  parse 
  | '"' { STRING (Buffer.contents buf) }
  | '\\' '/' { Buffer.add_char buf '/'; read_string buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; read_string buf lexbuf }
  | '\\' 'b'  { Buffer.add_char buf '\b'; read_string buf lexbuf }
  | '\\' 'f'  { Buffer.add_char buf '\012'; read_string buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; read_string buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; read_string buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; read_string buf lexbuf }
  | [ ^ '"' '\\' ]+ { Buffer.add_string buf (Lexing.lexeme lexbuf); read_string buf lexbuf }
  | _ { raise @@ Malformed_string ("Illegal character: " ^ Lexing.lexeme lexbuf) }
  | eof { raise @@ Malformed_string "String is not terminated" }

