{pkgs, ...}: {
  plugins.lsp.servers.astro = {
    enable = true;
    extraOptions = {
      init_options = {
        typescript = {
          tsdk = "${pkgs.nodePackages.typescript}/lib/node_modules/typescript/lib";
        };
      };
    };
  };
}
