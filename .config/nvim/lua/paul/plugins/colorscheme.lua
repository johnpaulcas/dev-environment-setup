-- local colors = {
--   blue = "#7dcfff", -- Blue
--   teal = "#94e2d5", -- Teal
--   magenta = "#f5c2e7", -- Magenta
--   cursor = "#F8FAFC",
-- }
--
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "macchiato", -- latte, frappe, macchiato, mocha
--       transparent_background = true,
--       term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         -- shade = "dark"rafi/theme-loader.nvim,
--         percentage = 0.25, -- percentage of the shade to apply to the inactive window
--       },
--       custom_highlights = {
--         Cursor = { bg = colors.teal },
--         iCursor = { bg = colors.teal },
--         vCursor = { bg = colors.teal },
--         -- CursorLine = { bg = "#2A2B3C" },
--         -- CursorLine = { bg = colors.cursor },
--       },
--       -- highlight_overrides = {
--       --   macchiato = function(macchiato)
--       --     return {
--       --       -- CursorLine = { bg = macchiato.surface0, blend = 70 }, -- or any other macchiato color
--       --       CursorLine = { bg = "#E1F2FB", blend = 70 }, -- or any other macchiato color
--       --     }
--       --   end,
--       -- },
--     })
--     -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
--     vim.cmd("colorscheme catppuccin-macchiato")
--   end,
-- }
return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    local transparent = true -- set to true if you would like to enable transparency

    local bg = "#011628"
    local bg_dark = "#011423"
    local bg_highlight = "#143652"
    local bg_search = "#0A64AC"
    local bg_visual = "#275378"
    local fg = "#CBE0F0"
    local fg_dark = "#B4D0E9"
    local fg_gutter = "#627E97"
    local border = "#547998"

    require("tokyonight").setup({
      style = "moon", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
      terminal_colors = true,
      transparent = transparent,
      light_style = "moon", -- The theme is used when the background is set to light
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      dim_inactive = false, -- dims inactive windows
      lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
      cache = false, -- When set to true, the theme will be cached for better performance
      styles = {
        sidebars = transparent and "transparent" or "dark",
        floats = transparent and "transparent" or "dark",
      },
      on_colors = function(colors)
        colors.bg = bg
        colors.bg_dark = transparent and colors.none or bg_dark
        colors.bg_float = transparent and colors.none or bg_dark
        colors.bg_highlight = bg_highlight
        colors.bg_popup = bg_dark
        colors.bg_search = bg_search
        colors.bg_sidebar = transparent and colors.none or bg_dark
        colors.bg_statusline = transparent and colors.none or bg_dark
        colors.bg_visual = bg_visual
        colors.border = border
        colors.fg = fg
        colors.fg_dark = fg_dark
        colors.fg_float = fg
        colors.fg_gutter = fg_gutter
        colors.fg_sidebar = fg_dark
      end,
      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@param highlights tokyonight.Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors) end,
      plugins = {
        -- enable all plugins when not using lazy.nvim
        -- set to false to manually enable/disable plugins
        all = package.loaded.lazy == nil,
        -- uses your plugin manager to automatically enable needed plugins
        -- moon only lazy.nvim is supported
        auto = true,
        -- add any plugins here that you want to enable
        -- for all possible plugins, see:
        --   * https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
        -- telescope = true,
      },
    })

    vim.cmd("colorscheme tokyonight")
  end,
}
