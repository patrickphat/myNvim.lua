local M = {}

M.fugitive = {
  n = {
    ["<leader>ga"] = {"<cmd> Git add %:p <CR>", "Git add current page"},
    ["<leader>gc"] = {"<cmd> Git commit <CR>", "Git commit"},
    ["<leader>gs"] = {"<cmd> Git status <CR>", "Git status"},
    ["<leader>gd"] = {"<cmd> Git diff <CR>", "Git diff"},
    ["<leader>gl"] = {"<cmd> Git log <CR>", "Gid log"},
  },
}

M.hop ={
  n = {
    ["<leader>f"] = {"<cmd> HopWord <CR>", "Hop word"},
    ["<leader>fa"] = {"<cmd> HopAnywhere <CR>", "Hop anywhere"},
  }
}

return M

