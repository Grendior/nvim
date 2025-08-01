return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
            filetypes = { "vue", "javascript", "typescript", "css", "html" }
        }),
        null_ls.builtins.completion.spell,
        --require("none-ls.diagnostics.eslint"),
        --null_ls.builtins.diagnostics.eslint,
        --null_ls.builtins.code_actions.eslint,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
