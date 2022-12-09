# shell.nix
{ pkgs ? import <nixpkgs> {} }:
let
  my-python = pkgs.python3;
  python-with-my-packages = my-python.withPackages (p: with p; [
    pandas
    requests
    numpy
    matplotlib
    tikzplotlib
    scipy
    h5py
    # other python packages you want
  ]);
in
pkgs.mkShell {
  packages = [
    python-with-my-packages
    # other dependencies
  ];
}
