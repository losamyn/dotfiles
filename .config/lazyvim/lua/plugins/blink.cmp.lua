return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        list = {
          selection = {
            preselect = function(ctx)
              return not require("blink.cmp").snippet_active({ direction = 1 })
            end,
          },
        },
        ghost_text = { enabled = false },
      },
      keymap = { preset = "super-tab" },
    },
  },
}
