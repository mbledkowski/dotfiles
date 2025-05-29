--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
vim.opt.shell = "/bin/dash"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- DAP settings
-- local home = os.getenv('HOME')
-- local dap = require('dap')
-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = { home .. '/.local/share/nvim/lspinstall/node_modules/vscode-node-debug2/out/src/nodeDebug.js' },
-- }

-- dap.adapters.python = {
--   type = "executable",
--   command = "python3",
--   args = { "-m", "debugpy.adapter" },
-- }

-- dap.configurations.javascript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.loop.cwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process
--     -- is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require('dap.utils').pick_process,
--   },
-- }

-- dap.configurations.typescript = {
--   {
--     name = "ts-node (Node2 with ts-node)",
--     type = "node2",
--     request = "launch",
--     cwd = vim.loop.cwd(),
--     runtimeArgs = { "-r", "ts-node/register" },
--     runtimeExecutable = "node",
--     args = { "--inspect", "${file}" },
--     sourceMaps = true,
--     skipFiles = { "<node_internals>/**", "node_modules/**" },
--   },
--   {
--     name = "Jest (Node2 with ts-node)",
--     type = "node2",
--     request = "launch",
--     cwd = vim.loop.cwd(),
--     runtimeArgs = { "--inspect-brk", "${workspaceFolder}/node_modules/.bin/jest" },
--     runtimeExecutable = "node",
--     args = { "${file}", "--runInBand", "--coverage", "false" },
--     sourceMaps = true,
--     port = 9229,
--     skipFiles = { "<node_internals>/**", "node_modules/**" },
--   },
-- }

-- dap.configurations.python = {
--   {
--     type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
--     request = "launch",
--     name = "Launch file",
--     vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "sumneko_lua" })


--     -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
--     program = "${file}", -- This configuration will launch the current file if used.
--     pythonPath = function()
--       -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
--       -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
--       -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
--       local cwd = vim.fn.getcwd()
--       if vim.fn.executable(cwd .. "/venv/bin/python3") == 1 then
--         return cwd .. "/venv/bin/python3"
--       elseif vim.fn.executable(cwd .. "/.venv/bin/python3") == 1 then
--         return cwd .. "/.venv/bin/python3"
--       else
--         return "/usr/bin/python3"
--       end
--     end,
--   },
-- }

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumeko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- Pythong LSP
-- add `pyright` to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })

local opts = {} -- check the lspconfig documentation for a list of all possible options
require("lvim.lsp.manager").setup("pylsp", opts)

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
vim.lsp.format = { timeout = 15000 }
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup = {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
-- {
--   --     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--   command = "prettierd",
--   --     ---@usage arguments to pass to the formatter
--   --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--   --     extra_args = { "--print-with", "100" },
--   --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--   filetypes = { "typescript", "typescriptreact" },
-- },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup = {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
  {
    "aserowy/tmux.nvim",
    event = "VeryLazy",
    config = function()
      require("tmux").setup()
    end
  },
  -- {
  --   "dpayne/CodeGPT.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'MunifTanjim/nui.nvim',
  --   },
  --   config = function()
  --     require("codegpt.config")
  --   end
  -- },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = { "scala", "sbt", "java" },
    opts = function()
      local metals_config = require("metals").bare_config()
      metals_config.on_attach = function(client, bufnr)
        -- your on_attach function
      end

      return metals_config
    end,
    config = function(self, metals_config)
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = self.ft,
        callback = function()
          require("metals").initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end
  },
  -- {
  --   "tzachar/cmp-tabnine",
  --   build = "./install.sh",
  --   dependencies = "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   event = "InsertEnter",
  --   dependencies = { "zbirenbaum/copilot.lua" },
  --   config = function()
  --     vim.defer_fn(function()
  --       require("copilot").setup()     -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
  --       require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
  --     end, 100)
  --   end,
  -- },
  -- {
  --   "github/copilot.vim",
  --   event = "VeryLazy",
  -- },
  -- {
  --   'huggingface/llm.nvim',
  --   event = "VeryLazy",
  --   opts = {
  --     backend = "ollama",
  --     model = "codegemma:latest",
  --     url = "http://localhost:11434/api/generate", -- llm-ls uses "/api/generate"
  --     -- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
  --     tokens_to_clear = { "<|file_separator|>" },
  --     request_body = {
  --       -- Modelfile options for the model you use
  --       options = {
  --         max_new_tokens = 128,
  --         temperature = 0,
  --         top_p = 0.9,
  --       }
  --     },
  --     fim = {
  --       enabled = true,
  --       prefix = "<|fim_prefix|>",
  --       middle = "<|fim_middle|>",
  --       suffix = "<|fim_suffix|>",
  --     },
  --     accept_keymap = "<Tab>",
  --     dismiss_keymap = "<S-Tab>",
  --     lsp = {
  --       bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
  --       host = "localhost",
  --       port = "11434",
  --       version = "0.5.2",
  --     },
  --     tokenizer = nil,       -- cf Tokenizer paragraph
  --     context_window = 8192, -- max number of tokens for the context window
  --     enable_suggestions_on_startup = true,
  --     enable_suggestions_on_files = "*",
  --   }
  -- },
  -- {
  --   'huggingface/llm.nvim',
  --   opts = {
  --     backend = "ollama",
  --     model = "codegemma:2b",
  --     fim = {
  --       enabled = true,
  --       prefix = "<|fim_prefix|>",
  --       middle = "<|fim_middle|>",
  --       suffix = "<|fim_suffix|>",
  --     },
  --     context_window = 128,
  --     url = "http://localhost:11434",
  --     debounce_ms = 150,
  --     accept_keymap = "<C-y>",
  --     dismiss_keymap = "<C-n>",
  --     request_body = {
  --       options = {
  --         num_predict = 128,
  --         temperature = 0,
  --         top_p = 0.9,

  --       }
  --     },
  --     tokensToClear = { "<|file_separator|>" },
  --
  --   }
  -- },
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
  },
  {
    "mbledkowski/neuleetcode.vim",
    event = "VeryLazy",
  },
  {
    "Igorjan94/codeforces.vim",
    event = "VeryLazy",
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
  },
  {
    "epwalsh/obsidian.nvim",
    event = { "BufReadPre " .. vim.fn.expand "~" .. "/Notes/**.md" },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- Optional, for completion.
      "hrsh7th/nvim-cmp",

      -- Optional, for search and quick-switch functionality.
      "nvim-telescope/telescope.nvim",

      -- Optional, an alternative to telescope for search and quick-switch functionality.
      -- "ibhagwan/fzf-lua"

      -- Optional, another alternative to telescope for search and quick-switch functionality.
      -- "junegunn/fzf",
      -- "junegunn/fzf.vim"

      -- Optional, alternative to nvim-treesitter for syntax highlighting.
      "godlygeek/tabular",
      "preservim/vim-markdown",
    },
    config = function(_, opts)
      require("obsidian").setup(opts)

      -- Optional, override the 'gf' keymap to utilize Obsidian's search functionality.
      -- see also: 'follow_url_func' config option above.
      vim.keymap.set("n", "gf", function()
        if require("obsidian").util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<CR>"
        else
          return "gf"
        end
      end, { noremap = false, expr = true })
    end,
  },
  { "ThePrimeagen/vim-be-good" },
  { "nyoom-engineering/oxocarbon.nvim" },
  {
    "nvim-orgmode/orgmode",
    ft = { 'org' },
    config = function()
      require('orgmode').setup {}
    end,
  },
  {
    "supermaven-inc/supermaven-nvim",
    event = "VeryLazy",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
      -- this is an example, not a default. Please see the readme for more configuration options
      vim.g.molten_output_win_max_height = 12
    end,
    dependencies = {
      "3rd/image.nvim"
    }
  },
  --     {"folke/tokyonight.nvim"},
  --     {
  --       "folke/trouble.nvim",
  --       cmd = "TroubleToggle",
  --     },
  -- {
  --   "David-Kunz/gen.nvim",
  --   opts = {
  --     model = "codegemma",    -- The default model to use.
  --     display_mode = "float", -- The display mode. Can be "float" or "split".
  --     show_prompt = false,    -- Shows the Prompt submitted to Ollama.
  --     show_model = false,     -- Displays which model you are using at the beginning of your chat session.
  --     no_auto_close = false,  -- Never closes the window automatically.
  --     init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
  --     -- Function to initialize Ollama
  --     command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
  --     -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
  --     -- This can also be a lua function returning a command string, with options as the input parameter.
  --     -- The executed command must return a JSON object with { response, context }
  --     -- (context property is optional).
  --     -- list_models = '<omitted lua function>',   -- Retrieves a list of model names
  --     debug = false -- Prints errors and the command which is run.
  --   }
  -- },
}

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"
vim.opt.background = "dark" -- set this to dark or light
lvim.colorscheme = "oxocarbon"

-- -- GitHub Copilot settings
-- vim.g.copilot_no_tab_map = true
-- vim.g.copilot_assume_mapped = true
-- -- vim.g.copilot_node_command = "/home/mble/.local/share/nvm/v16.15.1/bin/node"
-- vim.api.nvim_set_keymap("i", "<A-t>", 'copilot#Accept("")', { expr = true, silent = true })

local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
  strategy = {
    [''] = rainbow_delimiters.strategy['global'],
    vim = rainbow_delimiters.strategy['local'],
  },
  query = {
    [''] = 'rainbow-delimiters',
    lua = 'rainbow-blocks',
  },
  highlight = {
    'RainbowDelimiterRed',
    'RainbowDelimiterYellow',
    'RainbowDelimiterBlue',
    'RainbowDelimiterOrange',
    'RainbowDelimiterGreen',
    'RainbowDelimiterViolet',
    'RainbowDelimiterCyan',
  },
}

-- Neovide settings
-- vim.opt.guifont = { "JetBrains Mono", ":h6" }

-- Editor settings
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
