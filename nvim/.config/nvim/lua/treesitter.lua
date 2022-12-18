vim.api.nvim_create_autocmd({'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter'},{
    group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
    callback = function()
        vim.opt.foldmethod = 'expr'
        --vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end
})

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return 
end

configs.setup{
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil, 

    },
    ensure_installed = "all",
    sync_install = false,
    ignore_install = {""},
    highlight = {
        enable = true,
        disable = {""},
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = {"yaml"}},
}
