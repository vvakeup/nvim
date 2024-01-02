print('lego.plugins.dashboard.lua')

local ascii = {
'',
' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣀⠀   ',
' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣷⠀⠀ ',
' ⠀⠀⠀⠀⠀⠀⠀⣠⠴⠒⠋⢉⡝⠲⢦⡀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⠀⠀ ',
' ⠀⠀⠀⠀⢀⡴⠚⢡⣤⣤⣴⣾⣷⣷⣨⢷⣀⡀⠀⠀⠀⠀⠹⢿⣿⣿⡿⠋⠀⠀ ',
' ⠀⢀⣠⠴⠋⠀⠀⠘⣟⡛⡽⡹⣫⣿⣴⣤⠿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
' ⠈⠉⠁⢰⡦⡄⠀⣤⠌⣷⣷⣷⢣⠟⠛⠻⣼⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠ ',
' ⢰⣾⣶⣦⢿⣭⣆⡻⣿⣿⣿⣻⣸⡀⠀⠃⠿⠷⠂⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁ ',
' ⢸⣿⢿⣿⣎⢿⢿⣿⡿⠛⠛⠳⣿⣧⡀⠰⣿⠂⠀⠀⠀⠀⠀⠀⠀⣠⠖⠁⢀⠾ ',
' ⠀⠙⢿⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⠙⠿⣦⣄⣀⡀⠀⣀⣀⣠⠴⠚⣁⡠⣾⣯⢟ ',
' ⠀⠠⣄⣀⣀⡀⠲⡄⠰⠒⠃⡴⣶⣦⡐⢄⣯⣍⡛⠛⠉⢉⡀⢀⣩⠵⠶⠛⡵⢛ ',
' ⠀⣤⣾⠛⣟⣹⣦⣒⣢⢿⣾⣧⡸⢙⠿⣶⣷⣬⣊⣳⣿⣽⣟⡟⠛⣋⣒⣓⣒⣪ ',
' ⠀⠿⠃⠀⠹⠿⠿⠧⠴⠶⠾⡿⠇⠤⠕⠚⠿⠿⠟⠻⠛⠭⠥⠶⠭⠭⠤⠤⠤⠤ ',
'',
}

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',

      config = {

        header = ascii,

        center = {

          {
            icon = ' ',
            icon_hl = 'Number',
            desc = 'Telescope',
            desc_hl = 'Title',
            key = 't',
            --keymap = 'SPC f f',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Telescope'
          },

          {
            icon = '󱘇 ',
            icon_hl = 'Number',
            desc = 'Navigate',
            desc_hl = 'Title',
            key = 'n',
            --keymap = 'SPC f f',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Ex'
          },

          {
            icon = '󰳶 ',
            icon_hl = 'Number',
            desc = 'Checkhealth',
            desc_hl = 'Title',
            key = 'c',
            --keymap = 'SPC f f',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'checkhealth'
          },

        },
        
        footer = {
          "As soon as you discard scientific rigour,",
          "you are no longer a mathematician,",
          "you're a numerologist."
        }

      },
    }     
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'} }
}

