{inputs, ...}: {
  imports = [inputs.nvf.nixosModules.default];

  programs.nvf = {
    enable = true;
    settings.vim = {
      options = {
        tabstop = 4;
        shiftwidth = 4;
        softtabstop = 4;
        expandtab = true;
      };

      viAlias = true;
      vimAlias = true;

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;

      languages = {
        enableTreesitter = true;
        nix.enable = true;
        python.enable = true;
        # typescript.enable = true;
      };

      lsp = {
        enable = true;
        trouble.enable = true;
      };

      formatter.conform-nvim = {
        enable = true;
        setupOpts = {
          format_on_save = {
            timeout_ms = 500;
            lsp_fallback = true;
          };
          formatters_by_ft = {
            nix = ["alejandra"];
          };
        };
      };
    };
  };
}
