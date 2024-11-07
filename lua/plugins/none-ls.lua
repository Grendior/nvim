return {
  "nvimtools/none-ls.nvim",

  config = function()
    local none_ls = require("none-ls")
    none_ls.setup({
      sources = {
        none_ls.builtins.formatting.stylua,
        none_ls.builtins.formatting.prettier,
        none_ls.builtins.completion.spell,
        --require("none-ls.diagnostics.eslint"),
        --null_ls.builtins.diagnostics.eslint,
        --null_ls.builtins.code_actions.eslint,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
