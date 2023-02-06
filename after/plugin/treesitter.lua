local configs_status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not configs_status_ok then
  return
end

configs.setup {
  ensure_installed = { "javascript", "typescript", "lua", "vim", "help" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
