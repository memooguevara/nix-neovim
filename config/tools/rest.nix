{
  plugins.rest = {
    enable = true;
    enableTelescope = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>rr";
      options.desc = "RestRun";
      action = ":Rest run<cr>";
    }
    {
      mode = "n";
      key = "<leader>rl";
      options.desc = "RestLast";
      action = ":Rest last<cr>";
    }
    {
      mode = "n";
      key = "<leader>ro";
      options.desc = "RestOpen";
      action = ":Rest open<cr>";
    }
    {
      mode = "n";
      key = "<leader>re";
      options.desc = "RestEnvSelect";
      action = ":Rest env select<cr>";
    }
  ];
}
