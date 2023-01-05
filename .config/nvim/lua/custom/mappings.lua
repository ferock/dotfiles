local M = {}

M.nvterm = {
  n = {
    ["<leader>lg"] = {
      function()
        require("nvterm.terminal").send("lazygit", "float")
      end,
      "new lazygit term"
    },
  },
}

return M
