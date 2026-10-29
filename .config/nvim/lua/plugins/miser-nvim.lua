return {
  "carldaws/miser.nvim",
  config = function()
    require("miser").setup({
      auto_lsp = false,
    })
  end,
}
