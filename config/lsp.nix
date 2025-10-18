{
  plugins.lsp = {
    enable = true;
    keymaps.lspBuf = {
      "<leader>rn" = "rename";
      "<leader>ca" = "code_action";
      "<leader>rf" = "format";
      gd = "definition";
      gI = "implementation";
      "<leader>D" = "type_definition";
      K = "hover";
      "<C-k>" = "signature_help";
      gD = "declaration";
      gr = "references";
    };
    servers = {
      nil_ls.enable = true;
      rust_analyzer = {
        enable = true;
        # settings.procMacro.enable = true;
        installRustc = false;
        installCargo = false;
      };
      ccls.enable = true;
      ts_ls.enable = true;
      elmls.enable = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "gf";
      action = "<cmd>lua require('telescope.builtin').lsp_references<CR>";
    }
    {
      mode = "n";
      key = "<leader>ds";
      action = "<cmd>lua require('telescope.builtin').lsp_document_symbols<CR>";
    }
    {
      mode = "n";
      key = "<leader>ws";
      action = "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols<CR>";
    }
  ];
}
