{pkgs, ...}: {
  plugins = {
    telescope = {
      enable = true;
      extensions = {
        fzf-native = {
          enable = true;
        };
      };
      keymaps = {
        "<leader>?" = "oldfiles";
        "<leader><space>" = "buffers";
        "<leader>sf" = "find_files";
        "<leader>sg" = "live_grep";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false })<CR>";
    }
  ];
  extraPackages = [
    pkgs.ripgrep
  ];
}
