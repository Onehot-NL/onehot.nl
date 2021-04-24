pythonPackages:

let
  ps = pythonPackages;
in
  [
    ps.black
    ps.flake8
    ps.isort
    ps.jinja2
    ps.mypy
    ps.pydantic
    ps.ruamel_yaml
    ps.typer
  ]
