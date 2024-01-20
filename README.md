# 🚀 Getting Started
this is a Neovim setup powered by [TheGreatagen](https://github.com/thegreatagen1) & [Ahmed hany](https://github.com/ahmedhany5) to make it easy to use neovim fast & smooth

# ✨ Features
- 🔥 Transform your Neovim into a full-fledged IDE
- 💤 Easily customize and extend your config with lazy.nvim
- 🚀 Blazingly fast
- 🧹 Sane default settings for options, autocmds, and keymaps
- 📦 Comes with a wealth of plugins pre-configured and ready to use

# ⚡️ Requirements
- Neovim >= 0.9.0 (needs to be built with LuaJIT)
- a Nerd Font(v3.0 or greater) (optional, but needed to display some icons)
- a C compiler for nvim-treesitter. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for telescope.nvim (optional)
  - live grep: space + sg
  - find files: space + sf

# 🛠️ Installation
this section introduces how could you use this config
> [!NOTE]
> make sure you installed neovim, you can see how [here](https://github.com/neovim/neovim)

## Linux/MacOS

- Remove the old config
```bash
rm -rf ~/.config/nvim
```

- clone the repo:
```bash
git clone https://github.com/theGreatagen/neovim-config ~/.config/nvim
```

- Remove the .git folder, so you can add it to your own repo later

```bash
rm -rf ~/.config/nvim/.git
```

- Start Neovim!

```bash
nvim
```

## Windows ( powershell )

- Remove the old config
```bash
Remove-Item $env:LOCALAPPDATA\nvim\ -Recurse -Force
```

- clone the repo:
```bash
git clone https://github.com/theGreatagen/neovim-config/ $env:LOCALAPPDATA\nvim
```

- Remove the .git folder, so you can add it to your own repo later

```bash
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

- Start Neovim!

```bash
nvim
```
