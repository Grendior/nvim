return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "vue", "typescript", "c_sharp", "html", "json"},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}

