#use "topfind";;
#require "js-build-tools.oasis2opam_install";;

open Oasis2opam_install;;

generate ~package:"ppx_fail"
  [ oasis_lib "ppx_fail"
  ; file "META" ~section:"lib"
  ; oasis_exe "ppx" ~dest:"../lib/ppx_fail/ppx"
  ]
