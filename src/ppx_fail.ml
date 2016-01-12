open! StdLabels
open Ppx_core.Std
open Parsetree
open Ast_builder.Default

[@@@metaloc loc]

let map = object
  inherit Ast_traverse.map as super

  method! expression e =
    match e.pexp_desc with
    | Pexp_ident { txt = Lident "failwiths"; _ } ->
      let loc = e.pexp_loc in
      pexp_apply e ~loc [("here", Ppx_here_expander.lift_position ~loc)]
    | _ -> super#expression e
end

let () =
  Ppx_driver.register_transformation "fail"
    ~impl:map#structure
    ~intf:map#signature
;;
