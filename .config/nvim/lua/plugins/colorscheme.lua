return {
  "neanias/everforest-nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("everforest").setup({
      background = "soft",
    })
    vim.cmd("colorscheme everforest")
  end,
}
