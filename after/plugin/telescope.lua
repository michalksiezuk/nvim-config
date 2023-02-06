local status_ok, configs = pcall(require, 'telescope.builtin')
if not status_ok then
    return
end

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>/", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.git_files, {})
vim.keymap.set("n", "<leader>s", function()
    builtin.grep_string({ search = vim.fn.input("grep > ") })
end)
