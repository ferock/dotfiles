local M = {}
--local lspkind = require('lspkind')

M.treesitter = {
  ensure_installed = {
    "c",
    "css",
    "dockerfile",
    "gitignore",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "php",
    "python",
    "sql",
    "vim",
    "yaml"
  },
}

M.alpha = {
  status ={
    dashboard = true
  }
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    --"typescript-language-server",
    "deno",
    "bash-language-server",
    --GO
    "gopls",
    "golines",
    "goimports",
    -- JSON
    "json-lsp",
    -- :NET
    "omnisharp",
    -- PYTHON
    "black",
    "python-lsp-server",
    "debugpy",
    -- SQL
    "sql-formatter",
    -- EXTRAS
    "tailwindcss-language-server",
    "prettier",
    "yamlfmt"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.cmp = {
  formatting = {
    format = function(entry, vim_item)
      if vim.tbl_contains({ 'path' }, entry.source.name) then
        local icon, hl_group = require('nvim-web-devicons').get_icon(entry:get_completion_item().label)
        if icon then
          vim_item.kind = icon
          vim_item.kind_hl_group = hl_group
          return vim_item
        end
      end
      return require("lspkind").cmp_format({ with_text = false })(entry, vim_item)
    end
  },
  sources= {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "cmp_tabnine"},
  },
}

return M
