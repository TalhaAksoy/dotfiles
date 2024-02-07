require("neo-tree").setup({
    source_selector = {
        winbar = true,
        statusline = false
    },
		opts = {
      filesystem = {
        window = {
          mappings = {
            ["L"] = "open_nofocus"
          },
        },
        commands = {
          open_nofocus = function(state)
            require("neo-tree.sources.filesystem.commands").open(state)
            vim.schedule(function()
              vim.cmd([[Neotree close]])
            end)
          end,
        },
      },
    },
})
