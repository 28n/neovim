return {
  {
    "echasnovski/nvim",
    name = "mini-dev",
    submodules = false,
    opts = {
      windows = {
        preview = true,
        width_nofocus = 25,
        width_focus = 25,
      },
    },
    keys = {
      {
        "<leader>fm",
        function()
          require("mini-dev.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
      },
    },
    config = function(_, opts)
      require("mini-dev.files").setup(opts)
    end,
  },
  {
    "folke/edgy.nvim",
    opts = {
      wo = {},
      debug = false,
      animate = { enabled = true },
    },
  },
  {
    "AckslD/muren.nvim",
    opts = {
      patterns_width = 60,
      patterns_height = 20,
      options_width = 40,
      preview_height = 24,
    },
    cmd = "MurenToggle",
  },
  -- { "rlane/pounce.nvim", opts = {}, cmd = "Pounce" },
  -- { "echasnovski/mini.jump", lazy = false, opts = {} },
  { "ggandor/leap.nvim", enabled = false },
  { "ggandor/flit.nvim", enabled = false },
  { "mfussenegger/nvim-treehopper", enabled = false },
  { "tpope/vim-repeat", enabled = false },

  
}
