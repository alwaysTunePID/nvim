return {
  "stevearc/overseer.nvim",
  require("overseer").register_template({
    name = "build client",
    builder = function()
      return {
        cmd = { "ninja", "-C", "build/debug", "WizardClient" },
        components = { { "on_output_quickfix", open = true, open_height = 30 }, "default" },
      }
    end,
  }),
  require("overseer").register_template({
    name = "build server",
    builder = function()
      return {
        cmd = { "ninja", "-C", "build/debug", "WizardServer" },
        components = { { "on_output_quickfix", open = true, open_height = 30 }, "default" },
      }
    end,
  }),
}
