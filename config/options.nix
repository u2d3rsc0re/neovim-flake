{self, ...}: {
    globalOpts = {
	smartindent = true;
	autoindent = true;
	tabstop = 4;
	shiftwidth = 4;
	softtabstop = 4;
	expandtab = true;

	number = true;
	relativenumber = true;

	undofile = true;
	swapfile = false;

	mouse = "";

	ignorecase = true;
	smartcase = true;

	completeopt = "menuone,noselect";
    };
    globals = {
    	mapleader = " ";
	    maplocalleader = " ";
    };
    viAlias = true;
    vimAlias = true;
}
