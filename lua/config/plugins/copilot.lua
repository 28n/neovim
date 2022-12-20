local M = {
  "zbirenbaum/copilot.lua",
  enabled = true,
  event = "VeryLazy",
  dependencies = {
    "zbirenbaum/copilot-cmp"
  }
}

function M.config()
  require("copilot").setup({})
  require("copilot_cmp").setup()
end

function M.test() end

return M
