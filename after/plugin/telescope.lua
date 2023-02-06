local builtin_status_ok, builtin = pcall(require, "telescope.builtin")
if not builtin_status_ok then
    return
end

vim.keymap.set("n", "<leader>/", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.git_files, {})
vim.keymap.set("n", "<leader>s", function()
    builtin.grep_string({ search = vim.fn.input("grep > ") })
end)
