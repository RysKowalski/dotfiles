return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        direction = "horizontal",
        start_in_insert = true,
        persist_size = true,
        insert_mappings = false,
        terminal_mappings = false,
      })
    end,
  },
}
