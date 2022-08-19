-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
local pluginConfs = require "custom.plugins.configs"

return {
  ["tzachar/cmp-tabnine"] = {
     after = "nvim-cmp",
     run = "./install.sh",
     config = pluginConfs.tabnine
  },
  ["tpope/vim-fugitive"] = {
    setup = function()
      require("core.utils").load_mappings "fugitive"
    end,
  },
  ["phaazon/hop.nvim"] = {
    module = "hop",
    setup = function()
      require("hop").setup { keys = 'etovxqpdygfblzhckisuran' }
      require("core.utils").load_mappings "hop"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },
}
