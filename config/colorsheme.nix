{ pkgs, ... }:
{
  colorschemes.rose-pine = {
    enable = true;
    settings = {
      variant = "main";
      dark_variant = "main";
      disable_background = true;
      disable_float_background = true;
      styles.transparency = true;
      highlight_groups = {
        StatusLine.bg = "none";
        StatusLineNC.bg = "none";
      };
    };
  };
}
