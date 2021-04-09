# Python

Boilerplate for a Python codebase.

## Dependencies

 - Nix
 - direnv

## Commands

```
# Run direnv allow to automatically load a development shell
# when `cd`ing to the current directory.
$ direnv allow

# Run the program
$ start

# Documentation server
$ docs

# Generate documentation
$ docs --build

# Run the test suite
$ test

# Run pre-commit lints and checks
$ pre-commit

# Install pre-commit lints and checks
$ pre-commit --install
```

## Features

Lints:

 - Autoformatting with `black`.
 - Import sorting with `isort`.
 - Type checking with `mypy --strict`.
 - PEP8 compliance with `flake8`.

Python:

 - Dependency management with Nix and Nixpkgs' Python infrastructure.
 - Test suite with hypothesis.

## How to use

 - Copy over the files to the new project.
 - Potentially: update the Nixpkgs snapshot.
 - Rename `my_module` to something else and get coding.
