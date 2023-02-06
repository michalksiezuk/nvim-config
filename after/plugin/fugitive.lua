local fugitive_status_ok = pcall(require, "fugitive")
if not fugitive_status_ok then
    return
end

vim.keymap.set("n", "<leader>gt", vim.cmd.Git)
