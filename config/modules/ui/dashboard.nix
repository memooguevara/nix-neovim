{
  plugins.dashboard = {
    enable = true;
    settings = {
      theme = "doom";
      config = {
        center = [
          {
            action = "Telescope find_files";
            desc = "Find File";
            group = "Label";
            icon = "󰱽 ";
            icon_hl = "@variable";
            key = "f";
          }
          {
            action = "Telescope live_grep";
            desc = "Find Text";
            group = "Label";
            icon = "󱎸 ";
            icon_hl = "@variable";
            key = "w";
          }
          {
            action = "Telescope oldfiles";
            desc = "Recent Files";
            group = "Label";
            icon = "󱋢 ";
            icon_hl = "@variable";
            key = "o";
          }
          {
            action = "LazyGit";
            desc = "LazyGit";
            group = "Label";
            icon = " ";
            icon_hl = "@variable";
            key = "l";
          }
          {
            action = "quit";
            desc = "Quit";
            group = "Label";
            icon = "󰍃 ";
            icon_hl = "@variable";
            key = "q";
          }
        ];
        footer = [
          "Made with ❤️"
        ];
        header = [
          # "                       "
          # "                       "
          # " ████ ███ ███   █████  "
          # "  ███  ██  ███ ███  ███"
          # "  ███  ██  ███ ██   ███"
          # "  ███  ██  ███ ████ ███"
          # " ████  ██  ███     ███ "
          # "                 ████  "
          # "                       "
          "                       "
          "███████████████████████"
          "█    █   █   ███     ██"
          "██   ██  ██   █   ██   "
          "██   ██  ██   █  ███   "
          "██   ██  ██   █    █   "
          "█    ██  ██   █████   █"
          "█████████████████    ██"
          "                       "
        ];
      };
    };
  };
}
