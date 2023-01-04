-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme_toggle = { "onedark", "tokyonight", "yoru", "catppuccin", "catppuccin_latte" },
  theme = "onedark",
  transparency = 0.9
}

M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

return M
