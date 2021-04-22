{ lib, buildPythonPackage, fetchPypi, msgpack, pyyaml, typing-extensions }:

buildPythonPackage rec {
  pname = "mashumaro";
  version = "2.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256:0im2rwy30igmyw93mpn2vpsrpaqclgzda3sdc301v1d77l4wziic";
  };

  propagatedBuildInputs = [
    pyyaml
    msgpack
    typing-extensions
  ];

  meta = with lib; {
    description = "Dataclasses (de)serialization framework";
    homepage =  "https://github.com/Fatal1ty/mashumaro";
    license = licenses.asl20;
  };
}
