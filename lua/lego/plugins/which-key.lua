return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    window = {
      border = "rounded",
      position = "bottom",
      margin = { 0, 0, 0, 0 }, 
      padding = { 0, 0, 0, 0 },
      winblend = 0,
      zindex = 1000,
    },
    layout = {
      height = { min = 5, max = 8 },
      width = { min = 25, max = 60 },
      spacing = 4,
      align = "left",
    },
  }
}
