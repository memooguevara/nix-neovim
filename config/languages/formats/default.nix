{
  plugins = {
    lsp-format.enable = true;
    none-ls = {
      enable = true;
      enableLspFormat = true;
    };
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>vf";
      action =
        #Lua
        ''
          function()
            vim.lsp.buf.format({ async = true })
          end
        '';
      options.desc = "Format code";
    }
  ];
}
