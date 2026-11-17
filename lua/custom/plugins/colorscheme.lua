-- [[ Colorschemes ]]
-- Install and configure colorschemes here. The last `vim.cmd.colorscheme` call wins.
-- Run `:Telescope colorscheme` to preview what's installed.

local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'folke/tokyonight.nvim',
  gh 'rose-pine/neovim',
}

---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  styles = {
    comments = { italic = false },
  },
}

require('rose-pine').setup {
  disable_background = true,
  styles = {
    italic = false,
  },
}

vim.cmd.colorscheme 'rose-pine-moon'
