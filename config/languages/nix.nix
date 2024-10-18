{ pkgs, ... }:

{
  extraPackages = [ pkgs.nixfmt-rfc-style ];
  plugins = {
    nix.enable = true;
    lsp.servers.nixd = {
      enable = true;
      settings.formating.command = [ "nixfmt" ];
    };

    none-ls = {
      enable = true;
      sources = {
        diagnostics.statix.enable = true;
        code_actions.statix.enable = true;
      };
    };
  };

  files = {
    "ftplugin/nix.lua" = {
      opts = {
        tabstop = 2;
        softtabstop = 2;
        expandtab = true;
        shiftwidth = 2;
      };
    };
  };
}
