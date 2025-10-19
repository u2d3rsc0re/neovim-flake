{
  plugins = {
    copilot-vim = {
      enable = true;

      settings.should_attach = ''
        function()
          return false
        end
      '';
    };
    copilot-chat.enable = true;
  };
}
