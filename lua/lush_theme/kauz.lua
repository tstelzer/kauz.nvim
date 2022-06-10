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

-- color palette

local white = hsl('#ffffff')

local gray1  = hsl('#f0f0f0')
local gray2  = hsl('#e1e1e1')
local gray3  = hsl('#d2d2d2')
local gray4  = hsl('#c3c3c3')
local gray5  = hsl('#b4b4b4')
local gray6  = hsl('#a5a5a5')
local gray7  = hsl('#969696')
local gray8  = hsl('#878787')
local gray9  = hsl('#787878')
local gray10 = hsl('#696969')
local gray11 = hsl('#5a5a5a')
local gray12 = hsl('#4b4b4b')
local gray13 = hsl('#3c3c3c')
local gray14 = hsl('#2d2d2d')
local gray15 = hsl('#1e1e1e')

local black = hsl('#000000')

local gray8_warm  = hsl('#93867b')
local gray11_warm = hsl('#67584c')
local gray14_warm = hsl('#322e29')
local gray14_cold = hsl('#242828')

local cyan_dark     = hsl('#004e52')
local cyan          = hsl('#00F4FF') -- hue: 183
local cyan_light    = hsl('#adfbff')

local yellow_dark   = hsl('#756200')
local yellow        = hsl('#ffd500')
local yellow_light  = hsl('#ffec8f')

local magenta_dark  = hsl('#70003e')
local magenta       = hsl('#ff008b')
local magenta_light = hsl('#ff9ed3')

local orange_dark   = hsl('#6b3200')
local orange        = hsl('#FF7600') -- hue: 28
local orange_light  = hsl('#ffb87a')

local red_light     = hsl('#fe7676')
local red           = hsl('#df2020')
local red_dark      = hsl('#560000')

local green_dark    = hsl('#2e4224')
local green         = hsl('#73a659')
local green_light   = hsl('#bbe9a5')

local blue_dark     = hsl('#0d365e')
local blue          = hsl('#407fbf')
local blue_light    = hsl('#b3cce6')

-- functional colors
local fg_light      = white
local fg            = gray1
local bg_light      = gray13
local bg            = gray14
local bg_dark       = gray15
local bg_cold       = gray14_cold

local highlight       = orange
local highlight_light = orange_light
local faded           = gray9
local concealed       = gray13

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

    Comment      {fg = gray11_warm}, -- any comment
    ColorColumn  {bg = concealed}, -- used for the columns set with 'colorcolumn'
    Conceal      {fg = concealed}, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       {fg = fg, bg = bg, gui = 'reverse'}, -- character under the cursor
    lCursor      {Cursor}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     {Cursor}, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine   {fg = 'NONE', bg = bg.lighten(5)}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn {CursorLine}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory    {fg = cyan_light}, -- directory names (and other special names in listings)
    DiffAdd      {fg = 'NONE', bg = green_dark, gui = 'nocombine'}, -- diff mode: Added line |diff.txt|
    DiffChange   {fg = 'NONE', bg = blue_dark, gui = 'nocombine'}, -- diff mode: Changed line |diff.txt|
    DiffDelete   {fg = 'NONE', bg = red_dark, gui = 'nocombine'}, -- diff mode: Deleted line |diff.txt|
    DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     {fg = red, gui = 'bold'}, -- error messages on the command line
    VertSplit    {fg = concealed}, -- the column separating vertically split windows
    Folded       {bg = cyan_dark, fg = fg_light}, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   {fg = 'NONE'}, -- column where |signs| are displayed
    LineNr       {fg = concealed}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr {fg = concealed, gui = 'bold'}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   {fg = highlight}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator {fg = fg}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    Normal       {fg = fg, bg = 'NONE'}, -- normal text
    NormalFloat  {fg = Normal.fg, bg = bg_cold}, -- Normal text in floating windows.
    NormalNC     {Normal}, -- normal text in non-current windows
    Pmenu        {fg = fg_light, bg = bg_light}, -- Popup menu: normal item.
    PmenuSel     {fg = black, bg = highlight, gui = 'bold'}, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    IncSearch    {bg = highlight, fg = black, gui = 'bold'}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Search       {bg = highlight_light, fg = black, gui = 'NONE'}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    Substitute   {bg = yellow, fg = black, gui = 'bold'}, -- |:substitute| replacement text highlighting
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     {fg = red}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     {fg = red_light}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   {fg = red_light}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    {fg = red_light}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   {bg = gray14_cold}, -- status line of current window
    -- StatusLineNC {bg = gray14_cold}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      {StatusLine}, -- tab pages line, not active tab page label
    TabLineFill  {TabLine}, -- tab pages line, where there are no labels
    TabLineSel   {TabLine}, -- tab pages line, active tab page label
    Title        {fg = fg_light, gui = 'bold'}, -- titles for output from ":set all", ":autocmd" etc.
    Visual       {bg = blue_dark, fg = 'NONE', gui = 'NONE'}, -- Visual mode selection
    -- VisualNOS    {}, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   {fg = yellow, gui = 'bold'}, -- warning messages
    Whitespace   {fg = faded}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    NonText      {Whitespace}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    WildMenu     {PmenuSel}, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       {Normal}, -- (preferred) any constant
    String         {fg = green_light, bg = Normal.bg}, --   a string constant: "this is a string"
    Character      {String}, --  a character constant: 'c', '\n'
    Number         {fg = String.fg.rotate(50).saturate(20), gui = 'bold'}, --   a number constant: 234, 0xff
    Float          {Number}, --    a floating point constant: 2.3e10
    Boolean        {fg = String.fg.rotate(-30).saturate(20), gui = 'bold'}, --  a boolean constant: TRUE, false

    Identifier     {Normal}, -- (preferred) any variable name
    -- Function       {}, -- function name (also: methods for classes)

    Statement      {fg = faded}, -- (preferred) any statement
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

    Type           {fg = blue}, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        {fg = magenta}, -- (preferred) any special symbol
    SpecialChar    {fg = magenta, gui = 'bold'}, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    Delimiter      {Whitespace}, --  character that needs attention
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

    gitcommitSummary {Normal},
    gitcommitDiff {DiffText},

    GitSignsAdd {fg = green},
    GitSignsAddNr {GitSignsAdd},
    GitSignsAddLn {diffAdded},

    GitSignsChange {fg = blue},
    GitSignsChangeNr {GitSignsChange},
    GitSignsChangeLn {diffChanged},

    GitSignsDelete {fg = red},
    GitSignsDeleteNr {GitSignsDelete},
    GitSignsDeleteLn {diffRemoved},

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText                     {bg = cyan, fg = black}, -- used for highlighting "text" references
    LspReferenceRead                     {LspReferenceText}, -- used for highlighting "read" references
    LspReferenceWrite                    {LspReferenceText}, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           {fg = yellow, bg = red_dark}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         {fg = yellow, gui = 'undercurl'}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     {fg = cyan_light.desaturate(30), gui = 'underline'}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            {fg = 'NONE', gui = 'underline'}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       {LspDiagnosticsDefaultError}, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     {LspDiagnosticsDefaultWarning}, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation {LspDiagnosticsDefaultInformation}, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        {LspDiagnosticsDefaultHint}, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         {LspDiagnosticsDefaultError}, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       {LspDiagnosticsDefaultWarning}, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   {LspDiagnosticsDefaultInformation}, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          {LspDiagnosticsDefaultHint}, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          {LspDiagnosticsDefaultError}, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        {LspDiagnosticsDefaultWarning}, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    {LspDiagnosticsDefaultInformation}, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           {LspDiagnosticsDefaultHint}, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              {fg = red_light, gui = 'NONE'}, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            {fg = LspDiagnosticsDefaultWarning.fg, gui = 'NONE'}, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        {fg = LspDiagnosticsDefaultInformation.fg, gui = 'NONE'}, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               {fg = LspDiagnosticsDefaultHint.fg, gui = 'NONE'}, -- Used for "Hint" signs in sign column

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
    -- NOTE: this apparently includes namespaces
    TSConstructor        {Normal};    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    TSConstant           {Constant};    -- For constants
    TSConstBuiltin       {Special};    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    TSFuncBuiltin        {Whitespace};    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            {Statement};    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            {};    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             {};    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    TSNote {Todo};
    TSDanger {WarningMsg};
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    TSProperty           {Normal};    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       {};    -- For brackets and parens.
    TSPunctSpecial       {Whitespace};    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    TSStringEscape       {SpecialChar};    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        {Type};    -- For builtin types.
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

    TelescopeSelection      {Title}; -- selected item
    TelescopeSelectionCaret {fg = highlight, gui = 'bold'}; -- selection caret
    TelescopeMultiSelection {}; -- multisections
    TelescopeNormal         {NormalFloat}; -- floating windows created by telescope.

    -- Border highlight groups.
    TelescopeBorder         {NormalFloat};
    TelescopePromptBorder   {NormalFloat};
    TelescopeResultsBorder  {NormalFloat};
    TelescopePreviewBorder  {NormalFloat};

    -- Used for highlighting characters that you match.
    TelescopeMatching       {fg = highlight};

    -- Used for the prompt prefix
    TelescopePromptPrefix   {fg = highlight, gui = 'bold'};

    Sneak {Search};
    SneakLabel {IncSearch};
    SneakScope {Title};

    IncSearchCursor {IncSearch};

    DirvishPathTail {Directory};
    DirvishPathHead {Comment};

    WhichKey {fg = highlight};
    WhichKeyGroup {};
    WhichKeySeperator {fg = faded, gui = 'NONE'};
    WhichKeyDesc {};
    WhichKeyFloat {};
    WhichKeyValue {};

    ExchangeRegion {Substitute};

    HopNextKey {fg = highlight, gui = 'bold'};
    HopNextKey1 {fg = highlight};
    HopNextKey2 {fg = cyan};
    HopUnmatched {Whitespace};

    -- rainbowParensShell16 {};
    -- rainbowParensShell15 {};
    -- rainbowParensShell14 {};
    -- rainbowParensShell13 {};
    -- rainbowParensShell12 {};
    -- rainbowParensShell11 {};
    -- rainbowParensShell10 {};
    -- rainbowParensShell9 {};
    -- rainbowParensShell8 {};
    -- rainbowParensShell7 {};
    -- rainbowParensShell6 {};
    -- rainbowParensShell5 {};
    -- rainbowParensShell4 {fg = magenta};
    -- rainbowParensShell3 {fg = cyan};
    -- rainbowParensShell2 {fg = red};
    -- rainbowParensShell1 {Whitespace};

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
