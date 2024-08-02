
(* The type of tokens. *)

type token = 
  | TRUE
  | STRING of (string)
  | RIGHT_CURLY
  | RIGHT_BRACKET
  | NULL
  | LEFT_CURLY
  | LEFT_BRACKET
  | INT of (int)
  | ID of (string)
  | FLOAT of (float)
  | FALSE
  | EOF
  | COMMA
  | COLON

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Json.t option)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
  (* The indexed type of terminal symbols. *)
  
  type _ terminal = 
    | T_error : unit terminal
    | T_TRUE : unit terminal
    | T_STRING : (string) terminal
    | T_RIGHT_CURLY : unit terminal
    | T_RIGHT_BRACKET : unit terminal
    | T_NULL : unit terminal
    | T_LEFT_CURLY : unit terminal
    | T_LEFT_BRACKET : unit terminal
    | T_INT : (int) terminal
    | T_ID : (string) terminal
    | T_FLOAT : (float) terminal
    | T_FALSE : unit terminal
    | T_EOF : unit terminal
    | T_COMMA : unit terminal
    | T_COLON : unit terminal
  
  (* The indexed type of nonterminal symbols. *)
  
  type _ nonterminal = 
    | N_value : (Json.t) nonterminal
    | N_separated_nonempty_list_COMMA_value_ : (Json.t list) nonterminal
    | N_separated_nonempty_list_COMMA_object_field_ : ((string * Json.t) list) nonterminal
    | N_prog : (Json.t option) nonterminal
    | N_object_fields : ((string * Json.t) list) nonterminal
    | N_object_field : (string * Json.t) nonterminal
    | N_loption_separated_nonempty_list_COMMA_value__ : (Json.t list) nonterminal
    | N_loption_separated_nonempty_list_COMMA_object_field__ : ((string * Json.t) list) nonterminal
    | N_array_values : (Json.t list) nonterminal
  
  (* The inspection API. *)
  
  include MenhirLib.IncrementalEngine.INSPECTION
    with type 'a lr1state := 'a lr1state
    with type production := production
    with type 'a terminal := 'a terminal
    with type 'a nonterminal := 'a nonterminal
    with type 'a env := 'a env
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val prog: Lexing.position -> (Json.t option) MenhirInterpreter.checkpoint
  
end
