local undotree_status_ok = pcall(require, "undotree")
if not undotree_status_ok then
    return
end

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
