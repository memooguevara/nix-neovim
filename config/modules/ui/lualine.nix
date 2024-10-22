{
  plugins.lualine = {
    enable = true;
    settings = {
      extensions = ["quickfix"];
      options = {
        globalstatus = true;
        icons_enabled = true;
        theme = "auto";
        component_separators = {
          left = "";
          right = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
      };
      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            icons_enabled = true;
            icon = "";
          }
        ];
        lualine_b = [
          "branch"
        ];
        lualine_c = [
          "filename"
        ];
        lualine_x = [
          "diagnostics"
          "diff"
        ];
        lualine_y = [
          "filetype"
        ];
        lualine_z = [
          "location"
        ];
      };
    };
  };
}
