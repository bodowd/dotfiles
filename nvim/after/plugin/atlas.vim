set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
if !exists("termguicolors")
  set termguicolors
endif
let g:colors_name="atlas"


let Italic = ""
if exists('g:atlas_italic')
  let Italic = "italic"
endif
let g:atlas_italic = get(g:, 'atlas_italic', 0)

let Bold = ""
if exists('g:atlas_bold')
  let Bold = "bold"
endif

let g:atlas_bold = get(g:, 'atlas_bold', 0)
hi Keyword gui=bold
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#5af78d ctermfg=NONE guibg=#212121 ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=#ffc24b ctermfg=NONE guibg=#212121 ctermbg=239 gui=NONE cterm=NONE
hi DiffDelete guifg=#f43753 ctermfg=203 guibg=#212121 ctermbg=237 gui=NONE cterm=NONE
hi DiffText guifg=#eab504 ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi ErrorMsg guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi VertSplit guifg=#000000 ctermfg=235 guibg=#000000 ctermbg=235 gui=NONE cterm=NONE
hi Folded guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi FoldColumn guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi SignColumn guifg=#999999 ctermfg=246 guibg=#000000 ctermbg=235 gui=NONE cterm=NONE
hi IncSearch guifg=#000000 ctermfg=235 guibg=#ffffff ctermbg=15 gui=NONE cterm=NONE
hi LineNr guifg=#444444 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi NonText guifg=#444444 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#eab504 ctermfg=255 guibg=#000000 ctermbg=235 gui=NONE cterm=NONE
hi PMenu guifg=#eab504 ctermfg=235 guibg=#666666 ctermbg=81 gui=NONE cterm=NONE
hi PMenuSel guifg=#eab504 ctermfg=235 guibg=#bfbfbf ctermbg=185 gui=NONE cterm=NONE
hi PmenuSbar guifg=#eab504 ctermfg=180 guibg=#eab504 ctermbg=180 gui=NONE cterm=NONE
hi PmenuThumb guifg=#eab504 ctermfg=215 guibg=#eab504 ctermbg=215 gui=NONE cterm=NONE
hi Question guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=#ffffff ctermfg=15 guibg=NONE ctermbg=NONE gui=underline,Bold cterm=underline,Bold
hi SpecialKey guifg=#444444 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#eab504 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#444444 ctermfg=234 guibg=NONE ctermbg=242 gui=Bold cterm=Bold
hi StatusLineNC guifg=#444444 ctermfg=246 guibg=NONE ctermbg=238 gui=NONE cterm=NONE
hi TabLine guifg=#999999 ctermfg=246 guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi TabLineSel guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Title guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Visual guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=0 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=0 gui=NONE cterm=NONE
hi WarningMsg guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#000000 ctermfg=235 guibg=#eab504 ctermbg=185 gui=Bold cterm=Bold
hi Comment guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#eab504 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=bold cterm=NONE
hi Statement guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Error guifg=#f43753 ctermfg=255 guibg=NONE ctermbg=203 gui=NONE cterm=NONE
hi Todo guifg=#ffc24b ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cssVendor guifg=#eab504 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTagName guifg=#eab504 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBackgroundProp guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBorderProp guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBoxProp guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssDimensionProp guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssFontProp guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPositioningProp guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTextProp guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueLength guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueInteger guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueNumber guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIdentifier guifg=#eab504 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIncludeKeyword guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssProp guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttr guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssUnitDecorators guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssNoise guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffChanged guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdded guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffSubname guifg=#eab504 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmDelimiter guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmOperator guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameHash guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameUncommitted guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameTime guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameNotCommittedYet guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitBranch guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedType guifg=#eab504 ctermfg=160 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedType guifg=#eab504 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitHeader guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitUntrackedFile guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedFile guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedFile guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHyperTextEntry guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHeadline guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpNote guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptOperator guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBraces guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptNull guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonEscape guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumber guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBraces guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNull guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeywordMatch guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonQuote guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNoise guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingRule guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingDelimiter guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownListMarker guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkTextDelimiter guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkDelimiter guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#eab504 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownAutomaticLink guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitle guifg=#eab504 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlDelimiter guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitleDelimiter guifg=#eab504 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#eab504 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownEscape guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownError guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelp guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpKey guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpCommand guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpTitle guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeUp guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeCWD guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeClosable guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pugJavascriptOutputChar guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#5af78d ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#ffc24b ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptOpSymbols guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptParens guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocTags guifg=#eab504 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocSeeTag guifg=#eab504 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBrowserObjects guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDOMObjects guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptFuncArg guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParensIfElse guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectKey guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFunction guifg=#eab504 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunctionKey guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncName guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectFuncName guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectColon guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParens guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncParens guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncArgs guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsSpecial guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalObjects guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalNodeObjects guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsImport guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExport guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefaultGroup guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFrom guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug2 guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugH2 guifg=#eab504 ctermfg=81 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi plugBracket guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNumber guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugDash guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugStar guifg=#eab504 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugMessage guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugName guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugUpdate guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugEdge guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugSha guifg=#eab504 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNotLoaded guifg=#eab504 ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SignifySignAdd GitGutterAdd
hi link SignifySignDelete GitGutterDelete
hi link SignifySignDeleteFirstLine SignifySignDelete
hi link SignifySignChange GitGutterChange
hi link SignifySignChangeDelete GitGutterChangeDelete
hi stylusVariable guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClass guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClassChar guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusId guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusIdChar guifg=#eab504 ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssVisualVal guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusImport guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentString guifg=#eab504 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#eab504 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimError guifg=#eab504 ctermfg=255 guibg=#eab504 ctermbg=203 gui=NONE cterm=NONE
hi xmlNamespace guifg=#eab504 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttribPunct guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlProcessingDelim guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptOpSymbol guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNotation guifg=#eab504 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNamedParamType guifg=#eab504 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamName guifg=#eab504 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamType guifg=#eab504 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptTemplateSB guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptRepeat guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectLabelColon guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectMethodName guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptFuncName guifg=#eab504 ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowString guifg=#eab504 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowStringDelimiter guifg=#eab504 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#eab504 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

let g:terminal_color_foreground = "#212121"
let g:terminal_color_background = "#eab504"
let g:terminal_color_0 = "#000000"
let g:terminal_color_1 = "#000000"
let g:terminal_color_2 = "#eab504"
let g:terminal_color_3 = "#eab504"
let g:terminal_color_4 = "#eab504"
let g:terminal_color_5 = "#eab504"
let g:terminal_color_6 = "#eab504"
let g:terminal_color_7 = "#eab504"
let g:terminal_color_8 = "#1d1d1d"
let g:terminal_color_9 = "#eab504"
let g:terminal_color_10 = "#eab504"
let g:terminal_color_11 = "#eab504"
let g:terminal_color_12 = "#eab504"
let g:terminal_color_13 = "#eab504"
let g:terminal_color_14 = "#eab504"
let g:terminal_color_15 = "#ffffff"

