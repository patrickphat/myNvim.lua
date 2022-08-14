local M = {}

M.fugitive = {
  n = {
    ["<leader>ga"] = {"<cmd> Git add %:p", "Git add current page"},
    ["<leader>gc"] = {"<cmd> Git commit <CR>", "Git commit"},
    ["<leader>gs"] = {"<cmd> Git status <CR>", "Git status"},
    ["<leader>gd"] = {"<cmd> Git diff <CR>", "Git diff"},
    ["<leader>gl"] = {"<cmd> Git log <CR>", "Gid log"},
  },
}

return M

