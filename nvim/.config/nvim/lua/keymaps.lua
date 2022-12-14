-- Keymaps
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then 
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local builtin = require('telescope.builtin')

vim.g.mapleader  = " "

map('i', 'jk', '<ESC>', {noremap=true})
map('n', '<leader>w', ':w<CR>', {noremap=true})
map('n', '<leader>q', ':q!<CR>', {noremap=true})
map('n', '<leader>s', ':so %<CR>', {noremap=true})
map('n', '<leader>ev', ':vsplit $MYVIMRC<CR>', {noremap=true})
map('n', '<leader>sv', ':w<CR>:so %<CR>:q<CR>', {noremap=true})
map('n', '<leader>n', ':bnext<cr>', {noremap=true})
map('n', '<leader>p', ':bprev<cr>', {noremap=true})

map('n', ':cpp', ':!g++ % -o %:r && %:r<cr>')
map('n', ':c', ':!gcc % -o %:r && %;r<cr>')
map('n', ':sh', ':!bash %<cr>')
map('n', ':py', ':!python3 %<cr>')

-- nvim tree
map('n', '<leader>t', '<Cmd>NvimTreeToggle<CR>', {noremap=true, silent=true})
map('n', '<leader>g', 'Cmd>NvimTreeFocus<CR>', {noremap=true, silent=true})
map('n', '<leader>y', '<Cmd>NvimTreeFindFile<CR>', {noremap=true, silent=true})

-- barbar (maybe remap *redundant)
map('n', '<leader>,', '<Cmd>BufferPrevious<CR>', {noremap=true, silent=true})
map('n', '<leader>.', '<Cmd>BufferNext<CR>', {noremap=true, silent=true})
map('n', '<leader>c', '<Cmd>BufferClose<CR>', {noremap=true, silent=true})

-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fp', builtin.planets, {})


-- float term

map('n', '<leader>]', '<Cmd>FloatermToggle<CR>', {noremap=true, silent=true})
map('n', '<leader>[', '<Cmd>FloatermNew<CR>', {noremap=true, silent=true})
map('n', '<leader>r', '<Cmd>FloatermNew ranger<CR>', {noremap=true, silent=true})
