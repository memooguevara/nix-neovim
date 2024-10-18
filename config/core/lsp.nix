{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    keymaps = {
      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
        "<leader>vrn" = "rename";
      };
    };
    onAttach = ''
      vim.keymap.set('n', '<leader>vf', function()
        vim.lsp.buf.format({async = true})
      end)

      vim.keymap.set('i', '<c-t>', function()
        vim.lsp.buf.signature_help()
      end)

      vim.keymap.set({'v', 'n'}, '<leader>vca', vim.lsp.buf.code_action)
    '';
  };
}
