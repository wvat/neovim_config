vim.keymap.set('n', '{', '<C-u>zz', {noremap = true, silent = true})
vim.keymap.set('n', '}', '<C-d>zz', {noremap = true, silent = true})

-- ******** Git ********
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<C-u>', vim.cmd.UndotreeToggle)

-- ******** Harpoon ******** 
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

