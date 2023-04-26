#!/bin/zsh

# just config ide

echo '-- my custom stuff\n' >> ~/.config/lvim/config.lua
echo 'lvim.colorscheme = "tokyonight"\n' >> ~/.config/lvim/config.lua

tee -a ~/.config/lvim/config.lua << END
  lvim.plugins = {
    {
      "folke/tokyonight.nvim",
      config = function()
        require("tokyonight").setup {
          style = "night",
          transparent = true,
        }
      end,
    },
    {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup {
          mapping = { "jk", "jj" },
          timeout = vim.o.timeoutlen,
          clear_empty_lines = false,
          keys = "<Esc>",
        }
      end,
    },
    { "tpope/vim-surround" },
  }
END

tee -a ~/.config/lvim/config.lua << END
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  lvim.keys.insert_mode["<A-j>"] = false
  lvim.keys.insert_mode["<A-k>"] = false
  lvim.keys.normal_mode["<A-j>"] = false
  lvim.keys.normal_mode["<A-k>"] = false
  lvim.keys.visual_block_mode["<A-j>"] = false
  lvim.keys.visual_block_mode["<A-k>"] = false
  lvim.keys.visual_block_mode["J"] = false
  lvim.keys.visual_block_mode["K"] = false
END

lvim +LvimUpdate +q
