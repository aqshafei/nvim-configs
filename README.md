# Neovim Configs

My Neovim configs with full IDE features such as autocomplete, linting, and code actions. It uses Lazy as the plugin manager, waiting neovim built in plugin manager.   
Spell check is enabled for Markdown, Txt , and Latex files.

# Requirements

* Neovim 0.11 or later

# Installation

1. Ensure that the XDG_CONFIG_HOME environment variable is set, then run the following command:

2. Run the following command:
```bash
./install.sh
```

3. Open Neovim for the first time, wait all the plugins, mason and treesitter to completely install.

## Plugins List

* [lualine](https://github.com/nvim-lualine/lualine.nvim) 
* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* [trouble](https://github.com/folke/trouble.nvim)
* [toggleterm](https://github.com/akinsho/toggleterm.nvim)
* [bufferline](https://github.com/akinsho/bufferline.nvim)
* [vscode](https://github.com/Mofiqul/vscode.nvim)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim)
* [blink.cmp](https://github.com/saghen/blink.cmp)
* [luasnip](https://github.com/L3MON4D3/LuaSnip)

## Structure

* `init.lua` is the main neovim lua init config file
* `lua/keymaps.lua` all the additional keymaps
* `lua/plugins.lua` Plugin manager configs and plugins installation  
* `plugins-config/` all the configs for each plugins lives here

```
├── init.lua
└── lua
    ├── keymaps.lua
    ├── plugins-config
    ├── plugins.lua
```

## Additional Keybindings

Some plugins already have some Keybindings preset.

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
* Edit `plugin/lsp.lua` to add new language servers or configure current ones 
