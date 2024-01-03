return{
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[
    let g:nord_contrast = v:true
    let g:nord_borders = v:true
    let g:nord_disable_background = v:false
    let g:nord_italic = v:true
    let g:nord_uniform_diff_background = v:false
    let g:nord_bold = v:false
    colorscheme nord]])
  end,
}
