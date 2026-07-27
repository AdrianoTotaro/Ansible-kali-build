# Neovim Configuration Reference

## Leader Key

`<Space>` (set in `lua/ilprof/remap.lua`)

---

## General Keymaps

| Key | Mode | Action | Source |
|-----|------|--------|--------|
| `jj` | Insert | Escape to normal mode | `lua/ilprof/remap.lua` |
| `<leader>pv` | Normal | Open netrw (file explorer) | `lua/ilprof/remap.lua` |
| `<leader>y` | Normal, Visual | Yank to system clipboard (`+y`) | `lua/ilprof/remap.lua` |
| `<leader>p` | Normal, Visual | Paste from system clipboard (`+p`) | `lua/ilprof/remap.lua` |
| `<leader>w` | Normal | Cycle to next window (`<C-w>w`) | `lua/ilprof/remap.lua` |
| `<leader>q` | Normal | Write all and quit (`:wqa`) | `lua/ilprof/remap.lua` |
| `<leader>h` | Normal | Clear search highlight (`:nohlsearch`) | `lua/ilprof/remap.lua` |
| `<A-j>` | Normal, Visual | Move current line/selection down | `lua/ilprof/remap.lua` |
| `<A-k>` | Normal, Visual | Move current line/selection up | `lua/ilprof/remap.lua` |

---

## LSP Keymaps (buffer-local, available when LSP attaches)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Find references |
| `gI` | Go to implementation |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>e` | Show diagnostic in float |

Source: `after/plugin/lsp.lua`

---

## Telescope Keymaps

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep (search text in project) |
| `<leader>fb` | Switch buffers |
| `<leader>fh` | Search help tags |
| `<leader>fs` | Document symbols (functions, classes, etc.) |

Source: `after/plugin/telescope.lua`

---

## Autocompletion (nvim-cmp)

Completion activates automatically when typing. Sources:
- **nvim_lsp** — LSP-based completion (triggers after 1 character)
- **buffer** — Words from open buffers (triggers after 3 characters)
- **path** — File path completion
- **luasnip** — Snippet expansion (triggers after 2 characters)

### Completion Keymaps

| Key | Action |
|-----|--------|
| `<Tab>` | Select next item or trigger completion |
| `<S-Tab>` | Select previous item |
| `<Up>` / `<C-p>` | Select previous item |
| `<Down>` / `<C-n>` | Select next item |
| `<C-u>` | Scroll docs up |
| `<C-d>` | Scroll docs down |
| `<C-e>` | Abort/cancel completion |
| `<C-y>` | Confirm selection (selects current item) |
| `<CR>` | Confirm selection (inserts highlighted item) |
| `<C-f>` | Jump forward in snippet |
| `<C-b>` | Jump backward in snippet |

Source: `after/plugin/lsp.lua`

---

## Plugin List

| Plugin | Purpose |
|--------|---------|
| `wbthomason/packer.nvim` | Plugin manager |
| `nvim-telescope/telescope.nvim` | Fuzzy finder |
| `nvim-lua/plenary.nvim` | Dependency for telescope |
| `hrsh7th/nvim-cmp` | Completion engine |
| `hrsh7th/cmp-nvim-lsp` | LSP completion source |
| `hrsh7th/cmp-buffer` | Buffer word completion |
| `hrsh7th/cmp-path` | Path completion |
| `saadparwaiz1/cmp_luasnip` | LuaSnip completion source |
| `L3MON4D3/LuaSnip` | Snippet engine |
| `navarasu/onedark.nvim` | Colorscheme (active) |
| `rebelot/kanagawa.nvim` | Colorscheme (installed, not active) |
| `nvim-treesitter/nvim-treesitter` | Syntax highlighting & parsing |

Source: `lua/ilprof/packer.lua`

---

## Editor Settings

| Setting | Value | Description |
|---------|-------|-------------|
| `number` | `true` | Show line numbers |
| `relativenumber` | `true` | Relative line numbers |
| `tabstop` | `4` | Tab width |
| `softtabstop` | `4` | Soft tab width |
| `shiftwidth` | `4` | Indent width |
| `expandtab` | `true` | Spaces instead of tabs |
| `smartindent` | `true` | Smart indentation |
| `swapfile` | `false` | Disable swap files |
| `backup` | `false` | Disable backup files |
| `undofile` | `true` | Persistent undo |
| `hlsearch` | `true` | Highlight search matches |
| `incsearch` | `true` | Incremental search |
| `termguicolors` | `true` | 24-bit true color |
| `scrolloff` | `8` | Keep 8 lines visible around cursor |
| `signcolumn` | `yes` | Always show sign column |
| `updatetime` | `50` | Faster update for LSP diagnostics |
| `completeopt` | `menu,menuone,noselect` | Completion behavior |

Source: `lua/ilprof/set.lua`, `after/plugin/lsp.lua`

---

## Additional Config

| Feature | Detail |
|---------|--------|
| Colorscheme | `onedark` (`after/plugin/colors.lua`) |
| Treesitter | Enabled for: python, lua, vim, markdown, yaml, json + auto-install (`after/plugin/treesitter.lua`) |
| LSP (Python) | Pyright, triggered on Python filetype (`after/plugin/lsp.lua`) |
| Snippets | LuaSnip with VS Code-style snippets (`after/plugin/lsp.lua`) |
| netrw hide | Dotfiles hidden in netrw (`lua/ilprof/set.lua`) |
