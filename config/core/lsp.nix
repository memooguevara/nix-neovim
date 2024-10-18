{ helpers, ... }:

{
  plugins = {
    lsp-format.enable = true;

    lsp = {
      enable = true;
      inlayHints = true;
      keymaps = {
        lspBuf = {
          K = {
            action = "hover";
            desc = "Hover knoledge";
          };
          gr = {
            action = "references";
            desc = "Go to references";
          };
          gd = {
            action = "definition";
            desc = "Go to definition";
          };
          gi = {
            action = "implementation";
            desc = "Go to implementation";
          };
          gt = {
            action = "type_definition";
            desc = "Go to type definition";
          };
          "<leader>r" = {
            action = "rename";
            desc = "Rename variable";
          };
        };
        diagnostic = {
          "<leader>j" = {
            action = "goto_next";
            desc = "Go to next diagnostic";
          };
          "<leader>k" = {
            action = "goto_prev";
            desc = "Go to previous diagnostic";
          };
        };
        extra = [
          {
            mode = [ "n" ];
            key = "<leader>vf";
            action = helpers.mkRaw ''
              function()
                vim.lsp.buf.format({ async = true })
              end
            '';
            options.desc = "Format code";
          }
        ];
      };

      onAttach = ''
        -- vim.keymap.set('i', '<c-t>', function()
        --   vim.lsp.buf.signature_help()
        -- end)

        -- vim.keymap.set({'v', 'n'}, '<leader>vca', vim.lsp.buf.code_action)
      '';
    };
  };
}
