set background=light
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "a"

" Stupid vim uses reverse if there's no italic.
if &t_ZH == &t_mr
    set t_ZH=
endif

hi link Boolean            Constant
hi link Conditional        Statement
hi link Debug              Special
hi link Define             PreProc
hi link Delimiter          Special
hi link Exception          Statement
hi link Float              Constant
hi link Function           Identifier
hi link Include            PreProc
hi link Keyword            Statement
hi link Label              Statement
hi link Macro              PreProc
hi link Number             Constant
hi link Operator           Statement
hi link Repeat             Statement
hi link SpecialChar        Special
hi link SpecialComment     Special
hi link StorageClass       Type
hi link String             Character
hi link Structure          Type
hi link Tag                Special

call High#Light("Character",         "none",           "none",     "#000033")
call High#Light("Comment",           "italic",         "bg",       "#003300")
call High#Light("Constant",          "none",           "none",     "#000000")
call High#Light("Cursor",            "none",           "#00FF00",  "#000000")
call High#Light("CursorIM",          "none",           "#00FF00",  "#000000")
call High#Light("CursorColumn",      "none",           "#FFFFFF",  "none")
call High#Light("CursorLine",        "none",           "#FFFFFF",  "none")
call High#Light("DiffAdd",           "none",           "#99CCFF",  "none")
call High#Light("DiffChange",        "none",           "#FFCCFF",  "none")
call High#Light("DiffDelete",        "bold",           "#CCFFFF",  "#0000FF")
call High#Light("DiffText",          "bold",           "#FF0000",  "none")
call High#Light("Directory",         "none",           "none",     "#0000FF")
call High#Light("Error",             "none",           "#FFFF99",  "#CC0000")
call High#Light("ErrorMsg",          "none",           "#FF0000",  "#ffffff")
call High#Light("FoldColumn",        "bold",           "#D6D6D6",  "#3366CC")
call High#Light("Folded",            "italic",         "none",     "#3366CC")
call High#Light("Identifier",        "italic",         "none",     "none")
call High#Light("Ignore",            "none",           "none",     "#FFFFFF")
call High#Light("IncSearch",         "reverse",        "none",     "none")
call High#Light("LineNr",            "bold,italic",    "#D6D6D6",  "#6699FF")
call High#Light("MatchParen",        "bold",           "none",     "#000000")
call High#Light("ModeMsg",           "bold",           "none",     "none")
call High#Light("MoreMsg",           "bold",           "none",     "#339966")
call High#Light("NonText",           "bold,italic",    "none",     "#6699FF")
call High#Light("Normal",            "none",           "none",     "#000000")
call High#Light("Pmenu",             "none",           "#FFCCFF",  "none")
call High#Light("PmenuSbar",         "none",           "#B7B7B7",  "none")
call High#Light("PmenuSel",          "none",           "#B7B7B7",  "none")
call High#Light("PmenuThumb",        "reverse",        "none",     "none")
call High#Light("PreProc",           "none",           "none",     "#333333")
call High#Light("PreCondit",         "none",           "none",     "#848484")
call High#Light("Question",          "bold",           "none",     "#339966")
call High#Light("Search",            "none",           "#FFFF00",  "none")
call High#Light("SignColumn",        "none",           "#B7B7B7",  "#000099")
call High#Light("Special",           "bold",           "none",     "#000066")
call High#Light("SpecialKey",        "none",           "none",     "#6699FF")
call High#Light("SpellBad",          "underline",      "none",     "none")
call High#Light("SpellCap",          "underline",      "none",     "none")
call High#Light("SpellLocal",        "underline",      "none",     "none")
call High#Light("SpellRare",         "underline",      "none",     "none")
call High#Light("Statement",         "none",           "none",     "#000000")
call High#Light("StatusLine",        "bold",           "#D6D6D6",  "#000033")
call High#Light("StatusLineNC",      "none",           "#D6D6D6",  "#333366")
call High#Light("TabLine",           "none",           "#D6D6D6",  "#333366")
call High#Light("TabLineFill",       "none",           "#D6D6D6",  "none")
call High#Light("TabLineSel",        "bold,underline", "none",     "#000033")
call High#Light("Title",             "bold",           "none",     "#FF00FF")
call High#Light("Todo",              "bold",           "none",     "#FF0000")
call High#Light("Type",              "none",           "none",     "#000000")
call High#Light("Underlined",        "underline",      "none",     "#6666CC")
call High#Light("VertSplit",         "none",           "#D6D6D6",  "#FFFFFF")
call High#Light("Visual",            "none",           "#CCFFFF",  "none")
call High#Light("VisualNOS",         "bold,underline", "none",     "none")
call High#Light("WarningMsg",        "none",           "none",     "#FF0000")
call High#Light("WildMenu",          "none",           "#FFFF00",  "#000000")

call High#Light("asmLabel",          "bold",           "none",     "#330000")
call High#Light("asmOpcode",         "none",           "none",     "#000055")
call High#Light("asmRegister",       "none",           "none",     "#330000")
call High#Light("asmFlag",           "none",           "none",     "#550055")
call High#Light("asmDirective",      "none",           "none",     "#005555")
call High#Light("asmConditional",    "none",           "none",     "#005555")
call High#Light("asmRepeat",         "none",           "none",     "#005555")
call High#Light("asmMacro",          "none",           "none",     "#005555")
call High#Light("asmStorageClass",   "none",           "none",     "#005555")
call High#Light("asmSelector",       "none",           "none",     "#000066")
call High#Light("asmPredef",         "none",           "none",     "#000066")
call High#Light("asmConstant",       "none",           "none",     "#000066")
call High#Light("asmVariable",       "italic",         "none",     "#000000")
call High#Light("asmVariablePrefix", "italic",         "none",     "#848484")
call High#Light("asmVariableSuffix", "italic",         "none",     "#848484")
call High#Light("asmFlowComment",    "none",           "none",     "#0066CC")
call High#Light("asmDelayComment",   "none",           "none",     "#0066CC")

call High#Light("cDoxygen",          "none",           "none",     "#B7B7B7")
call High#Light("cDoxygenKeyword",   "bold",           "none",     "#006600")

call High#Light("sqlStatement",      "bold",           "none",     "#000055")
call High#Light("sqlKeyword",        "none",           "none",     "#000055")
call High#Light("sqlOperator",       "none",           "none",     "#000055")
call High#Light("sqlType",           "none",           "none",     "#005555")
call High#Light("sqlSpecial",        "none",           "none",     "#005555")
call High#Light("sqlString",         "none",           "none",     "#005555")
call High#Light("sqlNumber",         "none",           "none",     "#005555")

call High#Light("wpsDefId",          "bold",           "none",     "#660066")
call High#Light("wpsRefId",          "none",           "none",     "#660066")

call High#Light("wpsComment",        "none",           "none",     "#666600")
call High#Light("wpsOperator",       "none",           "none",     "#000066")
call High#Light("wpsTag",            "none",           "none",     "#000066")
call High#Light("wpsSep",            "bold",           "none",     "#006666")
call High#Light("wpsSubline",        "bold",           "none",     "#666600")
call High#Light("wpsArgs",           "none",           "none",     "#006666")
call High#Light("wpsConditional",    "bold",           "none",     "#006600")

call High#Light("wpsPipeError",      "bold",           "#666600",  "#660000")
call High#Light("wpsEndIfError",     "bold",           "#666600",  "#660000")
call High#Light("wpsTagError",       "none",           "none",     "#660000")
call High#Light("wpsSpaceError",     "none",           "#666600",  "#000000")

call High#Light("diffFile",          "bold",           "none",     "none")
call High#Light("diffAdded",         "none",           "none",     "#006600")
call High#Light("diffRemoved",       "none",           "none",     "#660000")
call High#Light("diffChanged",       "none",           "none",     "#000066")
call High#Light("diffLine",          "none",           "none",     "#666666")


" vim:ts=4 et sts=4 sw=4:
