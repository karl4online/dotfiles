return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = 'macchiato',
          dark = 'mocha',
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = 'dark',
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { 'italic' }, -- Change the style of comments
          conditionals = { 'italic' },
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
        },
      }
  vim.cmd.colorscheme 'catppuccin'
  end
}

-- return {
--   'sainnhe/gruvbox-material',
--   priority = 1000,
--   config = function()
--     vim.g.gruvbox_material_enable_italic = true
--     vim.cmd.colorscheme('gruvbox-material')
--   end,
-- }
--
-- return {
--   'shaunsingh/nord.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.g.nord_contrast = true
--     vim.g.nord_borders = false
--     vim.g.nord_disable_background = true
--     vim.g.nord_italic = false
--     vim.g.nord_uniform_diff_background = true
--     vim.g.nord_bold = false
--     require('nord').set()
--
--     -- Toggle background transparency
--     local bg_transparent = true
--
--     local toggle_transparent = function()
--       bg_transparent = not bg_transparent
--       vim.g.nord_disable_background = bg_transparent
--       vim.cmd [[colorscheme nord]]
--     end
--
--     vim.keymap.set('n', '<leader>bg', toggle_transparent, { desc = 'Toggle transparent background' })
--   end,
-- }

-- return {
--   'navarasu/onedark.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('onedark').setup {
--       -- Main options --
--       style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--       -- transparent = true, -- Show/hide background
--       transparent = false, -- Show/hide background
--       term_colors = true, -- Change terminal color as per the selected theme style
--       ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--       cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
--       -- toggle theme style ---
--       toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--       toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
--
--       -- Change code style ---
--       -- Options are italic, bold, underline, none
--       -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
--       code_style = {
--         comments = 'italic',
--         keywords = 'none',
--         functions = 'none',
--         strings = 'none',
--         variables = 'none',
--       },
--
--       -- Lualine options --
--       lualine = {
--         transparent = false, -- lualine center bar transparency
--       },
--
--       -- Custom Highlights --
--       colors = {}, -- Override default colors
--       highlights = {}, -- Override highlight groups
--
--       -- Plugins Config --
--       diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true, -- use undercurl instead of underline for diagnostics
--         background = true, -- use background color for virtual text
--       },
--     }
--     require('onedark').load()
--   end,
-- }
--

-- return {
--   'folke/tokyonight.nvim',
--   priority = 1000,
--   config = function()
--     local transparent = false -- set to true if you would like to enable transparency
--
--     local bg = '#011628'
--     local bg_dark = '#011423'
--     local bg_highlight = '#143652'
--     local bg_search = '#0A64AC'
--     local bg_visual = '#275378'
--     local fg = '#CBE0F0'
--     local fg_dark = '#B4D0E9'
--     local fg_gutter = '#627E97'
--     local border = '#547998'
--
--     require('tokyonight').setup {
--       style = 'night',
--       transparent = transparent,
--       styles = {
--         sidebars = transparent and 'transparent' or 'dark',
--         floats = transparent and 'transparent' or 'dark',
--       },
--       on_colors = function(colors)
--         colors.bg = bg
--         colors.bg_dark = transparent and colors.none or bg_dark
--         colors.bg_float = transparent and colors.none or bg_dark
--         colors.bg_highlight = bg_highlight
--         colors.bg_popup = bg_dark
--         colors.bg_search = bg_search
--         colors.bg_sidebar = transparent and colors.none or bg_dark
--         colors.bg_statusline = transparent and colors.none or bg_dark
--         colors.bg_visual = bg_visual
--         colors.border = border
--         colors.fg = fg
--         colors.fg_dark = fg_dark
--         colors.fg_float = fg
--         colors.fg_gutter = fg_gutter
--         colors.fg_sidebar = fg_dark
--       end,
--     }
--
--     vim.cmd 'colorscheme tokyonight'
--   end,
-- }
