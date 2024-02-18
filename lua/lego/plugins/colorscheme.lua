local M = {}

M.tokyonight = {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
			light_style = "day", -- The theme is used when the background is set to light
			transparent = false, -- Enable this to disable setting the background color
			terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				functions = {},
				variables = {},
				sidebars = "dark", -- style for sidebars, see below
				floats = "dark", -- style for floating windows
			},
			sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
			day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
			hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
			dim_inactive = true, -- dims inactive windows
			lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
			--@param colors ColorScheme
			on_colors = function(colors) end,
			--@param highlights Highlights
			--@param colors ColorScheme
			on_highlights = function(highlights, colors) end,
		})
		vim.cmd([[colorscheme tokyonight-storm]])
	end,
}

M.catppuccin = {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "frappe", -- latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "macchiato",
			},
			transparent_background = false, -- disables setting the background color.
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = true, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.6, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {},
			custom_highlights = {},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				dashboard = true,
				notify = false,
				noice = true,
				mini = {
					enabled = false,
					indentscope_color = "",
				},
				indent_blankline = {
					enabled = true,
					scope_color = "",
					coloerd_indent_levels = false,
				},
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					--              underlines = {
					--                  errors = { "underline" },
					--                  hints = { "underline" },
					--                  warnings = { "underline" },
					--                  information = { "underline" },
					--              },
					inlay_hints = {
						background = true,
					},
				},
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		})
		-- setup must be called before loading
		vim.cmd.colorscheme("catppuccin")
	end,
}
M.tokyonight = {
	"phha/zenburn.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("zenburn").setup({
			options = {
				theme = "zenburn",
			},
		})
		vim.cmd([[colorscheme zenburn]])
	end,
}

return M.catppuccin
