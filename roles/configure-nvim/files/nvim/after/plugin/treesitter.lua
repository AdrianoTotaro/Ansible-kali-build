require('nvim-treesitter.configs').setup {
  ensure_installed = { 'python', 'lua', 'vim', 'vimdoc', 'query', 'markdown', 'markdown_inline', 'yaml', 'json' },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
}
