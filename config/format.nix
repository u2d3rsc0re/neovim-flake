{ pkgs }:{
  plugins.conform = {
  	enable = true;
		formatters = with pkgs.neovimPlugins.conform.formatters; [
			stylua
			prettier
			shfmt
			black
			isort
			rustfmt
      alejandra
		];
    format_on_save = {
      timeout_ms = 2000;
      lsp_fallback = true;
    };
  };
}
