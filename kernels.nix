{pkgs, ...}: {
  kernel.python.minimal = {
    enable = true;
    projectDir = ./my-custom-python;
    overrides = ./overrides.nix;
    extraPackages = ps: [ps.numpy ps.pandas ps.matplotlib ps.seaborn];
  };
}
