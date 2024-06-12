return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      styles = {
        keywords = { "bold" },
        functions = { "italic" },
      },
      integrations = {
        alpha = false,
        neogit = false,
        nvimtree = false,
        illuminate = false,
        treesitter_context = false,
        rainbow_delimiters = false,
        dropbar = { enabled = false },
        mason = true,
        noice = true,
        notify = true,
        neotest = true,
        which_key = true,
        telescope = { style = nil },
      },
      custom_highlights = function(colors)
        return {
          PanelHeading = {
            fg = colors.lavender,
            bg = colors.none,
            style = { "bold", "italic" },
          },
          TreesitterContextLineNumber = { fg = colors.rosewater },
          LazyH1 = {
            bg = colors.none,
            fg = colors.lavender,
            style = { "bold" },
          },
          LazyButton = {
            bg = colors.none,
            fg = colors.overlay0,
          },
          LazyButtonActive = {
            bg = colors.none,
            fg = colors.lavender,
            style = { "bold" },
          },
          LazySpecial = { fg = colors.green },
          CmpItemMenu = { fg = colors.subtext1 },
          MiniIndentscopeSymbol = { fg = colors.overlay0 },
          FloatBorder = {
            fg = colors.blue,
            bg = colors.none,
          },
          FloatTitle = {
            fg = colors.lavender,
            bg = colors.none,
          },
        }
      end,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
