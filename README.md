# myNvim.lua
My nvim configs based on Lua (templating on NvChad)

## Features
- All good plugins from [NvChad](https://github.com/NvChad/NvChad)
- vim-fugitive
- TabNine Lsp
- NvimTree with relative numbering by default

## Installation

```bash
# Clone the NvChad template 
git clone git@github.com:NvChad/NvChad.git ~/.config/nvim --depth 1

# Clone my custom template
git  -C ~/.config/nvim --git-dir ~/.config/nvim/.git submodule add -f git@github.com:patrickphat/myNvim.lua.git ~/.config/nvim/lua/custom

# Run NeoVim!
nvim
```
Run `:PackerSync` command to install all dependencies.
