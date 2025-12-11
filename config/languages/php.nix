{pkgs, ...}: {
  extraPackages = with pkgs; [
    php
    phpPackages.composer
  ];

  plugins = {
    lsp.servers.phpactor = {
      enable = true;
    };
    none-ls.sources = {
      formatting.phpcsfixer.enable = true;
    };
  };
}
