return {
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        treesitter = {
          label = {
            style = "overlay",
          },
        },
      },
    },
  },

  { "ellisonleao/gruvbox.nvim" },

  { "Shatur/neovim-ayu" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
}
