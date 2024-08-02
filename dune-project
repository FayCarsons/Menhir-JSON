(lang dune 3.16)

(name menhirjson)

(generate_opam_files true)

(using menhir 3.0)

(package
 (name menhirjson)
 (depends ocaml dune menhirLib))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
