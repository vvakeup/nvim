return{
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[
    let g:nord_italic = v:false
    colorscheme nord]])
  end,
}
