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
    ps.ruamel_yaml
  ]
