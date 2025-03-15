return {
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        transparent = true,
        styles = {
          comments = { "italic" },
          functions = { "bold" },
          strings = { "italic" },
          types = { "italic" },
          keywords = { "bold" },
        },
      })
    end,
  },
}
