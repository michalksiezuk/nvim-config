vim.g.copilot_no_tab_map = true

vim.keymap.set({"n", "i"}, "<C-Tab>", "copilot#Accept('<CR>')", {expr=true, silent=true})
