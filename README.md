🚀 Getting Started
this is a Neovim setup powered by [TheGreatagen](https://github.com/thegreatagen1) & [Ahmed hany](https://github.com/ahmedhany5) to make it easy to use neovim fast & smooth

# ✨ Features

-    🔥 Transform your Neovim into a full-fledged IDE
-    💤 Easily customize and extend your config with lazy.nvim
-    🚀 Blazingly fast
-    🧹 Sane default settings for options, autocmds, and keymaps
-    📦 Comes with a wealth of plugins pre-configured and ready to use

# ⚡️ Requirements

-    Neovim version >= 0.9.0
-    a Nerd Font(v3.0 or greater) (optional, but needed to display some icons)
-    a C compiler for nvim-treesitter. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

# 🛠️ Installation

this section introduces how could you use this config

> [!NOTE]
> make sure you installed neovim, you can see how [here](https://github.com/neovim/neovim/blob/master/INSTALL.md)

## Linux/MacOS

-    Remove the old config ( if you have one )

```bash
rm -rf ~/.config/nvim
```

-    Remove the caches

```bash
rm -rf ~/.local/share/nvim
```

-    clone the repo:

```bash
git clone https://github.com/theGreatagen/neovim-config ~/.config/nvim
```

-    Remove the .git folder, so you can add it to your own repo later

```bash
rm -rf ~/.config/nvim/.git
```

-    Start Neovim!

```bash
nvim
```

## Windows ( powershell )

-    Remove the old config ( if you have one )

```bash
Remove-Item $env:LOCALAPPDATA\nvim\ -Recurse -Force
```

-    Remove the caches

```bash
Remove-Item $env:LOCALAPPDATA\nvim-data\ -Recurse -Force
```

-    clone the repo:

```bash
git clone https://github.com/theGreatagen/neovim-config/ $env:LOCALAPPDATA\nvim
```

-    Remove the .git folder, so you can add it to your own repo later

```bash
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

-    Start Neovim!

```bash
nvim
```

# ⌨️ Keymaps

## General

this keybinds is a general custom keybinds, that means that it isn't related to any plugin.
| Key | Description | Modes |
| -------- | ------- | ------- |
| `shift + j` | makes the line go down | visual mode |
| `shift + k` | makes the line go up | visual mode |
| `space + w` | saves the file | normal mode |

## [comment.nvim](https://github.com/numToStr/Comment.nvim)

this keybinds is related to the comment.nvim plugin, this plugin helps you to comment your code fast.
| Key | Description | Modes |
| -------- | ------- | ------- |
| `gcc` | Toggles the current line using linewise comment | normal mode |
| `gbc` | Toggles the current line using blockwise comment | normal mode |
| `[count]gcc` | Toggles the number of line given as a prefix-count using linewise | normal mode |
| `[count]gbc` | Toggles the number of line given as a prefix-count using blockwise | normal mode |
| `gco` | Insert comment to the next line and enters INSERT mode | normal mode |
| `gcO` | Insert comment to the previous line and enters INSERT mode | normal mode |
| `gcA` | Insert comment to end of the current line and enters INSERT mode | normal mode |
| `gc` | Toggles the region using linewise comment | visual mode |
| `gb` | Toggles the region using blockwise comment | visual mode |

## [harpoon.nvim](https://github.com/theprimeagen/harpoon)

this plugin helps you to navigate between your files fast.
| Key | Description | Modes |
| -------- | ------- | ------- |
| `space + a` | adds the current file to the harpoon list | normal mode |
| `ctrl + e` | opens the harpoon list | normal mode |
| `ctrl + t` | opens the first file in the harpoon list | normal mode |
| `ctrl + h` | opens the second file in the harpoon list | normal mode |
| `ctrl + b` | opens the third file in the harpoon list | normal mode |
| `ctrl + s` | opens the file number 4 in the harpoon list | normal mode |

## [LSP](https://github.com/VonHeikemen/lsp-zero.nvim)

Collection of functions that will help you setup Neovim's LSP client, so you can get IDE-like features with minimum effort.
| Key | Description | Modes |
| -------- | ------- | ------- |
| `gd` | go to definition | normal mode |
| `shift + k` | makes the line go up | visual mode |
| `K` | hovers on the definition | normal mode |
| `space + vd` | shows the error in a popup | normal mode |
| `[d` | goes to the next error | normal mode |
| `]d` | goes to the previous error | normal mode |
| `]d` | goes to the previous error | normal mode |
| `space + vca` | shows some code actions | normal mode |
| `space + vrr` | References | normal mode |
| `space + vrn` | renames the current definition | normal mode |
| `space + f` | formats the current file | normal mode |

## [nvim-tree.nvim](https://github.com/nvim-tree/nvim-tree.lua)

file explorer
| Key | Description | Modes |
| -------- | ------- | ------- |
| `space + e` | toggles the file tree | normal mode |
| `space + l` | focuses the file tree | normal mode |

## [persistence.nvim](https://github.com/folke/persistence.nvim)

Persistence is a simple lua plugin for automated session management.
| Key | Description | Modes |
| -------- | ------- | ------- |
| `space + qs` | restore the session for the current directory | normal mode |
| `space + ql` | restore the last session | normal mode |
| `space + qd` | stop Persistence => session won't be saved on exit | normal mode |

## [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.
| Key | Description | Modes |
| -------- | ------- | ------- |
| `space + sf` | search for a file in a directory | normal mode |
| `space + sg` | search for a word around the files in the current directory | normal mode |
| `space + sb` | search for a buffer around all opened buffers | normal mode |

## [trouble.nvim](https://github.com/nvim-telescope/telescope.nvim)

telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.
| Key | Description | Modes |
| -------- | ------- | ------- |
| `space + tr` | opens the trouble list, the errors around the current folder | normal mode |
| `space + xw` | opens the workspace diagnostics list | normal mode |
| `space + xd` | opens the document diagnostics list | normal mode |
| `space + xq` | opens the quickfix | normal mode |
| `space + xl` | opens the local list | normal mode |
| `gR` | opens the lsp references | normal mode |

## [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)

todo comments allows you to make beautiful comments with cool highlighting.
<br />
<br />
![118135272-ad21e980-b3b7-dsf11eb-881c-e45a4a3d6192](https://github.com/theGreatagen/neovim-config/assets/133010783/aee41fa7-9be7-4466-815a-289f418aa5ca)

| Key  | Description                         | Modes       |
| ---- | ----------------------------------- | ----------- |
| `]t` | allows you jump to next comment     | normal mode |
| `[t` | allows you jump to previous comment | normal mode |

### [undotree.nvim](https://github.com/mbbill/undotree)

undotree allows you to see your latest and old edits

| Key         | Description                            | Modes       |
| ----------- | -------------------------------------- | ----------- |
| `space + t` | allows you to toggle in the edits tree | normal mode |

# [live-server.nvim](https://github.com/barrett-ruth/live-server.nvim)

live server allows you to host your html files locally on localhost:5555

:LiveServerStart => starts the server on localhost:5555
LiveServerStop => stops the server

# ⚙️ Configuration

this section about how the config works and more.

## 📂 File Structure

```bash

~/.config/nvim
├── lua
│   ├── configs // plugins config
│   │   ├── init.lua
│   │   └── ...
│   └── thegreatagen // main config
│       ├── init.lua
│       ├── lazy.lua
│       ├── set.lua
│       └── remap.lua
└── init.lua

```
