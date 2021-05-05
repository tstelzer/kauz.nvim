--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local white         = hsl('#ffffff')
local fg            = hsl('#dcdcdc')
local fg_light      = hsl('#fefefe')
local fg_dark       = hsl('#cccccc')
local gray          = hsl('#808080')
local bg            = hsl('#1e1e1e')
local bg_lighter    = bg.lighten(25)
local bg_light      = bg.lighten(5)
local bg_dark       = bg.darken(15)
local bg_darker     = bg.darken(40)
local black         = hsl('#000000')

local cyan          = hsl('#00F4FF')
local cyan_dark     = cyan.darken(50)
local cyan_light    = cyan.lighten(40)
local yellow        = cyan.rotate(-120).desaturate(30)
local yellow_dark   = yellow.darken(50)
local yellow_light  = yellow.lighten(40)
local magenta       = cyan.rotate(120)
local magenta_dark  = magenta.darken(50)
local magenta_light = magenta.lighten(40)

local orange        = hsl('#FF7600')

local red           = hsl('#FB0101')
local red_light     = red.lighten(20)
local red_desat     = red.desaturate(60)
local red_dark      = hsl('#621d29')
local green         = hsl('#6A9955')
local green_dark    = green.darken(50)
local green_light   = green.lighten(30).saturate(5)
local blue          = hsl('#264f78')
local blue_dark     = blue.darken(50)
local blue_light    = blue.lighten(40)

local gray_warm     = orange.darken(15).desaturate(85)
local gray_cold     = blue_light.darken(34).desaturate(70)

local highlight      = orange.desaturate(50).lighten(20)
local dash          = gray
local dash_light    = dash.lighten(40)
local fade          = dash.darken(50)

local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      {fg = gray_warm}, -- any comment
    ColorColumn  {bg = fade}, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       {fg = fg, bg = bg, gui = 'reverse'}, -- character under the cursor
    lCursor      {Cursor}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     {Cursor}, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine   {fg = 'NONE', bg = bg.lighten(5)}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn {CursorLine}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      {fg = 'NONE', bg = green_dark, gui = 'nocombine'}, -- diff mode: Added line |diff.txt|
    DiffChange   {fg = 'NONE', bg = blue_dark, gui = 'nocombine'}, -- diff mode: Changed line |diff.txt|
    DiffDelete   {fg = 'NONE', bg = red_dark, gui = 'nocombine'}, -- diff mode: Deleted line |diff.txt|
    DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     {fg = red, gui = 'bold'}, -- error messages on the command line
    VertSplit    {fg = dash}, -- the column separating vertically split windows
    Folded       {bg = cyan_dark, fg = fg_light}, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   {fg = 'NONE'}, -- column where |signs| are displayed
    LineNr       {fg = fade}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr {fg = dash, gui = 'bold'}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   {fg = cyan}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator {fg = fg}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    Normal       {fg = fg, bg = 'NONE'}, -- normal text
    NormalFloat  {fg = Normal.fg, bg = bg_darker}, -- Normal text in floating windows.
    NormalNC     {fg = Normal.fg, bg = bg_dark}, -- normal text in non-current windows
    Pmenu        {fg = fg_light, bg = bg_light}, -- Popup menu: normal item.
    PmenuSel     {fg = magenta, bg = Pmenu.bg}, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    IncSearch    {bg = orange, fg = black, gui = 'bold'}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Search       {bg = orange, fg = black, gui = 'NONE'}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    Substitute   {bg = yellow, fg = black, gui = 'bold'}, -- |:substitute| replacement text highlighting
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     {fg = red_light}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     {fg = cyan}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   {fg = cyan_light}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    {fg = magenta_light}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   {bg = bg_light}, -- status line of current window
    StatusLineNC {bg = bg_light}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      {fg = Normal.fg, bg = bg_light}, -- tab pages line, not active tab page label
    TabLineFill  {TabLine}, -- tab pages line, where there are no labels
    TabLineSel   {TabLine}, -- tab pages line, active tab page label
    Title        {fg = fg_light, gui = 'bold'}, -- titles for output from ":set all", ":autocmd" etc.
    Visual       {bg = blue, fg = 'NONE'}, -- Visual mode selection
    -- VisualNOS    {}, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   {fg = yellow, gui = 'bold'}, -- warning messages
    Whitespace   {fg = fade}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    NonText      {Whitespace}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    WildMenu     {PmenuSel}, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       {}, -- (preferred) any constant
    String         {fg = green_light, bg = Normal.bg}, --   a string constant: "this is a string"
    Character      {String}, --  a character constant: 'c', '\n'
    Number         {fg = String.fg.rotate(50), gui = 'bold'}, --   a number constant: 234, 0xff
    Float          {Number}, --    a floating point constant: 2.3e10
    Boolean        {fg = String.fg.rotate(-50), gui = 'bold'}, --  a boolean constant: TRUE, false

    Identifier     {Normal}, -- (preferred) any variable name
    -- Function       {}, -- function name (also: methods for classes)

    Statement      {fg = dash}, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        {}, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        {Normal}, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           {fg = blue_light}, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        {}, -- (preferred) any special symbol
    SpecialChar    {fg = magenta_light.desaturate(70)}, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    Delimiter      {fg = dash}, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          {ErrorMsg}, -- (preferred) any erroneous construct
    Todo           {fg = fg_light, gui = 'bold'}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    diffLine {Normal},
    diffAdded {fg = 'NONE', bg = green_dark},
    diffRemoved {fg = 'NONE', bg = red_dark},
    diffChanged {fg = 'NONE', bg = blue_dark},

    gitCommitDiff {DiffText},

    GitSignsAdd {fg = green},
    GitSignsAddNr {GitSignsAdd},
    GitSignsAddLn {diffAdded},

    GitSignsChange {fg = blue_light},
    GitSignsChangeNr {GitSignsChange},
    GitSignsChangeLn {diffChanged},

    GitSignsDelete {fg = red_desat},
    GitSignsDeleteNr {GitSignsDelete},
    GitSignsDeleteLn {diffRemoved},

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText                     {bg = cyan_light, fg = black}, -- used for highlighting "text" references
    LspReferenceRead                     {LspReferenceText}, -- used for highlighting "read" references
    LspReferenceWrite                    {LspReferenceText}, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           {fg = red_desat, gui = 'underline'}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              {fg = red}, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            {fg = yellow}, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        {fg = blue_light}, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               {Normal}, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            {Statement};    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            {};    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             {};    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    TSProperty           {Normal};    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       {};    -- For brackets and parens.
    -- TSPunctSpecial       {};    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    TSVariable           {Normal};    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    {Normal};    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
