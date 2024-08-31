# Neovim Configs

My Neovim configs with full IDE features such as autocomplete, linting, and code actions. It uses Packer as the plugin manager.   
Spell check is enabled for Markdown, Txt, Org , and Latex files. Org mode is enabled and working.

# Requirements

* Neovim 0.9.2 or later

# Installation

1. Ensure that the XDG_CONFIG_HOME environment variable is set, then run the following command:

2. Run the following command:
```bash
./install.sh
```

3. Open Neovim for the first time. Ignore any errors or warnings that may appear.

4. Type :PackerSync in Neovim to install and sync all plugins.

## Plugins List

* [lualine](https://github.com/nvim-lualine/lualine.nvim) 
* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* [trouble](https://github.com/folke/trouble.nvim)
* [toggleterm](https://github.com/akinsho/toggleterm.nvim)
* [fidget](https://github.com/j-hui/fidget.nvim)
* [barbar](https://github.com/romgrk/barbar.nvim)
* [bufferline](https://github.com/akinsho/bufferline.nvim)
* [vscode](https://github.com/Mofiqul/vscode.nvim)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [nvim-orgmode](https://github.com/nvim-orgmode/orgmode)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
* [cmp-path](https://github.com/hrsh7th/cmp-path)
* [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
* [cmp-emoji](https://github.com/hrsh7th/cmp-emoji)
* [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
* [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) 
* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* [nvim-code-action-menu](https://github.com/weilbith/nvim-code-action-menu)
* [nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)

## Structure

* `init.lua` is the main neovim lua init config file
* `lua/keymaps.lua` all the additional keymaps
* `lua/plugins.lua` Packer Plugin manager configs and plugins installation  
* `plugins/` all the configs for each plugins lives here
```
.
├── init.lua
├── lua
│   ├── keymaps.lua 
│   └── plugins.lua 
├── plugin
│   ├── bufferline.lua  
│   ├── lsp.lua
│   ├── lualine.lua
│   ├── nvim-cmp.lua
│   ├── nvim-tree.lua
│   ├── nvim-treesitter.lua
│   ├── orgmode.lua
│   ├── telescope.lua
│   ├── toggleterm.lua
│   └── vscode.lua
├── README.md

```

## Additional Keybindings

Some plugins already have some Keybindings preset. For example, check [nvim-orgmode](https://github.com/nvim-orgmode/orgmode) for more Keybindings

### Global Keymap
* Ctrl+\ to Open a Horizental Terminal

### Normal Mode Keymap
* Ctrl+o to toggle nvim-tree
* Ctrl+p to Open Telescope
* GD to show declaration
* Gd to show definition
* Gi to show implementation
* Gr to show references
* K to hover
* C-k to show signature help
* Ctrl+\ to Open a Horizental Terminal
* Alt-Enter to show code action

## Notes

* Change the orgmode home folder in `plugin/orgmode.lua`
* Edit `plugin/lsp.lua` to add new language servers or configure current ones 
