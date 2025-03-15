return {
  {
    "scottmckendry/cyberdream.nvim",
    as = "cyberdream",
    config = function()
      require("cyberdream").setup({
        cache = false,
        lazy = false,
        priority = 1000,
        italic_comments = true,
        hide_fillchars = true,
        terminal_colors = true,
        transparent = true,
        transparent_background = true,
        borderless_pickers = false,
        opts = {
          variant = "default",
          saturaaion = 1,
        },
        extensions = {
          telescope = true,
          notify = true,
          mini = true,
        },
      })
    end,
  },
}
