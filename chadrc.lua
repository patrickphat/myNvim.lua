local M = {}
local pluginConfs = require "custom.plugins.configs"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.plugins = {
  user = require "custom.plugins",
  -- remove ={
  --   "windwp/nvim-autopairs",
  -- },
  override = {
    ["hrsh7th/nvim-cmp"] = pluginConfs.cmp,
    ["tzachar/cmp-tabnine"] = pluginConfs.tabnine,
    ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
    ["tpope/vim-fugitive"] = {},
    ["phaazon/hop.nvim"] = {},
    ["williamboman/mason.nvim"] = pluginConfs.mason,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.configs.lspconfig",
    },
  },
}

M.ui = {
  theme_toggle = { "nightowl", "everforest_light" },
  theme = "nightowl",
}

M.mappings = require "custom.mappings"

M.options = require "custom.options"

return M

