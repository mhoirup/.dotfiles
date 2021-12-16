; highlights.scm

(call function: (identifier) @function)
(namespace_get function: (identifier) @method)
(namespace_get_internal function: (identifier) @method)

; Literals

(integer) @number

(float) @number

(complex) @number

(string) @string

(comment) @comment

(formal_parameters (identifier) @parameter)

; (identifier) @variable

; Operators
[
 "="
 "<-"
 "<<-"
 "->"
] @operator

(unary operator: [
  "-"
  "+"
  "!"
  "~"
] @operator)

(binary operator: [
  "-"
  "+"
  "*"
  "/"
  "^"
  "<"
  ">"
  "<="
  ">="
  "=="
  "!="
  "||"
  "|"
  "&&"
  "&"
  ":"
  "~"
] @operator)

(special) @operator

[
 "("
 ")"
 "["
 "]"
 "{"
 "}"
] @punctuation.bracket

[
 "while"
 "if"
 "else"
 "repeat"
 "for"
 "in"
 (dots)
 (break)
 (next)
] @keyword

[(true) (false) (na) (null) (nan)] @boolean
(inf) @number


"function" @keyword
