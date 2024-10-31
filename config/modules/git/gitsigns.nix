{
  plugins.gitsigns = {
    enable = true;
    settings = {
      linehl = false;
      signcolumn = true;
      numhl = false;
      on_attach =
        # lua
        ''
          function(bufnr)
            local gitsigns = require("gitsigns")
            vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { buffer = bufnr })
            vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { buffer = bufnr })
            vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk, { buffer = bufnr })
            vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { buffer = bufnr })
            vim.keymap.set("n", "<leader>hj", gitsigns.next_hunk, { buffer = bufnr })
            vim.keymap.set("n", "<leader>hk", gitsigns.prev_hunk, { buffer = bufnr })
            vim.keymap.set("n", "<leader>tb", gitsigns.toggle_current_line_blame, { buffer = bufnr })
          end
        '';
    };
  };
}
