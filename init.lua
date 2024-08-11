require('options')
require('keymaps')
require('plugins')
require('colorscheme')
require('lsp')
require('nvim-cmp')
require("catppuccin").setup({
    -- flavour = "mocha", -- latte, frappe, macchiato, mocha
    -- flavour = "auto" -- will respect terminal's background
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
        functions = {maroon}
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- Comment		any comment
-- Constant	any constant
-- String		a string constant: "this is a string"
-- Character	a character constant: 'c', '\n'
-- Number		a number constant: 234, 0xff
-- Boolean		a boolean constant: TRUE, false
-- Float		a floating point constant: 2.3e10
-- Identifier	any variable name
-- Function	function name (also: methods for classes)
-- Statement	any statement
-- Conditional	if, then, else, endif, switch, etc.
-- Repeat		for, do, while, etc.
-- Label		case, default, etc.
-- Operator	"sizeof", "+", "*", etc.
-- Keyword		any other keyword
-- Exception	try, catch, throw
-- PreProc		generic Preprocessor
-- Include		preprocessor #include
-- Define		preprocessor #define
-- Macro		same as Define
-- PreCondit	preprocessor #if, #else, #endif, etc.
-- Type		int, long, char, etc.
-- StorageClass	static, register, volatile, etc.
-- Structure	struct, union, enum, etc.
-- Typedef   	a typedef
-- Special		any special symbol
-- SpecialChar	special character in a constant
-- Tag		you can use CTRL-] on this
-- Delimiter	character that needs attention
-- SpecialComment	special things inside a comment
-- Debug		debugging statements
-- Underlined	text that stands out, HTML links
-- Ignore		left blank, hidden  hl-Ignore
-- Error		any erroneous construct
-- Todo		anything that needs extra attention; mostly the
-- 		keywords TODO FIXME and XXX
-- Added		added line in a diff
-- Changed		changed line in a diff
-- Removed		removed line in a diff

-- optionally enable 24-bit colour

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
