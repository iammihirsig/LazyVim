-- Ensure true colors are enabled in Neovim
vim.opt.termguicolors = true

return {
  -- Plugin for highlighting colors
  "brenoprata10/nvim-highlight-colors",
  config = function()
    -- Initialize the nvim-highlight-colors plugin
    require("nvim-highlight-colors").setup({
      render = "background", -- or 'foreground'
      enable_named_colors = true,
      enable_tailwind = true,
    })

    -- Set up nvim-cmp with nvim-highlight-colors integration
    require("cmp").setup({
      -- Other nvim-cmp configurations can go here
      formatting = {
        format = function(entry, item)
          -- Apply nvim-highlight-colors formatting
          local color_item = require("nvim-highlight-colors").format(entry, item)
          -- Customize the appearance to avoid warnings
          return color_item
        end,
        fields = { "abbr", "kind", "menu" }, -- Required fields
        expandable_indicator = true, -- Required field
      },
    })
  end,
}
