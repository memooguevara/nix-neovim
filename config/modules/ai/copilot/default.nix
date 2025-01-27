{
  imports = [./chat.nix];

  plugins = {
    copilot-cmp.enable = true;
    copilot-lua = {
      enable = true;
      settings = {
        panel.enabled = false;
        suggestion.enabled = false;
      };
    };
    cmp.settings.sources = [
      {
        name = "copilot";
        group_index = 1;
      }
    ];
  };
}
