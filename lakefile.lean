import Lake
open Lake DSL

package "jsp-000854-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib ErdosProblems

lean_lib Erdos1027

@[default_target]
lean_lib «JSP_000854» where
  roots := #[`JSP_000854]
