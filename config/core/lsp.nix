{
  plugins = {
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
          gD = {
            action = "declaration";
            desc = "Go to declaration";
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
          "<leader>ca" = {
            action = "code_action";
            desc = "Show code actions";
          };
          "<leader>cr" = {
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
      };
    };
  };
}
