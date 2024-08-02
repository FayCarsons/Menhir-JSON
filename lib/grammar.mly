%token <int> INT 
%token <float> FLOAT 
%token <string> ID
%token <string> STRING 
%token TRUE FALSE
%token NULL
%token LEFT_CURLY RIGHT_CURLY
%token LEFT_BRACKET RIGHT_BRACKET
%token COLON COMMA
%token EOF


%start <Json.t option> prog
%%

prog: 
  | EOF; { None }
  | v = value; { Some v }
;

value: 
    | LEFT_CURLY; obj = object_fields; RIGHT_CURLY { `Object obj }
    | LEFT_BRACKET; elts = array_values; RIGHT_BRACKET { `Array elts }
    | s = STRING { `String s }
    | i = INT { `Int i }
    | x = FLOAT { `Float x }
    | TRUE { `Bool true }
    | FALSE {`Bool false }
    | NULL { `Null }
;

object_fields:
  obj = separated_list(COMMA, object_field) { obj };
object_field:  
  k = STRING; COLON; v = value { (k, v) };

array_values: elts = separated_list(COMMA,value) { elts };
