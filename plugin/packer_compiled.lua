-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = true
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Kunde\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\Kunde\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Kunde\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Kunde\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Kunde\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    after = { "nvim-ts-context-commentstring" },
    config = { 'require("plugins.comment").config()' },
    keys = { { "", "gc" }, { "", "gcc" }, { "", "gbc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "friendly-snippets" },
    config = { 'require("plugins.luasnip").config()' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["SchemaStore.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\SchemaStore.nvim",
    url = "https://github.com/b0o/SchemaStore.nvim"
  },
  ["animation.nvim"] = {
    load_after = {
      ["windows.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\animation.nvim",
    url = "https://github.com/anuvyklack/animation.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer\\after\\plugin\\cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline\\after\\plugin\\cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-cmdline-history"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline-history\\after\\plugin\\cmp_cmdline_history.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline-history",
    url = "https://github.com/dmitmel/cmp-cmdline-history"
  },
  ["cmp-emoji"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-emoji\\after\\plugin\\cmp_emoji.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp\\after\\plugin\\cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp-signature-help\\after\\plugin\\cmp_nvim_lsp_signature_help.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path\\after\\plugin\\cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp_luasnip\\after\\plugin\\cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { 'require("plugins.dashboard").config()' },
    loaded = true,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["dial.nvim"] = {
    config = { 'require("plugins.dial").config()' },
    keys = { { "", "<C-a>" }, { "", "<C-x>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = { 'require("plugins.diffview").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["friendly-snippets"] = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["github-notifications.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\github-notifications.nvim",
    url = "https://github.com/rlch/github-notifications.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("plugins.gitsigns").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    commands = { "HopWord" },
    config = { 'require("plugins.hop").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["inc-rename.nvim"] = {
    commands = { "IncRename" },
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15inc_rename\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\inc-rename.nvim",
    url = "https://github.com/smjonas/inc-rename.nvim"
  },
  ["incline.nvim"] = {
    config = { 'require("plugins.incline").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\incline.nvim",
    url = "https://github.com/b0o/incline.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("plugins.indent-blankline").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("plugins.lualine").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { 'require("plugins.mason").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  middleclass = {
    load_after = {
      ["windows.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\middleclass",
    url = "https://github.com/anuvyklack/middleclass"
  },
  ["mini.nvim"] = {
    config = { 'require("plugins.mini").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neo-tree.nvim"] = {
    commands = { "Neotree" },
    config = { 'require("plugins.neo-tree").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neodev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neogen = {
    config = { "\27LJ\2\nR\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19snippet_engine\fluasnip\nsetup\vneogen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neogen",
    url = "https://github.com/danymat/neogen"
  },
  neogit = {
    commands = { "Neogit" },
    config = { 'require("plugins.neogit").config()' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  neorg = {
    config = { 'require("plugins.neorg").config()' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neoscroll.nvim"] = {
    config = { 'require("plugins.neoscroll").config()' },
    keys = { { "", "<C-u>" }, { "", "<C-d>" }, { "", "gg" }, { "", "G" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["noice.nvim"] = {
    config = { 'require("plugins.noice").config()' },
    loaded = true,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("plugins.autopairs").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { 'require("plugins.bufferline").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp_luasnip", "cmp-buffer", "cmp-cmdline", "cmp-cmdline-history", "cmp-emoji", "cmp-nvim-lsp", "cmp-path", "cmp-nvim-lsp-signature-help" },
    config = { 'require("plugins.cmp").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { 'require("plugins.colorizer").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    after = { "one-small-step-for-vimkind", "nvim-dap-ui" },
    config = { 'require("plugins.dap").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("plugins.lsp").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    config = { "\27LJ\2\nˆ\1\0\0\3\0\a\0\v6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0B\0\2\1K\0\1\0\1\0\3\14separator\6 \14highlight\2\16depth_limit\3\5\nsetup\15nvim-navic\frequire\18navic_silence\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    config = { 'require("plugins.notify").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollbar"] = {
    config = { 'require("plugins.scrollbar").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-spectre"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-terminal.lua"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rterminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-terminal.lua",
    url = "https://github.com/norcalli/nvim-terminal.lua"
  },
  ["nvim-toggleterm.lua"] = {
    config = { 'require("plugins.toggleterm").config()' },
    keys = { { "", "<C-/>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-treehopper"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treehopper",
    url = "https://github.com/mfussenegger/nvim-treehopper"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treehopper", "nvim-treesitter-textsubjects", "nvim-treesitter-refactor", "nvim-treesitter-textobjects" },
    config = { 'require("plugins.treesitter").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["Comment.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    commands = { "Octo" },
    config = { 'require("plugins.octo").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["one-small-step-for-vimkind"] = {
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\one-small-step-for-vimkind",
    url = "https://github.com/jbyuki/one-small-step-for-vimkind"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["peek.nvim"] = {
    config = { 'require("plugins.peek").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\peek.nvim",
    url = "https://github.com/toppair/peek.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16persistence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  playground = {
    commands = { "TSHighlightCapturesUnderCursor", "TSPlaygroundToggle" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16refactoring\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["specs.nvim"] = {
    config = { 'require("plugins.specs").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["sqlite.lua"] = {
    load_after = {
      ["yanky.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20symbols-outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-symbols.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-symbols.nvim",
    url = "https://github.com/nvim-telescope/telescope-symbols.nvim"
  },
  ["telescope-z.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-z.nvim",
    url = "https://github.com/nvim-telescope/telescope-z.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-file-browser.nvim", "telescope-fzf-native.nvim", "telescope-symbols.nvim", "telescope-z.nvim" },
    commands = { "Telescope" },
    config = { 'require("plugins.telescope").config()' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    commands = { "TodoTrouble", "TodoTelescope" },
    config = { 'require("plugins.todo-comments").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { 'require("plugins.tokyonight").config()' },
    loaded = true,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle", "Trouble" },
    config = { "\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25use_diagnostic_signs\2\14auto_open\1\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["typescript.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-illuminate"] = {
    config = { 'require("plugins.illuminate").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-matchup"] = {
    after_files = { "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-matchup\\after\\plugin\\matchit.vim" },
    config = { "\27LJ\2\nV\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\18status_manual!matchup_matchparen_offscreen\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    config = { "\27LJ\2\n3\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\n\0=\1\2\0K\0\1\0\22startuptime_tries\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["which-key.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["windows.nvim"] = {
    after = { "middleclass", "animation.nvim" },
    config = { 'require("plugins.windows").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\windows.nvim",
    url = "https://github.com/anuvyklack/windows.nvim"
  },
  ["yanky.nvim"] = {
    after = { "sqlite.lua" },
    config = { 'require("plugins.yanky").config()' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\yanky.nvim",
    url = "https://github.com/gbprod/yanky.nvim"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    config = { "\27LJ\2\n‚\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\fplugins\1\0\0\nkitty\1\0\2\fenabled\1\tfont\a+2\1\0\2\ttmux\2\rgitsigns\2\nsetup\rzen-mode\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Kunde\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^animation"] = "animation.nvim",
  ["^cmp"] = "nvim-cmp",
  ["^cmp_nvim_lsp"] = "cmp-nvim-lsp",
  ["^dap"] = "nvim-dap",
  ["^dapui"] = "nvim-dap-ui",
  ["^dial"] = "dial.nvim",
  ["^diffview"] = "diffview.nvim",
  ["^github%-notifications"] = "github-notifications.nvim",
  ["^hop"] = "hop.nvim",
  ["^illuminate"] = "vim-illuminate",
  ["^inc_rename"] = "inc-rename.nvim",
  ["^luasnip"] = "LuaSnip",
  ["^mason"] = "mason.nvim",
  ["^mason%-lspconfig"] = "mason-lspconfig.nvim",
  ["^middleclass"] = "middleclass",
  ["^neodev"] = "neodev.nvim",
  ["^neogen"] = "neogen",
  ["^neorg"] = "neorg",
  ["^notify"] = "nvim-notify",
  ["^nui"] = "nui.nvim",
  ["^null%-ls"] = "null-ls.nvim",
  ["^nvim%-autopairs"] = "nvim-autopairs",
  ["^nvim%-navic"] = "nvim-navic",
  ["^nvim%-treesitter"] = "nvim-treesitter",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^osv"] = "one-small-step-for-vimkind",
  ["^peek"] = "peek.nvim",
  ["^persistence"] = "persistence.nvim",
  ["^plenary"] = "plenary.nvim",
  ["^refactoring"] = "refactoring.nvim",
  ["^rust%-tools"] = "rust-tools.nvim",
  ["^schemastore"] = "SchemaStore.nvim",
  ["^spectre"] = "nvim-spectre",
  ["^sqlite"] = "sqlite.lua",
  ["^telescope"] = "telescope.nvim",
  ["^telescope%._extensions%.file_browser"] = "telescope-file-browser.nvim",
  ["^telescope%._extensions%.fzf"] = "telescope-fzf-native.nvim",
  ["^telescope%._extensions%.symbols"] = "telescope-symbols.nvim",
  ["^telescope%._extensions%.z"] = "telescope-z.nvim",
  ["^todo%-comments"] = "todo-comments.nvim",
  ["^trouble"] = "trouble.nvim",
  ["^ts_context_commentstring"] = "nvim-ts-context-commentstring",
  ["^tsht"] = "nvim-treehopper",
  ["^twilight"] = "twilight.nvim",
  ["^typescript"] = "typescript.nvim",
  ["^which%-key"] = "which-key.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: nvim-dap
time([[Setup for nvim-dap]], true)
require("plugins.dap").init()
time([[Setup for nvim-dap]], false)
-- Setup for: todo-comments.nvim
time([[Setup for todo-comments.nvim]], true)
require("plugins.todo-comments").init()
time([[Setup for todo-comments.nvim]], false)
-- Setup for: yanky.nvim
time([[Setup for yanky.nvim]], true)
require("plugins.yanky").init()
time([[Setup for yanky.nvim]], false)
-- Setup for: hop.nvim
time([[Setup for hop.nvim]], true)
require("plugins.hop").init()
time([[Setup for hop.nvim]], false)
-- Setup for: symbols-outline.nvim
time([[Setup for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\tdesc\20Symbols Outline\28<cmd>SymbolsOutline<cr>\15<leader>cs\6n\bset\vkeymap\bvim\0", "setup", "symbols-outline.nvim")
time([[Setup for symbols-outline.nvim]], false)
-- Setup for: refactoring.nvim
time([[Setup for refactoring.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20select_refactor\16refactoring\frequireb\1\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\3\vsilent\2\texpr\1\fnoremap\2\0\15<leader>cr\6v\bset\vkeymap\bvim\0", "setup", "refactoring.nvim")
time([[Setup for refactoring.nvim]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
require("plugins.treesitter").init()
time([[Setup for nvim-treesitter]], false)
-- Setup for: mini.nvim
time([[Setup for mini.nvim]], true)
require("plugins.mini").init()
time([[Setup for mini.nvim]], false)
-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
require("plugins.illuminate").init()
time([[Setup for vim-illuminate]], false)
-- Setup for: peek.nvim
time([[Setup for peek.nvim]], true)
require("plugins.peek").init()
time([[Setup for peek.nvim]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
require("plugins.telescope").init()
time([[Setup for telescope.nvim]], false)
-- Setup for: neogit
time([[Setup for neogit]], true)
require("plugins.neogit").init()
time([[Setup for neogit]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
require("plugins.tokyonight").config()
time([[Config for tokyonight.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
require("plugins.dashboard").config()
time([[Config for dashboard-nvim]], false)
-- Config for: noice.nvim
time([[Config for noice.nvim]], true)
require("plugins.noice").config()
time([[Config for noice.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSHighlightCapturesUnderCursor lua require("packer.load")({'playground'}, { cmd = "TSHighlightCapturesUnderCursor", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSPlaygroundToggle lua require("packer.load")({'playground'}, { cmd = "TSPlaygroundToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file IncRename lua require("packer.load")({'inc-rename.nvim'}, { cmd = "IncRename", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neotree lua require("packer.load")({'neo-tree.nvim'}, { cmd = "Neotree", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TodoTrouble lua require("packer.load")({'todo-comments.nvim'}, { cmd = "TodoTrouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewClose lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewToggleFiles lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewToggleFiles", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewFocusFiles lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewFocusFiles", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TodoTelescope lua require("packer.load")({'todo-comments.nvim'}, { cmd = "TodoTelescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Octo lua require("packer.load")({'octo.nvim'}, { cmd = "Octo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <C-d> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-d>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-a> <cmd>lua require("packer.load")({'dial.nvim'}, { keys = "<lt>C-a>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gbc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gbc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-/> <cmd>lua require("packer.load")({'nvim-toggleterm.lua'}, { keys = "<lt>C-/>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gcc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-u> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-u>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> G <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "G", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-x> <cmd>lua require("packer.load")({'dial.nvim'}, { keys = "<lt>C-x>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gg <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "gg", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType terminal ++once lua require("packer.load")({'nvim-terminal.lua'}, { ft = "terminal" }, _G.packer_plugins)]]
vim.cmd [[au FileType norg ++once lua require("packer.load")({'neorg'}, { ft = "norg" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au User PackerDefered ++once lua require("packer.load")({'specs.nvim', 'dressing.nvim', 'mini.nvim', 'windows.nvim', 'nvim-treesitter', 'lualine.nvim', 'vim-illuminate', 'yanky.nvim'}, { event = "User PackerDefered" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-scrollbar', 'todo-comments.nvim', 'vim-matchup'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitsigns.nvim', 'nvim-bufferline.lua', 'indent-blankline.nvim', 'nvim-lspconfig', 'incline.nvim', 'nvim-surround', 'nvim-colorizer.lua', 'trouble.nvim', 'persistence.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: C:\Users\Kunde\AppData\Local\nvim-data\site\pack\packer\opt\neorg\ftdetect\norg.vim]], true)
vim.cmd [[source C:\Users\Kunde\AppData\Local\nvim-data\site\pack\packer\opt\neorg\ftdetect\norg.vim]]
time([[Sourcing ftdetect script at: C:\Users\Kunde\AppData\Local\nvim-data\site\pack\packer\opt\neorg\ftdetect\norg.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles(0) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
