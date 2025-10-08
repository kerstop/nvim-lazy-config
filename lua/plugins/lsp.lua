local nvim_lsp = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {},
        gdscript = {},
        cssls = {
          root_dir = function()
            vim.fs.root(0, ".git")
          end,
        },
        denols = {
          filetypes = { "typescript", "typescriptreact" },
          root_dir = function(...)
            return nvim_lsp.util.root_pattern("deno.jsonc", "deno.json")(...)
          end,
        },
        vtsls = {
          root_dir = function()
            return not vim.fs.root(0, { "deno.json", "deno.jsonc" })
              and vim.fs.root(0, { "tsconfig.json", "jsconfig.json", "package.json", ".git" })
          end,
          single_file_support = false,
        },
        clangd = {},
      },
    },
  },
}
