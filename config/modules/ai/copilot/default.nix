{
  imports = [./chat.nix];

  plugins = {
    copilot-cmp.enable = true;
    copilot-lua = {
      # FIX: Current version of copilot-language-server is not downloaded...
      enable = false;
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
