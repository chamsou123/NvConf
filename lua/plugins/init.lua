return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
   },
  --
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp" , "prettier",  "pyright", "typescript-language-server",
        "prettier", "black", "isort",
      },
  	},
   },
   {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css", "python", "javascript", "typescript", "bash", "cpp", "go"
   		},
   	},
   },
  {
    "David-Kunz/gen.nvim",
    lazy = false,
    config = function()
      require "configs.gen"
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
      "nvim-telescope/telescope.nvim",
    },
    config = true
  },
  {
  "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
   },
    config = function()
      require "configs.noice"
    end
  }
}
