local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    python = {"autopep8"},
    typescript = {"prettier"},
    c = {"clang_format"},
    haskell = {"formolu"},
    bash = {"beautysh"}
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
