return {
  "L3MON4D3/LuaSnip",
  lazy = true,
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  config = function()
    require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/lua/snippets" } })
  end,
}
