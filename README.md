# myNvim.lua
My nvim configs based on Lua (templating on AstroVim)

## Features
- All good plugins from [AstroVim](https://github.com/NvChad/NvChad)
- vim-fugitive
- TabNine Lsp
- NvimTree with relative numbering by default

## Installation

```bash
# Clone the AstroVim template 
git clone git@github.com:AstroNvim/AstroNvim.git ~/.config/nvim --depth 1

# Clone my custom template
git  -C ~/.config/nvim --git-dir ~/.config/nvim/.git submodule add -f git@github.com:patrickphat/myNvim.lua.git ~/.config/nvim/lua/user

# Run NeoVim!
nvim
```
Run `:PackerSync` command to install all dependencies.
