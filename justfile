# SPDX-License-Identifier: MPL-2.0
# SPDX-FileCopyrightText: 2024-2026 Jonathan D.A. Jewell (hyperpolymath)
# justfile — RattleScript task runner

default:
    @just --list

# Type-check a file
check FILE:
    affinescript check --face rattle {{FILE}}

# Evaluate a file with the interpreter
run FILE:
    affinescript eval --face rattle {{FILE}}

# Compile to typed-wasm
build FILE OUT="out.wasm":
    affinescript compile --face rattle {{FILE}} -o {{OUT}}

# Show the canonical lowering of a file (debug)
preview FILE:
    affinescript preview-python {{FILE}}

# Lint a file
lint FILE:
    affinescript lint --face rattle {{FILE}}

# Smoke-test the hello example
hello: (run "examples/hello.affine")
