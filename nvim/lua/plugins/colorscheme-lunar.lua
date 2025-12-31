return {
  {
    "LunarVim/lunar.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("lunar")

      local hl = vim.api.nvim_set_hl

      hl(0, "@variable", { fg = "#9CDCFE" })
      hl(0, "@type", { fg = "#4EC9B0" })
      hl(0, "Function", { fg = "#ffb300" })
      hl(0, "@keyword", { fg = "#569CD6" })
      hl(0, "PreProc", { fg = "#569CD6" })
      hl(0, "@module", { fg = "#4EC9B0" })
      hl(0, "Comment", { fg = "#6A9955" })
      hl(0, "Operator", { fg = "#5FFF87" })
    end,
  },
}
