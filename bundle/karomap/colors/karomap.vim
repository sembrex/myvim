set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "karomap"

hi Cursor ctermfg=237 ctermbg=230 cterm=NONE guifg=#263238 guibg=#EEFFFF gui=NONE
hi Visual ctermfg=NONE ctermbg=240 cterm=NONE guifg=NONE guibg=#37474F gui=NONE
hi CursorLine ctermbg=240 cterm=NONE guifg=NONE guibg=#37474F gui=NONE
hi CursorColumn ctermbg=240 cterm=NONE guifg=NONE guibg=#37474F gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=239 cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE
hi LineNr ctermfg=239 ctermbg=NONE cterm=NONE guifg=#65737E guibg=#263238 gui=NONE
hi CursorLineNr ctermfg=228 ctermbg=240 cterm=NONE guifg=#FFCB6B guibg=#37474F gui=NONE
hi VertSplit ctermfg=231 ctermbg=236 cterm=bold guifg=#64666d guibg=#64666d gui=bold
hi MatchParen ctermfg=140 ctermbg=NONE cterm=underline guifg=#C792EA guibg=NONE gui=underline
hi StatusLine ctermfg=230 ctermbg=242 cterm=bold guifg=#EEFFFF guibg=#64666d gui=bold
hi StatusLineNC ctermfg=230 ctermbg=242 cterm=NONE guifg=#EEFFFF guibg=#64666d gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=240 cterm=NONE guifg=NONE guibg=#37474F gui=NONE
hi IncSearch ctermfg=17 ctermbg=215 cterm=none guifg=#263238 guibg=#FFB62C gui=none
hi Search ctermfg=17 ctermbg=150 cterm=none guifg=#263238 guibg=#C3E88D gui=none
hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi Folded ctermfg=66 ctermbg=235 cterm=NONE guifg=#65737E guibg=#263238 gui=NONE
hi SignColumn ctermfg=246 ctermbg=240 cterm=NONE guifg=#909194 guibg=#37474F gui=NONE
hi FoldColmun ctermfg=246 ctermbg=240 cterm=NONE guifg=#909194 guibg=#37474F gui=NONE
hi Normal guifg=#EEFFFF guibg=#263238 gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi Comment ctermfg=66 ctermbg=NONE cterm=NONE guifg=#65737E guibg=NONE gui=NONE
hi Conditional ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#EEFFFF guibg=#468410 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b080b guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#EEFFFF guibg=#243a5f gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#EEFFFF guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=140 cterm=NONE guifg=#EEFFFF guibg=#C792EA gui=NONE
hi WarningMsg ctermfg=231 ctermbg=140 cterm=NONE guifg=#EEFFFF guibg=#C792EA gui=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi Function ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi Identifier ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic
hi Keyword ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi Label ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi NonText ctermfg=231 ctermbg=NONE cterm=NONE guifg=#525563 guibg=NONE gui=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi Operator ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi PreProc ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#EEFFFF guibg=NONE gui=NONE
hi SpecialKey ctermfg=231 ctermbg=235 cterm=NONE guifg=#525563 guibg=NONE gui=NONE
hi Statement ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi StorageClass ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic
hi String ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi Tag ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#EEFFFF guibg=NONE gui=bold
hi Todo ctermfg=66 ctermbg=NONE cterm=inverse,bold guifg=#65737E guibg=NONE gui=inverse,bold
hi Type ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi rubyFunction ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#FFB62C guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=203 ctermbg=NONE cterm=NONE guifg=#FFB62C guibg=NONE gui=NONE
hi rubyInclude ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi rubyControl ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi rubyException ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=66 ctermbg=NONE cterm=NONE guifg=#65737E guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi cssURL ctermfg=215 ctermbg=NONE cterm=NONE guifg=#FFB62C guibg=NONE gui=italic
hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi cssClassName ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6be5fd guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi TabLineFill  guifg=#333333 guibg=#263238 gui=none
hi TabLine      guifg=#666666 guibg=#263238 gui=none
hi TabLineSel   guifg=WHITE guibg=#263238 gui=none

" Elixir {{{
hi elixirAtom ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic"
hi elixirModuleDeclaration ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic"
hi elixirAlias ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE gui=italic"
hi elixirInterpolationDelimiter ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi elixirStringDelimiter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
"}}}
"
" Vim Script {{{
hi vimGroupName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE
hi vimGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE
hi vimOption ctermfg=81 ctermbg=NONE cterm=NONE guifg=#89DDFF guibg=NONE
hi vimHiCtermFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi vimHiGuiFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
" }}}
" Markdown: {{{
hi markdownH1 ctermfg=141 ctermbg=NONE cterm=bold guifg=#F78C6C guibg=NONE gui=bold"
hi markdownH2 ctermfg=141 ctermbg=NONE cterm=bold guifg=#F78C6C guibg=NONE gui=bold"
hi markdownH3 ctermfg=140 ctermbg=NONE cterm=bold guifg=#C792EA guibg=NONE gui=bold"
hi markdownH4 ctermfg=140 ctermbg=NONE cterm=bold guifg=#C792EA guibg=NONE gui=bold"
hi markdownH5 ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE
hi markdownH6 ctermfg=140 ctermbg=NONE cterm=NONE guifg=#C792EA guibg=NONE gui=NONE

hi markdownCode ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi markdownCodeBlock ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE
hi markdownCodeDelimiter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#FFCB6B guibg=NONE gui=NONE

hi markdownBlockquote ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi markdownListMarker ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi markdownOrderedListMarker ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi markdownRule ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
hi markdownHeadingRule ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE

hi markdownUrlDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#FFB62C guibg=NONE gui=italic"
hi markdownLinkDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#FFB62C guibg=NONE gui=italic"
hi markdownLinkTextDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#FFB62C guibg=NONE gui=italic"

hi markdownHeadingDelimiter ctermfg=117 ctermbg=NONE cterm=bold guifg=#89DDFF guibg=NONE gui=bold"
hi markdownUrl ctermfg=141 ctermbg=NONE cterm=NONE guifg=#F78C6C guibg=NONE gui=NONE
hi markdownUrlTitleDelimiter ctermfg=150 ctermbg=NONE cterm=NONE guifg=#C3E88D guibg=NONE gui=NONE
" }}}

execute "set background=dark"
"-------------------
