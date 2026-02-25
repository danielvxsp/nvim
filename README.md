<br>

> For the configuration to display propperly, ensure you have:
> - **neovim** (duh)
> - a [patched font](https://www.nerdfonts.com/) 
> - a terminal that supports glyphs

<br> 

## Introduction

The intention of this configuration is to mix the elements on an IDE with an everyday text editor, in other words its meant to stay light and usable for small tasks while having useful "IDE features" like autocompletion, file search, git integration, etc... for a better coding experience. This configuration uses [vim-plug](https://github.com/junegunn/vim-plug) to manage extensions and is forked from BreadOnPenguins [nvim configuration](https://github.com/BreadOnPenguins/nvim).

<br>

## Keybinds

- The leader or "super" key is space, its indicated by `<leader>`

### Buffer "Tab" Management
- **Next Buffer**: `Shift + l` - `:bnext`
- **Previous Buffer**: `Shift + h` - `:bprevious`
- **Close Buffer**: `<leader>q` - `:BufferClose`
- **Force Close Buffer**: `<leader>Q` - `:BufferClose!`
- **Vertical Split & Open Next Buffer**: `<leader>vs` - `:vsplit<CR>:bnext<CR>`
- **Horizontal Split & Open Next Buffer**: `<leader>hs` - `:split<CR>:bnext<CR>`

### Buffer Navigation & Reordering
- **Move Buffer Left**: `Alt + h` - `<Cmd>BufferMovePrevious<CR>`
- **Move Buffer Right**: `Alt + l` - `<Cmd>BufferMoveNext<CR>`
- **Switch to Buffer 1-9**: 
    - `Alt + 1-9` - `<Cmd>BufferGoto 1-9<CR>`
- **Pin Buffer**: `Alt + p` - `<Cmd>BufferPin<CR>`

### Window Management
- **Navigate Left**: `Ctrl + h` - `<C-w>h`
- **Navigate Down**: `Ctrl + j` - `<C-w>j`
- **Navigate Up**: `Ctrl + k` - `<C-w>k`
- **Navigate Right**: `Ctrl + l` - `<C-w>l`
- **Resize Window Up**: `F5` - `:resize +2`
- **Resize Window Down**: `F6` - `:resize -2`
- **Resize Window Right**: `F7` - `:vertical resize +2`
- **Resize Window Left**: `F8` - `:vertical resize -2`

### FZF and Grep
- **Search CWD**: `<leader>f` - `:lua require('fzf-lua').files()`
- **Search Home Directory**: `<leader>Fh` - `:lua require('fzf-lua').files({ cwd = '~/' })`
- **Search Above Directory**: `<leader>Ff` - `:lua require('fzf-lua').files({ cwd = '..' })`
- **Resume Last Search**: `<leader>Fr` - `:lua require('fzf-lua').resume()`
- **Grep**: `<leader>g` - `:lua require('fzf-lua').grep()`
- **Grep Word Under Cursor**: `<leader>G` - `:lua require('fzf-lua').grep_cword()`

### Miscellaneous
- **Replace All**: `<leader>s` - `:%s//g<Left><Left>`
- **Open File Explorer**: `<leader>t` - `:NvimTreeToggle`
- **Cycle Themes**: `<leader>p` - `switch_theme`
- **Open Terminal**: `<leader>z` - `:lua require('FTerm').open()`
- **Close FTerm in Terminal Mode**: `Esc` - `<C-\><C-n><CMD>lua require("FTerm").close()`
- **Save File**: `<leader>w` - `:w`
- **Duplicate File**: `<leader>d` - `:w `
- **Make File Executable**: `<leader>x` - `<cmd>!chmod +x %<CR>`
- **Move File**: `<leader>mv` - `:!mv % `
- **Reload Neovim Config**: `<leader>R` - `:so %`
- **Open URL Under Cursor**: `<leader>u` - `:silent !xdg-open "<cWORD>" &`
- **Auto Indent Selection**: `<leader>i` - `=gv`
- **Toggle Wrap**: `<leader>W` - `:set wrap!`
- **Toggle Twilight**: `<leader>l` - `:Twilight`

### Htop in Terminal
- **Toggle Htop**: `<leader>H` - Toggle in terminal

### Quick Make
- **Quick Make**: `<leader>ma` - `!sudo make uninstall && sudo make clean install %` in buffer's directory

### Toggle
- **Toggle Line Numbers**: `<leader>nn` - Toggle relative vs absolute line numbers
- **Turn on COQ auto complete and toggle LSP server compatibility**: `<leader>a`

<br>

## Plugins
The plugins used for this configuration are:
- **ellisonleao/gruvbox.nvim**: Colorscheme
- **uZer/pywal16.nvim**: Pywal colorscheme
- **nvim-lualine/lualine.nvim**: Statusline
- **nvim-tree/nvim-web-devicons**: Pretty icons
- **folke/which-key.nvim**: Mappings popup
- **romgrk/barbar.nvim**: Bufferline
- **goolord/alpha-nvim**: Pretty startup screen
- **nvim-treesitter/nvim-treesitter**: Improved syntax highlighting
- **mfussenegger/nvim-lint**: Async linter
- **nvim-tree/nvim-tree.lua**: File explorer
- **windwp/nvim-autopairs**: Auto pairs for brackets
- **lewis6991/gitsigns.nvim**: Git signs in the gutter
- **numToStr/Comment.nvim**: Easier commenting
- **norcalli/nvim-colorizer.lua**: Color highlight
- **ibhagwan/fzf-lua**: Fuzzy finder and grep
- **numToStr/FTerm.nvim**: Floating terminal
- **ron-rs/ron.vim**: RON syntax highlighting
- **MeanderingProgrammer/render-markdown.nvim**: Render Markdown inline
- **folke/twilight.nvim**: Dim surrounding text
- **neovim/nvim-lspconfig**: LSP server configurations for autocomplete
- **ms-jpq/coq_nvim**: Autocompletion
- **ms-jpq/coq.artifacts**: Snippets for Coq

