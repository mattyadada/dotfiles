--vim.cmd('colorscheme onedark') --> onedark
--vim.o.background = 'dark'
--vim.cmd('colorscheme gruvbox') --> gruvbox
vim.cmd[[colorscheme dracula]]


vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg=0, bg=LightGrey })
vim.api.nvim_set_hl(0, "Normal", { ctermfg=White,  ctermbg=Black })
--vim.cmd'colorscheme nord' --> nord
