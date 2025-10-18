{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        nix = [ "alejandra" ];
        javascript = [ "prettier" ];
        typescript = [ "prettier" ];
        rust = [ "rustfmt" ];
        lua = [ "stylua" ];
        python = [ "black" ];
        json = [ "prettier" ];
        yaml = [ "prettier" ];
      };
      format_on_save = {
        timeout_ms = 500;
        lsp_fallback = true;
      };
    };
  };
}
