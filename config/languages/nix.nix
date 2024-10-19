{
  plugins = {
    nix.enable = true;
    lsp.servers.nil_ls = {
      enable = true;
      settings.formatting.command = ["alejandra"];
    };
    none-ls.sources = {
      formatting.alejandra.enable = true;
      diagnostics.statix.enable = true;
      code_actions.statix.enable = true;
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
