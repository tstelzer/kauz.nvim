local lush = require('lush');
local colors = require('colors').hsl;

local theme = lush(function(injected_functions)
    -- https://github.com/rktjmp/lush.nvim/issues/109
    local sym = injected_functions.sym

    return {
        Comment { fg = colors.gray11_warm },                                  -- any comment
        ColorColumn { bg = colors.concealed },                                -- used for the columns set with 'colorcolumn'
        Conceal { fg = colors.concealed },                                    -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor { fg = colors.fg, bg = colors.bg, gui = 'reverse' },           -- character under the cursor
        lCursor { Cursor },                                                   -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM { Cursor },                                                  -- like Cursor, but used when in IME mode |CursorIM|
        CursorLine { fg = 'NONE', bg = colors.bg.lighten(5) },                -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        CursorColumn { CursorLine },                                          -- Screen-column at the cursor, when 'cursorcolumn' is set.
        Directory { fg = colors.cyan_light },                                 -- directory names (and other special names in listings)
        DiffAdd { fg = 'NONE', bg = colors.green_dark, gui = 'nocombine' },   -- diff mode: Added line |diff.txt|
        DiffChange { fg = 'NONE', bg = colors.blue_dark, gui = 'nocombine' }, -- diff mode: Changed line |diff.txt|
        DiffDelete { fg = 'NONE', bg = colors.red_dark, gui = 'nocombine' },  -- diff mode: Deleted line |diff.txt|
        DiffText {},                                                          -- diff mode: Changed text within a changed line |diff.txt|
        -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { }, -- cursor in a focused terminal
        -- TermCursorNC { }, -- cursor in an unfocused terminal
        ErrorMsg { fg = colors.red, gui = 'bold' },             -- error messages on the command line
        VertSplit { fg = colors.concealed },                    -- the column separating vertically split windows
        Folded { bg = colors.cyan_dark, fg = colors.fg_light }, -- line used for closed folds
        -- FoldColumn   { }, -- 'foldcolumn'
        SignColumn { fg = 'NONE' },                             -- column where |signs| are displayed
        LineNr { fg = colors.concealed },                       -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { fg = colors.concealed, gui = 'bold' },   -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen { gui = 'bold' },                            -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator {fg = fg}, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg      { }, -- |more-prompt|
        Normal { fg = colors.fg, bg = 'NONE' },                              -- normal text
        NormalFloat { fg = Normal.fg, bg = colors.bg_cold },                 -- Normal text in floating windows.
        NormalNC { Normal },                                                 -- normal text in non-current windows
        Pmenu { fg = colors.fg_light, bg = colors.bg_light },                -- Popup menu: normal item.
        PmenuSel { fg = colors.black, bg = colors.highlight, gui = 'bold' }, -- Popup menu: selected item.
        -- PmenuSbar    { }, -- Popup menu: scrollbar.
        -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
        -- Question     { }, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        IncSearch { bg = colors.highlight, fg = colors.black, gui = 'bold' },    -- 'incsearch' highlighting, also used for the text replaced with ":s///c"
        Search { bg = colors.highlight_light, fg = colors.black, gui = 'NONE' }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        Substitute { bg = colors.yellow, fg = colors.black, gui = 'bold' },      -- |:substitute| replacement text highlighting
        -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad { fg = colors.red },                                            -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap { fg = colors.red_light },                                      -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal { fg = colors.red_light },                                    -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare { fg = colors.red_light },                                     -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine { bg = colors.gray14_cold },                                  -- status line of current window
        -- StatusLineNC {bg = gray14_cold}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine { StatusLine },                                                  -- tab pages line, not active tab page label
        TabLineFill { TabLine },                                                 -- tab pages line, where there are no labels
        TabLineSel { TabLine },                                                  -- tab pages line, active tab page label
        Title { fg = colors.fg_light, gui = 'bold' },                            -- titles for output from ":set all", ":autocmd" etc.
        Visual { bg = colors.blue_dark, fg = 'NONE', gui = 'NONE' },             -- Visual mode selection
        -- VisualNOS    {}, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg { fg = colors.yellow, gui = 'bold' },                         -- warning messages
        Whitespace { fg = colors.faded },                                        -- "nbsp", "space", "tab" and "trail" in 'listchars'
        NonText { Conceal },                                                  -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        WildMenu { PmenuSel },                                                   -- current match in 'wildmenu' completion

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant { Normal },                                               -- (preferred) any constant
        BuiltinConstant { fg = colors.magenta_light },
        String { fg = colors.green_light, bg = Normal.bg },                --   a string constant: "this is a string"
        Character { String },                                              --  a character constant: 'c', '\n'
        Number { fg = String.fg.rotate(50).saturate(20), gui = 'bold' },   --   a number constant: 234, 0xff
        Float { Number },                                                  --    a floating point constant: 2.3e10
        Boolean { fg = String.fg.rotate(-30).saturate(20), gui = 'bold' }, --  a boolean constant: TRUE, false

        Identifier { Normal },                                             -- (preferred) any variable name
        Function { Normal },                                               -- function name (also: methods for classes)

        Statement { fg = colors.faded },                                   -- (preferred) any statement
        -- Conditional    { }, --  if, then, else, endif, switch, etc.
        -- Repeat         { }, --   for, do, while, etc.
        -- Label          { }, --    case, default, etc.
        -- Operator       { }, -- "sizeof", "+", "*", etc.
        -- Keyword        {}, --  any other keyword
        -- Exception      { }, --  try, catch, throw

        PreProc { fg = colors.faded }, -- (preferred) generic Preprocessor
        -- Include        { }, --  preprocessor #include
        -- Define         { }, --   preprocessor #define
        -- Macro          { }, --    same as Define
        -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

        Type { fg = colors.blue }, -- (preferred) int, long, char, etc.
        -- StorageClass   { }, -- static, register, volatile, etc.
        -- Structure      { }, --  struct, union, enum, etc.
        -- Typedef        { }, --  A typedef

        Special { fg = colors.magenta },                   -- (preferred) any special symbol
        SpecialChar { fg = colors.magenta, gui = 'bold' }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        Delimiter { Whitespace },                          --  character that needs attention
        -- SpecialComment { }, -- special things inside a comment
        -- Debug          { }, --    debugging statements

        -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
        -- Bold       { gui = "bold" },
        -- Italic     { gui = "italic" },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error { ErrorMsg },
        Warning { WarningMsg },
        Todo { fg = colors.fg_light, gui = 'bold' },

        diffLine { Normal },
        diffAdded { fg = 'NONE', bg = colors.green_dark },
        diffRemoved { fg = 'NONE', bg = colors.red_dark },
        diffChanged { fg = 'NONE', bg = colors.blue_dark },

        gitcommitSummary { Normal },
        gitcommitDiff { DiffText },

        GitSignsAdd { fg = colors.green },
        GitSignsAddNr { GitSignsAdd },
        GitSignsAddLn { diffAdded },

        GitSignsChange { fg = colors.blue },
        GitSignsChangeNr { GitSignsChange },
        GitSignsChangeLn { diffChanged },

        GitSignsDelete { fg = colors.red },
        GitSignsDeleteNr { GitSignsDelete },
        GitSignsDeleteLn { diffRemoved },

        LspReferenceText { bg = colors.cyan, fg = colors.black },                                      -- used for highlighting "text" references
        LspReferenceRead { LspReferenceText },                                                         -- used for highlighting "read" references
        LspReferenceWrite { LspReferenceText },                                                        -- used for highlighting "write" references

        LspDiagnosticsDefaultError { fg = colors.yellow, bg = colors.red_dark },                       -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        DiagnosticUnderlineError { LspDiagnosticsDefaultError },
        LspDiagnosticsDefaultWarning { fg = colors.yellow, gui = 'undercurl' },                        -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultInformation { fg = colors.cyan_light.desaturate(30), gui = 'underline' }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultHint { fg = colors.yellow, gui = 'underline' },                           -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

        LspDiagnosticsVirtualTextError { LspDiagnosticsDefaultError },                                 -- Used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning { LspDiagnosticsDefaultWarning },                             -- Used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation { LspDiagnosticsDefaultInformation },                     -- Used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint { LspDiagnosticsDefaultHint },                                   -- Used for "Hint" diagnostic virtual text

        LspDiagnosticsUnderlineError { LspDiagnosticsDefaultError },                                   -- Used to underline "Error" diagnostics
        LspDiagnosticsUnderlineWarning { LspDiagnosticsDefaultWarning },                               -- Used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineInformation { LspDiagnosticsDefaultInformation },                       -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint { LspDiagnosticsDefaultHint },                                     -- Used to underline "Hint" diagnostics

        LspDiagnosticsFloatingError { LspDiagnosticsDefaultError },                                    -- Used to color "Error" diagnostic messages in diagnostics float
        LspDiagnosticsFloatingWarning { LspDiagnosticsDefaultWarning },                                -- Used to color "Warning" diagnostic messages in diagnostics float
        LspDiagnosticsFloatingInformation { LspDiagnosticsDefaultInformation },                        -- Used to color "Information" diagnostic messages in diagnostics float
        LspDiagnosticsFloatingHint { LspDiagnosticsDefaultHint },                                      -- Used to color "Hint" diagnostic messages in diagnostics float

        LspDiagnosticsSignError { fg = colors.red_light, gui = 'NONE' },                               -- Used for "Error" signs in sign column
        LspDiagnosticsSignWarning { fg = LspDiagnosticsDefaultWarning.fg, gui = 'NONE' },              -- Used for "Warning" signs in sign column
        LspDiagnosticsSignInformation { fg = LspDiagnosticsDefaultInformation.fg, gui = 'NONE' },      -- Used for "Information" signs in sign column
        LspDiagnosticsSignHint { fg = LspDiagnosticsDefaultHint.fg, gui = 'NONE' },                    -- Used for "Hint" signs in sign column

        DiagnosticUnnecessary { gui = 'italic' },                                                      -- Used for "Hint" signs in sign column

        BreakPointSet { fg = colors.cyan },
        BreakPointActive { fg = colors.green },

        -- old treesitter highlights, here for backwards compatibility
        -- TSConstructor { Normal },
        -- TSConstant { Constant },
        -- TSConstBuiltin { Special },
        -- TSFuncBuiltin { Whitespace },
        -- TSInclude { Statement },
        -- TSNote { Todo },
        -- TSDanger { WarningMsg },
        -- TSProperty { Normal },
        -- TSPunctSpecial { Whitespace },
        -- TSStringEscape { SpecialChar },
        -- TSVariable { Normal },
        -- TSVariableBuiltin { Normal },

        -- typescriptNull { Normal },

        -- CopilotAnnotation { Warning },
        -- CopilotSuggestion { Warning },

        -- treesitter highlights
        sym('@include') { PreProc },
        sym('@preproc') { PreProc },
        sym('@variable') { Normal },
        sym('@constructor') { Normal },
        sym('@property') { Normal },
        sym('@text.note') { Todo },
        sym('@text.warning') { Todo },
        sym('@text.danger') { Warning },
        sym('@type.builtin') { Type },
        sym('@type.qualifier') { Statement },
        sym('@constant.builtin') { BuiltinConstant },
        sym('@variable.builtin') { BuiltinConstant },
        sym('@function.builtin') { Normal },
        sym('@tag') { fg = colors.blue_light },

        sym('@text.diff.add.diff') { diffAdded },
        sym('@text.diff.delete.diff') { diffRemoved },

        sym('@type.sql') { Normal },
        sym('@type.builtin.sql') { Normal },

        -- lsp semantic tokens appear to be worse than treesitter tokens, so I'm disabling them
        sym('@lsp.type') {},

        -- @lsp.type.class         Structure
        -- @lsp.type.decorator     Function
        -- @lsp.type.enum          Structure
        -- @lsp.type.enumMember    Constant
        -- @lsp.type.function      Function
        -- @lsp.type.interface     Structure
        -- @lsp.type.macro         Macro
        -- @lsp.type.method        Function
        -- @lsp.type.namespace     Structure
        -- @lsp.type.parameter     Identifier
        -- @lsp.type.property      Identifier
        -- @lsp.type.struct        Structure
        -- @lsp.type.type          Type
        -- @lsp.type.typeParameter TypeDef

        TelescopeSelection { Title },                                    -- selected item
        TelescopeSelectionCaret { fg = colors.highlight, gui = 'bold' }, -- selection caret
        TelescopeMultiSelection {},                                      -- multisections
        TelescopeNormal { NormalFloat },                                 -- floating windows created by telescope.

        -- Border highlight groups.
        TelescopeBorder { NormalFloat },
        TelescopePromptBorder { NormalFloat },
        TelescopeResultsBorder { NormalFloat },
        TelescopePreviewBorder { NormalFloat },
        TelescopeMatching { fg = colors.highlight },                   -- Used for highlighting characters that you match.
        TelescopePromptPrefix { fg = colors.highlight, gui = 'bold' }, -- Used for the prompt prefix

        IncSearchCursor { IncSearch },

        DirvishPathTail { Directory },
        DirvishPathHead { Comment },

        WhichKey { fg = colors.highlight },
        WhichKeyGroup {},
        WhichKeySeperator { fg = colors.faded, gui = 'NONE' },
        WhichKeyDesc {},
        WhichKeyFloat {},
        WhichKeyValue {},

        ExchangeRegion { Substitute },

        HopNextKey { fg = colors.highlight, gui = 'bold' },
        HopNextKey1 { fg = colors.highlight },
        HopNextKey2 { fg = colors.cyan },
        HopUnmatched { Whitespace },

        Sneak { Search },
        SneakLabel { IncSearch },
        SneakScope { Title },

        -- LeapMatch {},
        -- LeapLabel {},
        -- LeapBackdrop {},

        TSRainbowNormal { Whitespace },
        TSRainbowRed { fg = colors.red_light },
        TSRainbowGreen { fg = colors.green },
        TSRainbowYellow { fg = colors.yellow_light },
        TSRainbowCyan { fg = colors.cyan },
        TSRainbowViolet { fg = colors.magenta_light },
        TSRainbowBlue { fg = colors.blue },
        TSRainbowOrange { fg = colors.orange },

        NotificationInfo { Normal },
        NotificationError { Error },
        NotificationWarning { Warning },

        Twilight { fg = colors.faded },
        SnacksDim { Conceal },
        BlinkCmpGhost { Conceal },
    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
