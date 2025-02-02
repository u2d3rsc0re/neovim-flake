{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      mapping = {
      __raw = ''
	  cmp.mapping.preset.insert ({
	    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
	    ['<C-f>'] = cmp.mapping.scroll_docs(4),
	    ['<C-Space>'] = cmp.mapping.complete(),
	    ['<CR>'] = cmp.mapping.confirm {
	      behavior = cmp.ConfirmBehavior.Replace,
	      select = true,
	    },
	    ['<Tab>'] = cmp.mapping(function(fallback)
	      if cmp.visible() then
		cmp.select_next_item()
	      else
		fallback()
	      end
	    end, { 'i', 's' }),
	    ['<S-Tab>'] = cmp.mapping(function(fallback)
	      if cmp.visible() then
		cmp.select_prev_item()
	      else
		fallback()
	      end
	    end, { 'i', 's' }),
	  })
      '';
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
      ];
    };
  };
}
