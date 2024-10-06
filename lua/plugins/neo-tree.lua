return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "3.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  config = function()
    vim.keymap.set('n', '<C-B>', ':Neotree filesystem reveal left<CR>', {})
    vim.keymap.set('n', '<C-E>', ':Neotree filesystem focus<CR>', {})
  end
}

