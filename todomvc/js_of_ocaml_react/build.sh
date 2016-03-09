#!/bin/sh

# Compile OCaml source file to OCaml bytecode
ocamlbuild -use-ocamlfind \
  -pkgs lwt.ppx,js_of_ocaml,js_of_ocaml.ppx,js_of_ocaml.tyxml,tyxml,ppx_deriving,js_of_ocaml.deriving.ppx,js_of_ocaml.deriving,react,reactiveData \
  todomvc.byte ;

# Build JS code from the OCaml bytecode
js_of_ocaml +weak.js todomvc.byte
