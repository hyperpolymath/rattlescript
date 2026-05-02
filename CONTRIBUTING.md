<!-- SPDX-License-Identifier: AGPL-3.0-or-later -->
<!-- SPDX-FileCopyrightText: 2024-2026 Jonathan D.A. Jewell (hyperpolymath) -->

# Contributing to rattleScript

This is a **brand-surface repo**. The compiler, type checker, borrow checker,
codegen, and face transformer all live in
[affinescript](https://github.com/hyperpolymath/affinescript).

## Where to file what

| Issue | Repo |
|---|---|
| The face transformer mangles my code | [affinescript](https://github.com/hyperpolymath/affinescript/issues) |
| The error message uses the wrong vocabulary for this face | [affinescript](https://github.com/hyperpolymath/affinescript/issues) — the face vocabulary lives in `lib/face.ml` |
| New language feature needed (extern types, dependent types, etc.) | [affinescript](https://github.com/hyperpolymath/affinescript/issues) |
| Brand README is unclear / wrong | this repo |
| Example program doesn't compile | this repo (and probably also affinescript if it's a transformer bug) |
| Tutorial / migration guide additions | this repo |
| Add this face to my IDE / build tool | this repo, but expect it to depend on affinescript work first |

## Local workflow

```bash
opam install affinescript     # installs the compiler
git clone https://github.com/hyperpolymath/rattlescript
cd rattlescript
just hello                    # smoke-test the example
just check examples/hello.affine
just preview examples/hello.affine
```

## Pull requests

* SPDX header on every new file (`AGPL-3.0-or-later`).
* Run `just hello` and any other examples added before opening the PR.
* If you're touching the face transformer, open the PR against
  [affinescript](https://github.com/hyperpolymath/affinescript), not here.

## Code of conduct

See `CODE_OF_CONDUCT.md` (TBD; for now follow the affinescript code of conduct).
