return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    -- Optional: require the plugin (not always needed if LazyVim autoloads it)
    local rainbow_delimiters = require("rainbow-delimiters")

    -- Example custom highlight groups
    vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#ff5f5f" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#FFD700" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#179FFF" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#ffaf5f" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#5fff87" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#DA70D6" })
    vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#5fffff" })

    -- Optionally, modify the strategy or query used by rainbow-delimiters
    vim.g.rainbow_delimiters = {
      strategy = {
        [""] = rainbow_delimiters.strategy["global"],
        vim = rainbow_delimiters.strategy["local"],
      },
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-blocks",
      },
      highlight = {
        "RainbowDelimiterYellow",
        "RainbowDelimiterViolet",
        "RainbowDelimiterBlue",
        "RainbowDelimiterGreen",
        "RainbowDelimiterOrange",
        "RainbowDelimiterRed",
        "RainbowDelimiterCyan",
      },
    }
  end,
}
