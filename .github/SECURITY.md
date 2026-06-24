<!--
SPDX-License-Identifier: CC-BY-SA-4.0
Copyright (c) Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->
# Security Policy

RattleScript is a **brand surface** over [AffineScript](https://github.com/hyperpolymath/affinescript): it carries examples, documentation, and a thin `rattle` shim CLI. It ships no compiler, type checker, or runtime of its own — those live in `affinescript`.

## Reporting a Vulnerability

- For issues in the **compiler, type checker, borrow checker, or codegen**, report against [hyperpolymath/affinescript](https://github.com/hyperpolymath/affinescript/security) — that is where the code lives.
- For issues specific to **this repository** (the `bin/rattle` shim, examples, or docs), email **j.d.a.jewell@open.ac.uk** with details and a reproduction. Please do not open a public issue for a security report.

We aim to acknowledge reports within 7 days and will keep you updated as we investigate.

## Supported Versions

This repository tracks AffineScript and has no independent release train. Security fixes are made on the default branch.

## Scope

In scope: the `bin/rattle` shim, repository workflows, and example sources.
Out of scope: the AffineScript compiler internals (report upstream), and third-party tooling referenced by the docs.
