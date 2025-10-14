return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- lub inna odmiana Tokyonight
      transparent = false,
      on_highlights = function(hl, c)
        -- ustaw kolor dla @variable
        hl["@variable"] = { fg = "#9CDCFE" }

        hl["@Type"] = { fg = "#4EC9B0" }

        hl["Function"] = { fg = "#ffb300" }

        hl["@keyword"] = { fg = "#569CD6" }

        hl["PreProc"] = { fg = "#569CD6" }

        hl["@module"] = { fg = "#4EC9B0" }

        hl["Comment"] = { fg = "#6A9955" }
      end,
    },
  },
}
