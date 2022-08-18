local M = {}

M.cmp = function()
  return {
    formatting = {
      format = function(entry, vim_item)
        if entry.source.name == 'cmp_tabnine' and entry.completion_item.data ~= nil then
            vim_item.kind = string.format("%s %s", '', ' TabNine')
        else
          local icons = require("nvchad_ui.icons").lspkind
          vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
        end

        return vim_item
      end,
    },
    sources = {
      { name = "cmp_tabnine" },
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
    },
  }
end

M.tabnine = function()
  return {
    max_lines = 1000,
    max_num_results = 5,
    sort = true,
    run_on_every_keystroke = true,
    show_prediction_strength = false
  }
end

M.nvimtree = function()
  return {
    view = {
      relativenumber = true,
      number = true,
    }
  }
end

M.mason = function()
  return   {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "vue-language-server",
        "emmet-ls",
        "json-lsp",

        --python
        "pyright",

        -- shell
        "shfmt",
        "shellcheck",
      },
    }
  end


return M
