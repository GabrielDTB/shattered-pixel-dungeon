with import <nixpkgs> {};
mkShell {
  buildInputs = [
    openjdk17
    capnproto
    capnproto-java
  ];
}
