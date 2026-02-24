require("everforest").setup({
    background = "hard",
    transparent_background_level = 0,
    italics = true,
    disable_italic_comments = false,
    inlay_hints_background = "dimmed",
    ui_contrast = "none", --high or low
	diagnostic_text_highlight = true,
	diagnostic_line_highlight = true,
	spell_foreground = true,
    on_highlights = function(hl, palette)
      hl.DiagnosticError = { fg = palette.none, bg = palette.none, sp = palette.red }
      hl.DiagnosticWarn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
      hl.DiagnosticInfo = { fg = palette.none, bg = palette.none, sp = palette.blue }
      hl.DiagnosticHint = { fg = palette.none, bg = palette.none, sp = palette.green }
    end,
    on_highlights = function(hl, palette)
      -- The default highlights for TSBoolean is linked to `Purple` which is fg
      -- purple and bg none. If we want to just add a bold style to the existing,
      -- we need to have the existing *and* the bold style. (We could link to
      -- `PurpleBold` here otherwise.)
      hl.TSBoolean = { fg = palette.purple, bg = palette.none, bold = true }
    end,
  })

require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

-- if you want to get rid of toggling and just set one scheme, you can set here
-- local colorscheme = "catppuccin"
-- vim.cmd('silent! colorscheme catppuccin')
