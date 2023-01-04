local overrides = require "custom.plugins.overrides"

return {

  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
    override_options = overrides.alpha,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["onsails/lspkind.nvim"] = {
  },
  ["hrsh7th/nvim-cmp"] = {
    after = "lspkind",
    override_options = overrides.cmp,
  },

  ["tzachar/cmp-tabnine"] = {
    after = "nvim-cmp",
    run = "./install.sh",
    config = function()
      require "custom.plugins.tabnine"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
