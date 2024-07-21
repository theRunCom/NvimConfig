return {
  {
    "stevearc/conform.nvim",
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      markdown = { "prettier" },
      solidity = { "prettier" },
      lua = { "stylua" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      go = { "goimports", "gofumpt" },
      sh = { "shfmt" },
      python = { "isort", "black" },
      rust = { "rustfmt" },
      zig = { "zigfmt" },
      cairo = { "scarb_fmt" },
      ["scss"] = { "prettier" },
      ["less"] = { "prettier" },
      ["yaml"] = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      ["*"] = { "codespell" },
    },

    formatters = {
      scarb_fmt = {
        command = "/home/zzl/.local/bin/scarb",
        args = { "fmt" },
        stdin = false,
        cwd = require("conform.util").root_file({ "Scarb.toml" }),
        -- When cwd is not found, don't run the formatter
        require_cwd = true,
      },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
