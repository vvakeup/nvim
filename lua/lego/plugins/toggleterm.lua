return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    --[[ things you want to change go here]]
    hide_numbers = true,
    direction = "float",
    shade_terminal = true,
    shading_factor = 1,
    start_in_insert = true,
    autochdir = true,
    persist_size = false,
    float_opts = {
      border = "rounded",
      width = function()
        return math.floor(vim.o.columns * 0.8)
      end,
      height = function()
        return math.floor(vim.o.lines * 0.3)
      end,
      winblend = 0,
    },
  }
}
