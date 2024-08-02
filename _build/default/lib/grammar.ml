
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20231231

module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | TRUE
    | STRING of (
# 4 "lib/grammar.mly"
       (string)
# 21 "lib/grammar.ml"
  )
    | RIGHT_CURLY
    | RIGHT_BRACKET
    | NULL
    | LEFT_CURLY
    | LEFT_BRACKET
    | INT of (
# 1 "lib/grammar.mly"
       (int)
# 31 "lib/grammar.ml"
  )
    | ID of (
# 3 "lib/grammar.mly"
       (string)
# 36 "lib/grammar.ml"
  )
    | FLOAT of (
# 2 "lib/grammar.mly"
       (float)
# 41 "lib/grammar.ml"
  )
    | FALSE
    | EOF
    | COMMA
    | COLON
  
end

include MenhirBasics

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | COLON ->
          14
      | COMMA ->
          13
      | EOF ->
          12
      | FALSE ->
          11
      | FLOAT _ ->
          10
      | ID _ ->
          9
      | INT _ ->
          8
      | LEFT_BRACKET ->
          7
      | LEFT_CURLY ->
          6
      | NULL ->
          5
      | RIGHT_BRACKET ->
          4
      | RIGHT_CURLY ->
          3
      | STRING _ ->
          2
      | TRUE ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | COLON ->
          Obj.repr ()
      | COMMA ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | FALSE ->
          Obj.repr ()
      | FLOAT _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | INT _v ->
          Obj.repr _v
      | LEFT_BRACKET ->
          Obj.repr ()
      | LEFT_CURLY ->
          Obj.repr ()
      | NULL ->
          Obj.repr ()
      | RIGHT_BRACKET ->
          Obj.repr ()
      | RIGHT_CURLY ->
          Obj.repr ()
      | STRING _v ->
          Obj.repr _v
      | TRUE ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000\020\017\022\000\000\000\020\017\022\000\004\000\015\000\000\012\b\000\018\019\021\000\000\014\006\002\000\016\007\000\015\000\000\016\018\019\021\t\n\001")
  
  and error =
    (15, "g\184\000\000\000\000\000\003\000\000\000Y\236\000\000\000\000\000\000\192\000\000\001\000\000\000\004\001\016\000\000\000\000\001\190\192\000\000\000\000\000\002\0013\216\000\000\000\000\000\000@\000\000\000\000\004\000\000\000o\176\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((8, "\003\000\000\000\000\r\022\000\000\000\000\000(\000\022\000\000\000\022\000\000\000 \022\000\000\000*\000\000.\000\022.\000\000\000\000\000\000\000"), (8, "\007\011\022\t\015\018\130\143\026\147\151\155\030\")\017&*JN1RV6>r\127\139\000^"))
  
  and lhs =
    (4, "\t\136weD3\"\017\017\017\017")
  
  and goto =
    ((8, "\022\000\000\000\007\000\000\000\000\000\002\000\000\000\000\028\000\000\018\000\000\000\000*\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000\000"), (8, "\012\030\031\015\012\018\r\015\000\018\023\026(\023\026)\027\017\028\027\015\"\023\025"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let xs : (Json.t list) = Obj.magic xs in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_xs_ in
        let _endpos = _endpos_xs_ in
        let _v =
          let elts = 
# 241 "<standard.mly>"
    ( xs )
# 160 "lib/grammar.ml"
           in
          (
# 37 "lib/grammar.mly"
                                                 ( elts )
# 165 "lib/grammar.ml"
           : (Json.t list))
        in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((string * Json.t) list) = 
# 145 "<standard.mly>"
    ( [] )
# 184 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : ((string * Json.t) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((string * Json.t) list) = 
# 148 "<standard.mly>"
    ( x )
# 209 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Json.t list) = 
# 145 "<standard.mly>"
    ( [] )
# 227 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Json.t list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Json.t list) = 
# 148 "<standard.mly>"
    ( x )
# 252 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = k;
              MenhirLib.EngineTypes.startp = _startpos_k_;
              MenhirLib.EngineTypes.endp = _endpos_k_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let v : (Json.t) = Obj.magic v in
        let _2 : unit = Obj.magic _2 in
        let k : (
# 4 "lib/grammar.mly"
       (string)
# 287 "lib/grammar.ml"
        ) = Obj.magic k in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_k_ in
        let _endpos = _endpos_v_ in
        let _v : (string * Json.t) = 
# 35 "lib/grammar.mly"
                               ( (k, v) )
# 295 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let xs : ((string * Json.t) list) = Obj.magic xs in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_xs_ in
        let _endpos = _endpos_xs_ in
        let _v =
          let obj = 
# 241 "<standard.mly>"
    ( xs )
# 321 "lib/grammar.ml"
           in
          (
# 33 "lib/grammar.mly"
                                            ( obj )
# 326 "lib/grammar.ml"
           : ((string * Json.t) list))
        in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Json.t option) = 
# 17 "lib/grammar.mly"
         ( None )
# 352 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Json.t) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Json.t option) = 
# 18 "lib/grammar.mly"
               ( Some v )
# 377 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (string * Json.t) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((string * Json.t) list) = 
# 250 "<standard.mly>"
    ( [ x ] )
# 402 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : ((string * Json.t) list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (string * Json.t) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((string * Json.t) list) = 
# 253 "<standard.mly>"
    ( x :: xs )
# 441 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Json.t) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Json.t list) = 
# 250 "<standard.mly>"
    ( [ x ] )
# 466 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Json.t list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (Json.t) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Json.t list) = 
# 253 "<standard.mly>"
    ( x :: xs )
# 505 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = obj;
            MenhirLib.EngineTypes.startp = _startpos_obj_;
            MenhirLib.EngineTypes.endp = _endpos_obj_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let obj : ((string * Json.t) list) = Obj.magic obj in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Json.t) = 
# 22 "lib/grammar.mly"
                                                   ( `Object obj )
# 544 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = elts;
            MenhirLib.EngineTypes.startp = _startpos_elts_;
            MenhirLib.EngineTypes.endp = _endpos_elts_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let elts : (Json.t list) = Obj.magic elts in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Json.t) = 
# 23 "lib/grammar.mly"
                                                       ( `Array elts )
# 583 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 4 "lib/grammar.mly"
       (string)
# 604 "lib/grammar.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Json.t) = 
# 24 "lib/grammar.mly"
                 ( `String s )
# 612 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 1 "lib/grammar.mly"
       (int)
# 633 "lib/grammar.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Json.t) = 
# 25 "lib/grammar.mly"
              ( `Int i )
# 641 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 2 "lib/grammar.mly"
       (float)
# 662 "lib/grammar.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Json.t) = 
# 26 "lib/grammar.mly"
                ( `Float x )
# 670 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Json.t) = 
# 27 "lib/grammar.mly"
           ( `Bool true )
# 695 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Json.t) = 
# 28 "lib/grammar.mly"
            (`Bool false )
# 720 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Json.t) = 
# 29 "lib/grammar.mly"
           ( `Null )
# 745 "lib/grammar.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
  module Symbols = struct
    
    type _ terminal = 
      | T_error : unit terminal
      | T_TRUE : unit terminal
      | T_STRING : (
# 4 "lib/grammar.mly"
       (string)
# 777 "lib/grammar.ml"
    ) terminal
      | T_RIGHT_CURLY : unit terminal
      | T_RIGHT_BRACKET : unit terminal
      | T_NULL : unit terminal
      | T_LEFT_CURLY : unit terminal
      | T_LEFT_BRACKET : unit terminal
      | T_INT : (
# 1 "lib/grammar.mly"
       (int)
# 787 "lib/grammar.ml"
    ) terminal
      | T_ID : (
# 3 "lib/grammar.mly"
       (string)
# 792 "lib/grammar.ml"
    ) terminal
      | T_FLOAT : (
# 2 "lib/grammar.mly"
       (float)
# 797 "lib/grammar.ml"
    ) terminal
      | T_FALSE : unit terminal
      | T_EOF : unit terminal
      | T_COMMA : unit terminal
      | T_COLON : unit terminal
    
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
    
  end
  
  include Symbols
  
  include MenhirLib.InspectionTableInterpreter.Make (Tables) (struct
    
    include TI
    
    include Symbols
    
    include MenhirLib.InspectionTableInterpreter.Symbols (Symbols)
    
    let terminal =
      fun t ->
        match t with
        | 0 ->
            X (T T_error)
        | 1 ->
            X (T T_TRUE)
        | 2 ->
            X (T T_STRING)
        | 3 ->
            X (T T_RIGHT_CURLY)
        | 4 ->
            X (T T_RIGHT_BRACKET)
        | 5 ->
            X (T T_NULL)
        | 6 ->
            X (T T_LEFT_CURLY)
        | 7 ->
            X (T T_LEFT_BRACKET)
        | 8 ->
            X (T T_INT)
        | 9 ->
            X (T T_ID)
        | 10 ->
            X (T T_FLOAT)
        | 11 ->
            X (T T_FALSE)
        | 12 ->
            X (T T_EOF)
        | 13 ->
            X (T T_COMMA)
        | 14 ->
            X (T T_COLON)
        | _ ->
            assert false
    
    and nonterminal =
      fun nt ->
        match nt with
        | 9 ->
            X (N N_array_values)
        | 8 ->
            X (N N_loption_separated_nonempty_list_COMMA_object_field__)
        | 7 ->
            X (N N_loption_separated_nonempty_list_COMMA_value__)
        | 6 ->
            X (N N_object_field)
        | 5 ->
            X (N N_object_fields)
        | 4 ->
            X (N N_prog)
        | 3 ->
            X (N N_separated_nonempty_list_COMMA_object_field_)
        | 2 ->
            X (N N_separated_nonempty_list_COMMA_value_)
        | 1 ->
            X (N N_value)
        | _ ->
            assert false
    
    and lr0_incoming =
      (8, "\000\004\006\012\014\006\030\016\018\022\024\003\028\005\005\015\019\n\003\007\011\b\r\028\007\017\026\003\t")
    
    and rhs =
      ((8, "\t\015\007\005\006\030\003\017\026\003\r\r\028\007\003\003\028\005\014\011\b\016\019\n\006\018\022\004\024\012"), (8, "\000\001\002\002\003\003\004\007\b\t\n\011\014\015\018\021\024\025\026\027\028\029\030"))
    
    and lr0_core =
      (8, "\000\001\002\003\004\005\006\001\002\003\004\019\020\021\022\023\024\025\007\b\t\n\011\012\r\014\015\016\017\018\020\021\007\016\017\b\t\n\026\027\028")
    
    and lr0_items =
      ((16, "\000\000L\001@\001T\0018\001\024\001\024\002<\001D\001H\001P\0014\0010\0014\0024\003\020\001\004\001<\002<\003\024\003\012\0018\0028\003,\001(\001,\002,\003\028\001 \001$\001\000\001"), (8, "\000\001\002\003\004\005\006\007\b\t\n\011\r\014\015\016\017\018\019\020\021\022\023\025\026\027\028\029\030\031"))
    
    and nullable =
      "\005\192"
    
    and first =
      (15, "g\184\207a\158\193\000\006{\132\000\b\0003\216 \000\207`")
    
  end) (ET) (TI)
  
end

let prog =
  fun lexer lexbuf : (Json.t option) ->
    Obj.magic (MenhirInterpreter.entry `Legacy 0 lexer lexbuf)

module Incremental = struct
  
  let prog =
    fun initial_position : (Json.t option) MenhirInterpreter.checkpoint ->
      Obj.magic (MenhirInterpreter.start 0 initial_position)
  
end
