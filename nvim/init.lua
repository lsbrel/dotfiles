-- Configuraçoes de termguicolors
vim.opt.termguicolors = true
vim.g.loaded_kitty_keyboard = 1

-- Configurações lazy
require("config.lazy")

-- Configurações core
require("config.core")

-- Configurações de keymap
require("keymap.keymaps")
