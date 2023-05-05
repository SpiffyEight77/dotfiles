vim.o.background = "dark"
vim.g.tokyonight_style = "storm" -- day / night
vim.opt.termguicolors = true
local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
  return
end
