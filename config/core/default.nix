{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./lsp.nix
    ./telescope
    ./treesitter.nix
  ];

  colorschemes.tokyonight.enable = true;
  clipboard.register = "unnamedplus";

  plugins.web-devicons.enable= true;
}
