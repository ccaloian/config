return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  build = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    interactions = {
      chat       = { adapter = { name = "anthropic", model = "claude-sonnet-4-20250514" } },
      inline     = { adapter = { name = "anthropic", model = "claude-sonnet-4-20250514" } },
      cmd        = { adapter = { name = "anthropic", model = "claude-sonnet-4-20250514" } },
      background = { adapter = { name = "anthropic", model = "claude-sonnet-4-20250514" } },
    },
    opts = {
      log_level = "DEBUG",
    },
  },
}
