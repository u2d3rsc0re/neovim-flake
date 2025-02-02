{
  plugins = {
    oil.enable = true;
    fidget.enable = true;
    comment.enable = true;
    sleuth.enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>d";
      action = "<cmd>Oil<CR>";
    }
  ];
}
