vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
vim.cmd("filetype on")
vim.cmd("syntax on")
vim.cmd("set number")
vim.cmd("set cursorline")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.cmd("set expandtab")
vim.cmd("set ignorecase")
vim.cmd("set wildmenu")
vim.cmd("colorscheme nord")
require('mini.pairs').setup()
require('lualine').setup()
require("telescope").setup()
