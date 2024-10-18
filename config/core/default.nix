{
  imports = [
    ./cmp
    ./options.nix
    ./keymaps.nix
    ./lsp.nix
    ./telescope
    ./treesitter.nix
  ];

  colorschemes.tokyonight.enable = true;
  clipboard.register = "unnamedplus";

  plugins.lualine.enable = true;
  plugins.web-devicons.enable= true;
  plugins.fidget.enable = true;
}
