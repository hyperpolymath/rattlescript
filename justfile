# SPDX-License-Identifier: PMPL-1.0-or-later
# SPDX-FileCopyrightText: 2024-2026 Jonathan D.A. Jewell (hyperpolymath)

# RattleScript justfile.
# First-time setup: `just setup` builds affinescript from the submodule,
# then `just build` builds the rattle wrapper binary.

default:
    just --list

# First-time setup: init submodule and build affinescript
setup:
    git submodule update --init --recursive
    cd affinescript && dune build

# Update affinescript submodule to latest and rebuild
update-affinescript:
    git submodule update --remote affinescript
    cd affinescript && dune build
    git add affinescript
    git commit -m "chore(affinescript): advance pointer to latest release"

# Build the rattle binary (dev mode)
build:
    cargo build

# Build optimised release binary
release:
    cargo build --release

# First-time: setup then build
bootstrap: setup build

# Run the hello example
run-hello:
    cargo run -- eval examples/hello.rattle

# Type-check the hello example
check-hello:
    cargo run -- check examples/hello.rattle

# Show the Python-face transform for the hello example
preview-hello:
    cargo run -- preview-python-transform examples/hello.rattle

# Type-check all examples
check-examples:
    cargo run -- check examples/hello.rattle
    cargo run -- check examples/ownership.rattle

# Install rattle binary to ~/.cargo/bin
install: setup
    cargo install --path .
