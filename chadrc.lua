local M = {}
local pluginConfs = require "custom.plugins.configs"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.plugins = {
  user = require "custom.plugins",
  override = {
    ["hrsh7th/nvim-cmp"] = pluginConfs.cmp,
    ["tzachar/cmp-tabnine"] = pluginConfs.tabnine,
    ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
    ["tpope/vim-fugitive"] = {},
  }
}

M.ui = {
  theme_toggle = { "onedark", "one_light" },
}

M.mappings = require "custom.mappings"

M.options = require "custom.options"

return M

