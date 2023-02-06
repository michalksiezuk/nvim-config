local mark_status_ok, mark = pcall(require, "harpoon.mark")
if not mark_status_ok then
    return
end

local ui_status_ok, ui = pcall(require, "harpoon.ui")
if not ui_status_ok then
    return
end

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>`", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end)
