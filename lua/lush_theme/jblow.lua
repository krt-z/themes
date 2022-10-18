--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb, 88  ,dP                         IP'`Yb
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

local lush = require("lush")
local hsl = lush.hsl

local bg = hsl(178, 70, 9)
local fg = hsl(37, 18, 64)
-- local string = hsl(169, 46, 55)
local string = hsl(169, 46, 55)
local blue = hsl("#EDFFFF")
local cursor_line = bg.lighten(2)
local select = hsl("#EEEC9E")
local comment = hsl(118, 30, 56)
local white = hsl(0, 0, 78)
local type = hsl(140, 32, 68)
local constant = string.lighten(44)

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

        Comment({ fg = comment }), -- any comment
        -- ColorColumn  { }, -- used for the columns set with 'colorcolumn'
        -- Conceal      { }, -- placeholder characters substituted for concealed fg (see 'conceallevel')
        -- Cursor       { }, -- character under the cursor
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn({}), -- Screen-column at the cursor, when 'cursorcolumn' is set.c
        CursorLine({ bg = cursor_line }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory({ fg = fg }), -- directory names (and other special names in listings)
        DiffAdd {}, -- diff mode: Added line |diff.txt|
        DiffChange {}, -- diff mode: Changed line |diff.txt|
        -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
        -- Difffg     { }, -- diff mode: Changed fg within a changed line |diff.txt|
        -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-Nonfg|.
        -- TermCursor   { }, -- cursor in a focused terminal
        -- TermCursorNC { }, -- cursor in an unfocused terminal
        -- ErrorMsg     { }, -- error messages on the command line
        VertSplit({}), -- the column separating vertically split windows
        -- Folded       { }, -- line used for closed folds
        -- FoldColumn   { }, -- 'foldcolumn'
        SignColumn({ bg = bg.lighten(3) }), -- column where |signs| are displayed
        IncSearch({ bg = blue }), -- 'incsearch' highlighting; also used for the fg replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement fg highlighting
        -- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen({ bg = cursor_line.darken(15) }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg      { }, -- |more-prompt|
        Nonfg({ Comment }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the fg (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal({ bg = bg, fg = fg }), -- normal fg
        -- NormalFloat  { }, -- Normal fg in floating windows.
        -- NormalNC     { }, -- normal fg in non-current windows
        Pmenu({ fg = fg, bg = bg }), -- Popup menu: normal item.
        PmenuSel({ fg = string }), -- Popup menu: selected item.
        -- PmenuSbar({}), -- Popup menu: scrollbar.
        -- PmenuThumb({}), -- Popup menu: Thumb of the scrollbar.
        -- Question({}), -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine({}), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search({ bg = blue }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        -- SpecialKey({}), -- Unprintable characters: fg displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad({}), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap({}), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal({}), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare({}), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine({ fg = bg, bg = fg }), -- status line of current window
        StatusLineNC({ fg = bg.darken(10), bg = fg.darken(10) }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine({}), -- tab pages line, not active tab page label
        TabLineFill({}), -- tab pages line, where there are no labels
        TabLineSel({}), -- tab pages line, active tab page label
        Title({}), -- titles for output from ":set all", ":autocmd" etc.
        -- Visual       { bg=cursor_line.darken(5), fg=fg}, -- Visual mode selection
        Visual({ bg = bg.lighten(5), fg = fg.darken(5) }), -- Visual mode selection
        VisualNOS({}), -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg({}), -- warning messages
        Whitespace({}), -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu({}), -- current match in 'wildmenu' completion

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant({}), -- (preferred) any constant
        String({ fg = string }), --   a string constant: "this is a string"
        Character({}), --  a character constant: 'c', '\n'
        Number({ fg = constant }), --   a number constant: 234, 0xff
        Boolean(Number), --  a boolean constant: TRUE, false
        Float(Number), --    a floating point constant: 2.3e10

        Identifier({}), -- (preferred) any variable name
        -- Function({ fg = hsl(0,0,47) }), -- function name (also: methods for classes)

        Statement({}), -- (preferred) any statement
        Conditional({ fg = white }), --  if, then, else, endif, switch, etc.
        Repeat(Conditional), --   for, do, while, etc.
        -- Label          { }, --    case, default, etc.
        Operator({}), -- "sizeof", "+", "*", etc.
        Keyword(Conditional), --  any other keyword
        -- Exception      { }, --  try, catch, throw

        PreProc({}), -- (preferred) generic Preprocessor
        Include({ fg = white }), --  preprocessor #include
        Define({}), --   preprocessor #define
        Macro({}), --    same as Define
        PreCondit({}), --  preprocessor #if, #else, #endif, etc.

        Type({ fg = type }), -- (preferred) int, long, char, etc.
        StorageClass({}), -- static, register, volatile, etc.
        Structure({ fg = white }), --  struct, union, enum, etc.
        Typedef({}), --  A typedef

        Special({}), -- (preferred) any special symbol
        SpecialChar({}), --  special character in a constant
        Tag({}), --    you can use CTRL-] on this
        Delimiter({}), --  character that needs attention
        SpecialComment({}), -- special things inside a comment
        Debug({}), --    debugging statements

        -- Underlined { gui = "underline" }, -- (preferred) fg that stands out, HTML links
        -- Bold       { gui = "bold" },
        -- Italic     { gui = "italic" },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error {}, -- (preferred) any erroneous construct

        Todo({}), -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.

        -- LspReferencefg                     { }, -- used for highlighting "fg" references
        -- LspReferenceRead                     { }, -- used for highlighting "read" references
        -- LspReferenceWrite                    { }, -- used for highlighting "write" references

        -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

        -- LspDiagnosticsVirtualfgError       { }, -- Used for "Error" diagnostic virtual fg
        -- LspDiagnosticsVirtualfgWarning     { }, -- Used for "Warning" diagnostic virtual fg
        -- LspDiagnosticsVirtualfgInformation { }, -- Used for "Information" diagnostic virtual fg
        -- LspDiagnosticsVirtualfgHint        { }, -- Used for "Hint" diagnostic virtual fg

        -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
        -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
        -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
        -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

        -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
        -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
        -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
        -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

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
        -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
        -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
        -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
        -- TSMethod             { };    -- For method calls and definitions.
        -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
        -- TSNone               { };    -- TODO: docs
        -- TSNumber             { };    -- For all numbers
        -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
        -- TSParameter          { };    -- For parameters of a function.
        -- TSParameterReference { };    -- For references to parameters of a function.
        -- TSProperty           { };    -- Same as `TSField`.
        -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
        -- TSPunctBracket       { };    -- For brackets and parens.
        -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat             { };    -- For keywords related to loops.
        -- TSString             { };    -- For strings.
        -- TSStringRegex        { };    -- For regexes.
        -- TSStringEscape       { };    -- For escape characters within a string.
        -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
        -- TSType               { };    -- For types.
        -- TSTypeBuiltin        { };    -- For builtin types.
        -- TSVariable           { };    -- Any variable name that does not have another highlight.
        -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

        -- TSTag                { };    -- Tags like html tag names.
        -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
        -- TSfg               { };    -- For strings considered fg in a markup language.
        -- TSEmphasis           { };    -- For fg to be represented with emphasis.
        -- TSUnderline          { };    -- For fg to be represented with an underline.
        -- TSStrike             { };    -- For strikethrough fg.
        -- TSTitle              { };    -- fg that is part of a title.
        -- TSLiteral            { };    -- Literal fg.
        -- TSURI                { };    -- Any URI like a link or email.
    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
