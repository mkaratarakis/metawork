import Lake
open Lake DSL

package «metawork» where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩ -- pretty-prints `fun a ↦ b`
  ]
  -- add any additional package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «Metawork» where
  -- add any library configuration options here

lean_exe «ast-export» where
  root := `Metawork.Main
  supportInterpreter := true
