vim.api.nvim_create_autocmd("VimEnter",{
    pattern = "*",
    command = "NERDTree"
})

vim.api.nvim_create_autocmd("StdinReadPre", {
    pattern = "*",
    callback = function()
        vim.g.std_in = 1
    end
})

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        if #vim.v.argv == 1 and vim.g.std_in == nil then
            vim.cmd("NERDTree")
        end
    end
})
