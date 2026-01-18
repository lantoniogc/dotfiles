vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
-- Improve search experience
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Enable mouse support
vim.opt.mouse = "a"
-- Plugins will handle the statusline
vim.opt.showmode = false
-- Set tabs to 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- Enable auto indenting and set it to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
-- System keyboard shared with vim
vim.opt.clipboard = "unnamedplus"
-- Smarter indentation
vim.opt.breakindent = true
-- Persistent undo history
vim.opt.undofile = true
vim.opt.signcolumn = "yes"
-- Decrease update time for better responsiveness
vim.opt.updatetime = 250
-- Decrease timeout length for mapped sequences
vim.opt.timeoutlen = 300
-- Enhance split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Highlight trailing whitespace and special characters
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- Show partial shows partial off-screen results in a preview window.
vim.opt.inccommand = "split"
-- Highlight the current line
vim.opt.cursorline = true
-- Show more context when scrolling
vim.opt.scrolloff = 10
-- 24-bit color
vim.opt.termguicolors = true
