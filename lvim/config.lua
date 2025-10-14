-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
    {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      -- Define highlight groups with VSCode default bracket colors
      vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#FFD700' }) 

      -- Plugin configuration
      local rainbow_delimiters = require "rainbow-delimiters"
      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = rainbow_delimiters.strategy['global'],
          vim = rainbow_delimiters.strategy['local'],
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks',
        },
        highlight = {
          'RainbowDelimiterYellow',
          'RainbowDelimiterViolet',
          'RainbowDelimiterBlue',
          'RainbowDelimiterGreen',
          'RainbowDelimiterCyan',
        },
      }
    end,
  },
{
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      -- filetypes you want it enabled for
      "*",  -- all
      -- or specific
      -- "css", "html", "javascript", ...
    }, {
      -- options, e.g.:
      RGB      = true,   -- #RGB support
      RRGGBB   = true,   -- #RRGGBB support
      names    = false,  -- color names like "red"
      -- modes: “background”, “foreground”, “virtualtext”
      mode     = "background",
    })
  end,
}
}

-- ===========================================================================
-- Example: Customize rainbow-delimiters.nvim colors in LunarVim
-- ===========================================================================

-- 1. Configure custom order of highlight groups (optional)
local rainbow_delimiters = require('rainbow-delimiters')

-- 2. Define colors and reapply them automatically on theme change
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "RainbowDelimiterRed",    { fg = "#ff5f5f" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#ffaf5f" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#FFD700" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterGreen",  { fg = "#5fff87" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterBlue",   { fg = "#179FFF" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterCyan",   { fg = "#5fd7ff" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#DA70D6" })
  end,
})

-- 3. Apply the highlights immediately for the current theme
vim.api.nvim_exec_autocmds("ColorScheme", { modeline = false })


-- Define your custom highlight overrides
local custom_highlights = function()
  local set_hl = vim.api.nvim_set_hl

  set_hl(0, "@variable", { fg = "#9CDCFE" })
  set_hl(0, "@type", { fg = "#4EC9B0" })
  set_hl(0, "Function", { fg = "#ffb300" })
  set_hl(0, "@keyword", { fg = "#569CD6" })
  set_hl(0, "PreProc", { fg = "#569CD6" })
  set_hl(0, "@module", { fg = "#4EC9B0" })
  set_hl(0, "Comment", { fg = "#6A9955" })
end

-- Reapply highlights after colorscheme loads
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = custom_highlights,
})

-- Optionally call it once at startup (in case colorscheme is already active)
custom_highlights()
