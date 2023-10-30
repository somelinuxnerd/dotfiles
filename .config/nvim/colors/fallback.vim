" Theme: again

set background=dark

highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "again"

hi Normal                                        guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi SpecialKey                                    guifg=#545c7e guibg=NONE gui=NONE
hi EndOfBuffer                                   guifg=#1a1b26 guibg=NONE gui=NONE
hi TermCursor                                    cterm=reverse gui=reverse
hi clear TermCursorNC
hi NonText                                       guifg=#545c7e guibg=NONE gui=NONE
hi Directory                                     guifg=#7aa2f7 guibg=NONE gui=NONE
hi ErrorMsg                                      guifg=#db4b4b guibg=NONE gui=NONE
hi IncSearch                                     guifg=#15161e guibg=#ff9e64 gui=NONE
hi Search                                        guifg=#c0caf5 guibg=#3d59a1 gui=NONE
hi clear CurSearch
hi MoreMsg                                       guifg=#7aa2f7 guibg=NONE gui=NONE
hi ModeMsg                                       cterm=bold gui=bold guifg=#a9b1d6 guibg=NONE
hi LineNr                                        guifg=#3b4261 guibg=NONE gui=NONE
hi link LineNrAbove                              LineNr
hi link LineNrBelow                              LineNr
hi CursorLineNr                                  guifg=#737aa2 guibg=NONE gui=NONE
hi link CursorLineSign                           SignColumn
hi link CursorLineFold                           FoldColumn
hi Question                                      guifg=#7aa2f7 guibg=NONE gui=NONE
hi StatusLine                                    guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi StatusLineNC                                  guifg=#3b4261 guibg=#1a1b26 gui=NONE
hi WinSeparator                                  cterm=bold gui=bold guifg=#15161e guibg=NONE
hi VertSplit                                     guifg=#15161e guibg=NONE gui=NONE
hi Title                                         cterm=bold gui=bold guifg=#7aa2f7 guibg=NONE
hi Visual                                        guibg=#33467c guifg=#cdd6f4 gui=NONE
hi clear VisualNC
hi WarningMsg                                    guifg=#e0af68 guibg=NONE gui=NONE
hi WildMenu                                      guibg=#33467c guifg=#cdd6f4 gui=NONE
hi Folded                                        guifg=#7aa2f7 guibg=#3b4261 gui=NONE
hi FoldColumn                                    guifg=#565f89 guibg=#1a1b26 gui=NONE
hi DiffAdd                                       guibg=#20303b guifg=#cdd6f4 gui=NONE
hi DiffChange                                    guibg=#1f2231 guifg=#cdd6f4 gui=NONE
hi DiffDelete                                    guibg=#37222c guifg=#cdd6f4 gui=NONE
hi DiffText                                      guibg=#394b70 guifg=#cdd6f4 gui=NONE
hi SignColumn                                    guifg=#3b4261 guibg=#1a1b26 gui=NONE
hi Conceal                                       guifg=#737aa2 guibg=NONE gui=NONE
hi SpellBad                                      cterm=undercurl gui=undercurl guisp=#db4b4b
hi SpellCap                                      cterm=undercurl gui=undercurl guisp=#e0af68
hi SpellRare                                     cterm=undercurl gui=undercurl guisp=#1abc9c
hi SpellLocal                                    cterm=undercurl gui=undercurl guisp=#0db9d7
hi Pmenu                                         guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi PmenuSel                                      guibg=#343a55 guifg=#cdd6f4 gui=NONE
hi PmenuSbar                                     guibg=#222229 guifg=#cdd6f4 gui=NONE
hi PmenuThumb                                    guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi TabLine                                       guifg=#3b4261 guibg=#1a1b26 gui=NONE
hi TabLineSel                                    guifg=#15161e guibg=#7aa2f7 gui=NONE
hi TabLineFill                                   guibg=#0e0e14 guifg=#cdd6f4 gui=NONE
hi CursorColumn                                  guibg=#292e42 guifg=#cdd6f4 gui=NONE
hi CursorLine                                    guibg=#292e42 guifg=#cdd6f4 gui=NONE
hi ColorColumn                                   guibg=#15161e guifg=#cdd6f4 gui=NONE
hi QuickFixLine                                  cterm=bold gui=bold guibg=#33467c guifg=#cdd6f4
hi Whitespace                                    guifg=#3b4261 guibg=NONE gui=NONE
hi NormalNC                                      guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi link MsgSeparator                             StatusLine
hi NormalFloat                                   guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi MsgArea                                       guifg=#a9b1d6 guibg=NONE gui=NONE
hi FloatBorder                                   guifg=#3d59a1 guibg=#1a1b26 gui=NONE
hi WinBar                                        cterm=bold gui=bold
hi link WinBarNC                                 WinBar
hi Cursor                                        guifg=#1a1b26 guibg=#c0caf5 gui=NONE
hi lCursor                                       guifg=#1a1b26 guibg=#c0caf5 gui=NONE
hi Substitute                                    guifg=#15161e guibg=#f7768e gui=NONE
hi FloatShadow                                   guibg=Black blend=80
hi FloatShadowThrough                            guibg=Black blend=100
hi RedrawDebugNormal                             cterm=reverse gui=reverse
hi RedrawDebugClear                              ctermbg=11 guibg=Yellow
hi RedrawDebugComposed                           ctermbg=10 guibg=Green
hi RedrawDebugRecompose                          ctermbg=9 guibg=Red
hi Error                                         guifg=#db4b4b guibg=NONE gui=NONE
hi Todo                                          guifg=#1a1b26 guibg=#e0af68 gui=NONE
hi String                                        guifg=#9ece6a guibg=NONE gui=NONE
hi Constant                                      guifg=#ff9e64 guibg=NONE gui=NONE
hi Character                                     guifg=#9ece6a guibg=NONE gui=NONE
hi link Number                                   Constant
hi link Boolean                                  Constant
hi link Float                                    Number
hi Function                                      guifg=#7aa2f7 guibg=NONE gui=NONE
hi Identifier                                    guifg=#bb9af7 guibg=NONE gui=NONE
hi link Conditional                              Statement
hi Statement                                     guifg=#bb9af7 guibg=NONE gui=NONE
hi link Repeat                                   Statement
hi link Label                                    Statement
hi Operator                                      guifg=#89ddff guibg=NONE gui=NONE
hi Keyword                                       cterm=italic gui=italic guifg=#7dcfff guibg=NONE
hi link Exception                                Statement
hi link Include                                  PreProc
hi PreProc                                       guifg=#7dcfff guibg=NONE gui=NONE
hi link Define                                   PreProc
hi link Macro                                    PreProc
hi link PreCondit                                PreProc
hi link StorageClass                             Type
hi Type                                          guifg=#2ac3de guibg=NONE gui=NONE
hi link Structure                                Type
hi link Typedef                                  Type
hi link Tag                                      Special
hi Special                                       guifg=#2ac3de guibg=NONE gui=NONE
hi link SpecialChar                              Special
hi link Delimiter                                Special
hi link SpecialComment                           Special
hi link Debug                                    Special
hi DiagnosticError                               guifg=#db4b4b guibg=NONE gui=NONE
hi DiagnosticWarn                                guifg=#e0af68 guibg=NONE gui=NONE
hi DiagnosticInfo                                guifg=#0db9d7 guibg=NONE gui=NONE
hi DiagnosticHint                                guifg=#1abc9c guibg=NONE gui=NONE
hi DiagnosticUnderlineError                      cterm=undercurl gui=undercurl guisp=#db4b4b
hi DiagnosticUnderlineWarn                       cterm=undercurl gui=undercurl guisp=#e0af68
hi DiagnosticUnderlineInfo                       cterm=undercurl gui=undercurl guisp=#0db9d7
hi DiagnosticUnderlineHint                       cterm=undercurl gui=undercurl guisp=#1abc9c
hi DiagnosticVirtualTextError                    guifg=#db4b4b guibg=#2d202a gui=NONE
hi DiagnosticVirtualTextWarn                     guifg=#e0af68 guibg=#2e2a2d gui=NONE
hi DiagnosticVirtualTextInfo                     guifg=#0db9d7 guibg=#192b38 gui=NONE
hi DiagnosticVirtualTextHint                     guifg=#1abc9c guibg=#1a2b32 gui=NONE
hi link DiagnosticFloatingError                  DiagnosticError
hi link DiagnosticFloatingWarn                   DiagnosticWarn
hi link DiagnosticFloatingInfo                   DiagnosticInfo
hi link DiagnosticFloatingHint                   DiagnosticHint
hi link DiagnosticSignError                      DiagnosticError
hi link DiagnosticSignWarn                       DiagnosticWarn
hi link DiagnosticSignInfo                       DiagnosticInfo
hi link DiagnosticSignHint                       DiagnosticHint
hi link @text                                    TSText
hi link @text.underline                          TSUnderline
hi Underlined                                    cterm=underline gui=underline
hi link @todo                                    TSTodo
hi link @debug                                   TSDebug
hi link @comment                                 TSComment
hi Comment                                       cterm=italic gui=italic guifg=#565f89 guibg=NONE
hi link @punctuation                             Delimiter
hi link @constant                                TSConstant
hi link @constant.builtin                        TSConstBuiltin
hi link @constant.macro                          TSConstMacro
hi link @define                                  TSDefine
hi link @macro                                   Macro
hi link @string                                  TSString
hi link @string.escape                           TSStringEscape
hi link @character                               TSCharacter
hi link @character.special                       TSCharacterSpecial
hi link @number                                  TSNumber
hi link @boolean                                 TSBoolean
hi link @float                                   TSFloat
hi link @function                                TSFunction
hi link @function.builtin                        TSFuncBuiltin
hi link @function.macro                          TSFuncMacro
hi link @parameter                               TSParameter
hi link @method                                  TSMethod
hi link @field                                   TSField
hi link @property                                TSProperty
hi link @constructor                             TSConstructor
hi link @conditional                             TSConditional
hi link @repeat                                  TSRepeat
hi link @label                                   TSLabel
hi link @operator                                TSOperator
hi link @keyword                                 TSKeyword
hi link @exception                               TSException
hi link @type                                    TSType
hi link @type.definition                         TSTypeDefinition
hi link @storageclass                            TSStorageClass
hi link @structure                               Structure
hi link @include                                 TSInclude
hi link @preproc                                 TSPreProc
hi MatchParen                                    cterm=bold gui=bold guifg=#ff9e64 guibg=NONE
hi Ignore                                        ctermfg=0 guifg=bg
hi NvimInternalError                             ctermfg=9 ctermbg=9 guifg=Red guibg=Red
hi link NvimAssignment                           Operator
hi link NvimPlainAssignment                      NvimAssignment
hi link NvimAugmentedAssignment                  NvimAssignment
hi link NvimAssignmentWithAddition               NvimAugmentedAssignment
hi link NvimAssignmentWithSubtraction            NvimAugmentedAssignment
hi link NvimAssignmentWithConcatenation          NvimAugmentedAssignment
hi link NvimOperator                             Operator
hi link NvimUnaryOperator                        NvimOperator
hi link NvimUnaryPlus                            NvimUnaryOperator
hi link NvimUnaryMinus                           NvimUnaryOperator
hi link NvimNot                                  NvimUnaryOperator
hi link NvimBinaryOperator                       NvimOperator
hi link NvimComparison                           NvimBinaryOperator
hi link NvimComparisonModifier                   NvimComparison
hi link NvimBinaryPlus                           NvimBinaryOperator
hi link NvimBinaryMinus                          NvimBinaryOperator
hi link NvimConcat                               NvimBinaryOperator
hi link NvimConcatOrSubscript                    NvimConcat
hi link NvimOr                                   NvimBinaryOperator
hi link NvimAnd                                  NvimBinaryOperator
hi link NvimMultiplication                       NvimBinaryOperator
hi link NvimDivision                             NvimBinaryOperator
hi link NvimMod                                  NvimBinaryOperator
hi link NvimTernary                              NvimOperator
hi link NvimTernaryColon                         NvimTernary
hi link NvimParenthesis                          Delimiter
hi link NvimLambda                               NvimParenthesis
hi link NvimNestingParenthesis                   NvimParenthesis
hi link NvimCallingParenthesis                   NvimParenthesis
hi link NvimSubscript                            NvimParenthesis
hi link NvimSubscriptBracket                     NvimSubscript
hi link NvimSubscriptColon                       NvimSubscript
hi link NvimCurly                                NvimSubscript
hi link NvimContainer                            NvimParenthesis
hi link NvimDict                                 NvimContainer
hi link NvimList                                 NvimContainer
hi link NvimIdentifier                           Identifier
hi link NvimIdentifierScope                      NvimIdentifier
hi link NvimIdentifierScopeDelimiter             NvimIdentifier
hi link NvimIdentifierName                       NvimIdentifier
hi link NvimIdentifierKey                        NvimIdentifier
hi link NvimColon                                Delimiter
hi link NvimComma                                Delimiter
hi link NvimArrow                                Delimiter
hi link NvimRegister                             SpecialChar
hi link NvimNumber                               Number
hi link NvimFloat                                NvimNumber
hi link NvimNumberPrefix                         Type
hi link NvimOptionSigil                          Type
hi link NvimOptionName                           NvimIdentifier
hi link NvimOptionScope                          NvimIdentifierScope
hi link NvimOptionScopeDelimiter                 NvimIdentifierScopeDelimiter
hi link NvimEnvironmentSigil                     NvimOptionSigil
hi link NvimEnvironmentName                      NvimIdentifier
hi link NvimString                               String
hi link NvimStringBody                           NvimString
hi link NvimStringQuote                          NvimString
hi link NvimStringSpecial                        SpecialChar
hi link NvimSingleQuote                          NvimStringQuote
hi link NvimSingleQuotedBody                     NvimStringBody
hi link NvimSingleQuotedQuote                    NvimStringSpecial
hi link NvimDoubleQuote                          NvimStringQuote
hi link NvimDoubleQuotedBody                     NvimStringBody
hi link NvimDoubleQuotedEscape                   NvimStringSpecial
hi link NvimFigureBrace                          NvimInternalError
hi link NvimSingleQuotedUnknownEscape            NvimInternalError
hi link NvimSpacing                              Normal
hi link NvimInvalidSingleQuotedUnknownEscape     NvimInternalError
hi link NvimInvalid                              Error
hi link NvimInvalidAssignment                    NvimInvalid
hi link NvimInvalidPlainAssignment               NvimInvalidAssignment
hi link NvimInvalidAugmentedAssignment           NvimInvalidAssignment
hi link NvimInvalidAssignmentWithAddition        NvimInvalidAugmentedAssignment
hi link NvimInvalidAssignmentWithSubtraction     NvimInvalidAugmentedAssignment
hi link NvimInvalidAssignmentWithConcatenation   NvimInvalidAugmentedAssignment
hi link NvimInvalidOperator                      NvimInvalid
hi link NvimInvalidUnaryOperator                 NvimInvalidOperator
hi link NvimInvalidUnaryPlus                     NvimInvalidUnaryOperator
hi link NvimInvalidUnaryMinus                    NvimInvalidUnaryOperator
hi link NvimInvalidNot                           NvimInvalidUnaryOperator
hi link NvimInvalidBinaryOperator                NvimInvalidOperator
hi link NvimInvalidComparison                    NvimInvalidBinaryOperator
hi link NvimInvalidComparisonModifier            NvimInvalidComparison
hi link NvimInvalidBinaryPlus                    NvimInvalidBinaryOperator
hi link NvimInvalidBinaryMinus                   NvimInvalidBinaryOperator
hi link NvimInvalidConcat                        NvimInvalidBinaryOperator
hi link NvimInvalidConcatOrSubscript             NvimInvalidConcat
hi link NvimInvalidOr                            NvimInvalidBinaryOperator
hi link NvimInvalidAnd                           NvimInvalidBinaryOperator
hi link NvimInvalidMultiplication                NvimInvalidBinaryOperator
hi link NvimInvalidDivision                      NvimInvalidBinaryOperator
hi link NvimInvalidMod                           NvimInvalidBinaryOperator
hi link NvimInvalidTernary                       NvimInvalidOperator
hi link NvimInvalidTernaryColon                  NvimInvalidTernary
hi link NvimInvalidDelimiter                     NvimInvalid
hi link NvimInvalidParenthesis                   NvimInvalidDelimiter
hi link NvimInvalidLambda                        NvimInvalidParenthesis
hi link NvimInvalidNestingParenthesis            NvimInvalidParenthesis
hi link NvimInvalidCallingParenthesis            NvimInvalidParenthesis
hi link NvimInvalidSubscript                     NvimInvalidParenthesis
hi link NvimInvalidSubscriptBracket              NvimInvalidSubscript
hi link NvimInvalidSubscriptColon                NvimInvalidSubscript
hi link NvimInvalidCurly                         NvimInvalidSubscript
hi link NvimInvalidContainer                     NvimInvalidParenthesis
hi link NvimInvalidDict                          NvimInvalidContainer
hi link NvimInvalidList                          NvimInvalidContainer
hi link NvimInvalidValue                         NvimInvalid
hi link NvimInvalidIdentifier                    NvimInvalidValue
hi link NvimInvalidIdentifierScope               NvimInvalidIdentifier
hi link NvimInvalidIdentifierScopeDelimiter      NvimInvalidIdentifier
hi link NvimInvalidIdentifierName                NvimInvalidIdentifier
hi link NvimInvalidIdentifierKey                 NvimInvalidIdentifier
hi link NvimInvalidColon                         NvimInvalidDelimiter
hi link NvimInvalidComma                         NvimInvalidDelimiter
hi link NvimInvalidArrow                         NvimInvalidDelimiter
hi link NvimInvalidRegister                      NvimInvalidValue
hi link NvimInvalidNumber                        NvimInvalidValue
hi link NvimInvalidFloat                         NvimInvalidNumber
hi link NvimInvalidNumberPrefix                  NvimInvalidNumber
hi link NvimInvalidOptionSigil                   NvimInvalidIdentifier
hi link NvimInvalidOptionName                    NvimInvalidIdentifier
hi link NvimInvalidOptionScope                   NvimInvalidIdentifierScope
hi link NvimInvalidOptionScopeDelimiter          NvimInvalidIdentifierScopeDelimiter
hi link NvimInvalidEnvironmentSigil              NvimInvalidOptionSigil
hi link NvimInvalidEnvironmentName               NvimInvalidIdentifier
hi link NvimInvalidString                        NvimInvalidValue
hi link NvimInvalidStringBody                    NvimStringBody
hi link NvimInvalidStringQuote                   NvimInvalidString
hi link NvimInvalidStringSpecial                 NvimStringSpecial
hi link NvimInvalidSingleQuote                   NvimInvalidStringQuote
hi link NvimInvalidSingleQuotedBody              NvimInvalidStringBody
hi link NvimInvalidSingleQuotedQuote             NvimInvalidStringSpecial
hi link NvimInvalidDoubleQuote                   NvimInvalidStringQuote
hi link NvimInvalidDoubleQuotedBody              NvimInvalidStringBody
hi link NvimInvalidDoubleQuotedEscape            NvimInvalidStringSpecial
hi link NvimInvalidDoubleQuotedUnknownEscape     NvimInvalidValue
hi link NvimInvalidFigureBrace                   NvimInvalidDelimiter
hi link NvimInvalidSpacing                       ErrorMsg
hi link NvimDoubleQuotedUnknownEscape            NvimInvalidValue
hi lualine_b_normal                              guifg=#7aa2f7 guibg=#3b4261 gui=NONE
hi lualine_a_normal                              gui=bold guifg=#15161e guibg=#7aa2f7
hi lualine_c_normal                              guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi lualine_b_visual                              guifg=#bb9af7 guibg=#3b4261 gui=NONE
hi lualine_a_visual                              gui=bold guifg=#15161e guibg=#bb9af7
hi clear lualine_c_visual
hi lualine_b_replace                             guifg=#f7768e guibg=#3b4261 gui=NONE
hi lualine_a_replace                             gui=bold guifg=#15161e guibg=#f7768e
hi clear lualine_c_replace
hi lualine_b_command                             guifg=#e0af68 guibg=#3b4261 gui=NONE
hi lualine_a_command                             gui=bold guifg=#15161e guibg=#e0af68
hi clear lualine_c_command
hi lualine_b_insert                              guifg=#9ece6a guibg=#3b4261 gui=NONE
hi lualine_a_insert                              gui=bold guifg=#15161e guibg=#9ece6a
hi clear lualine_c_insert
hi clear lualine_b_terminal
hi clear lualine_a_terminal
hi clear lualine_c_terminal
hi lualine_b_inactive                            gui=bold guifg=#3b4261 guibg=#1a1b26
hi lualine_a_inactive                            gui=bold guifg=#7aa2f7 guibg=#1a1b26
hi lualine_c_inactive                            guifg=#3b4261 guibg=#1a1b26 gui=NONE
hi lualine_b_diff_added_normal                   guifg=#266d6a guibg=#3b4261 gui=NONE
hi lualine_b_diff_added_insert                   guifg=#266d6a guibg=#3b4261 gui=NONE
hi lualine_b_diff_added_visual                   guifg=#266d6a guibg=#3b4261 gui=NONE
hi lualine_b_diff_added_replace                  guifg=#266d6a guibg=#3b4261 gui=NONE
hi lualine_b_diff_added_command                  guifg=#266d6a guibg=#3b4261 gui=NONE
hi lualine_b_diff_added_terminal                 guifg=#266d6a guibg=#3b4261 gui=NONE
hi lualine_b_diff_added_inactive                 guifg=#266d6a guibg=#1a1b26 gui=NONE
hi lualine_b_diff_modified_normal                guifg=#536c9e guibg=#3b4261 gui=NONE
hi lualine_b_diff_modified_insert                guifg=#536c9e guibg=#3b4261 gui=NONE
hi lualine_b_diff_modified_visual                guifg=#536c9e guibg=#3b4261 gui=NONE
hi lualine_b_diff_modified_replace               guifg=#536c9e guibg=#3b4261 gui=NONE
hi lualine_b_diff_modified_command               guifg=#536c9e guibg=#3b4261 gui=NONE
hi lualine_b_diff_modified_terminal              guifg=#536c9e guibg=#3b4261 gui=NONE
hi lualine_b_diff_modified_inactive              guifg=#536c9e guibg=#1a1b26 gui=NONE
hi lualine_b_diff_removed_normal                 guifg=#b2555b guibg=#3b4261 gui=NONE
hi lualine_b_diff_removed_insert                 guifg=#b2555b guibg=#3b4261 gui=NONE
hi lualine_b_diff_removed_visual                 guifg=#b2555b guibg=#3b4261 gui=NONE
hi lualine_b_diff_removed_replace                guifg=#b2555b guibg=#3b4261 gui=NONE
hi lualine_b_diff_removed_command                guifg=#b2555b guibg=#3b4261 gui=NONE
hi lualine_b_diff_removed_terminal               guifg=#b2555b guibg=#3b4261 gui=NONE
hi lualine_b_diff_removed_inactive               guifg=#b2555b guibg=#1a1b26 gui=NONE
hi lualine_b_diagnostics_error_normal            guifg=#db4b4b guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_error_insert            guifg=#db4b4b guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_error_visual            guifg=#db4b4b guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_error_replace           guifg=#db4b4b guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_error_command           guifg=#db4b4b guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_error_terminal          guifg=#db4b4b guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_error_inactive          guifg=#db4b4b guibg=#1a1b26 gui=NONE
hi lualine_b_diagnostics_warn_normal             guifg=#e0af68 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_warn_insert             guifg=#e0af68 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_warn_visual             guifg=#e0af68 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_warn_replace            guifg=#e0af68 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_warn_command            guifg=#e0af68 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_warn_terminal           guifg=#e0af68 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_warn_inactive           guifg=#e0af68 guibg=#1a1b26 gui=NONE
hi lualine_b_diagnostics_info_normal             guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_info_insert             guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_info_visual             guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_info_replace            guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_info_command            guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_info_terminal           guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_info_inactive           guifg=#0db9d7 guibg=#1a1b26 gui=NONE
hi lualine_b_diagnostics_hint_normal             guifg=#1abc9c guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_hint_insert             guifg=#1abc9c guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_hint_visual             guifg=#1abc9c guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_hint_replace            guifg=#1abc9c guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_hint_command            guifg=#1abc9c guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_hint_terminal           guifg=#1abc9c guibg=#3b4261 gui=NONE
hi lualine_b_diagnostics_hint_inactive           guifg=#1abc9c guibg=#1a1b26 gui=NONE
hi BufferLineCloseButtonVisible                  cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineCloseButton                         cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineTabClose                            cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineTabSelected                         cterm=NONE gui=NONE guifg=#000000 guibg=NONE
hi BufferLineGroupLabel                          cterm=NONE gui=NONE guibg=#80a0ff guifg=#cdd6f4
hi BufferLineGroupSeparator                      cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineFill                                cterm=NONE gui=NONE guifg=#80a0ff guibg=#0e0e14
hi BufferLineModified                            cterm=NONE gui=NONE guifg=#ffa0a0 guibg=NONE
hi BufferLineDiagnostic                          cterm=NONE gui=NONE guifg=#6078bf guibg=NONE
hi BufferLinePick                                cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=NONE
hi BufferLineInfo                                cterm=NONE gui=NONE guifg=#80a0ff guisp=#add8e6 guibg=NONE
hi BufferLineTab                                 cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineSeparator                           cterm=NONE gui=NONE
hi BufferLineNumbers                             cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLinePickSelected                        cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=NONE
hi BufferLineIndicatorSelected                   guifg=#6183bb guibg=NONE gui=NONE
hi BufferLineBackground                          cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineWarning                             cterm=NONE gui=NONE guifg=#80a0ff guisp=#ffa500 guibg=NONE
hi BufferLineHint                                cterm=NONE gui=NONE guifg=#80a0ff guisp=#d3d3d3 guibg=NONE
hi BufferLineOffsetSeparator                     cterm=NONE gui=NONE
hi BufferLinePickVisible                         cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=NONE
hi BufferLineBuffer                              cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineIndicatorVisible                    cterm=NONE gui=NONE
hi BufferLineError                               cterm=NONE gui=NONE guifg=#80a0ff guisp=#ff0000 guibg=NONE
hi BufferLineTabSeparatorSelected                cterm=NONE gui=NONE
hi BufferLineTabSeparator                        cterm=NONE gui=NONE
hi BufferLineSeparatorVisible                    cterm=NONE gui=NONE
hi BufferLineSeparatorSelected                   cterm=NONE gui=NONE
hi BufferLineDuplicate                           cterm=italic gui=italic guifg=#7998f2 guibg=NONE
hi BufferLineDuplicateVisible                    cterm=italic gui=italic guifg=#7998f2 guibg=NONE
hi BufferLineDuplicateSelected                   cterm=italic gui=italic guifg=#7998f2 guibg=NONE
hi BufferLineModifiedSelected                    cterm=NONE gui=NONE guifg=#ffa0a0 guibg=NONE
hi BufferLineModifiedVisible                     cterm=NONE gui=NONE guifg=#ffa0a0 guibg=NONE
hi BufferLineErrorDiagnosticSelected             cterm=bold,italic gui=bold,italic guifg=#bf0000 guisp=#bf0000 guibg=NONE
hi BufferLineErrorDiagnosticVisible              cterm=NONE gui=NONE guifg=#6078bf guibg=NONE
hi BufferLineErrorDiagnostic                     cterm=NONE gui=NONE guifg=#6078bf guisp=#bf0000 guibg=NONE
hi BufferLineErrorSelected                       cterm=bold,italic gui=bold,italic guifg=#ff0000 guisp=#ff0000 guibg=NONE
hi BufferLineErrorVisible                        cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineWarningDiagnosticSelected           cterm=bold,italic gui=bold,italic guifg=#bf7b00 guisp=#bf7b00 guibg=NONE
hi BufferLineWarningDiagnosticVisible            cterm=NONE gui=NONE guifg=#6078bf guibg=NONE
hi BufferLineWarningDiagnostic                   cterm=NONE gui=NONE guifg=#6078bf guisp=#bf7b00 guibg=NONE
hi BufferLineWarningSelected                     cterm=bold,italic gui=bold,italic guifg=#ffa500 guisp=#ffa500 guibg=NONE
hi BufferLineWarningVisible                      cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineInfoDiagnosticSelected              cterm=bold,italic gui=bold,italic guifg=#81a2ac guisp=#81a2ac guibg=NONE
hi BufferLineInfoDiagnosticVisible               cterm=NONE gui=NONE guifg=#6078bf guibg=NONE
hi BufferLineInfoDiagnostic                      cterm=NONE gui=NONE guifg=#6078bf guisp=#81a2ac guibg=NONE
hi BufferLineInfoSelected                        cterm=bold,italic gui=bold,italic guifg=#add8e6 guisp=#add8e6 guibg=NONE
hi BufferLineInfoVisible                         cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineHintDiagnosticSelected              cterm=bold,italic gui=bold,italic guifg=#9e9e9e guisp=#9e9e9e guibg=NONE
hi BufferLineHintDiagnosticVisible               cterm=NONE gui=NONE guifg=#6078bf guibg=NONE
hi BufferLineHintDiagnostic                      cterm=NONE gui=NONE guifg=#6078bf guisp=#9e9e9e guibg=NONE
hi BufferLineHintSelected                        cterm=bold,italic gui=bold,italic guifg=#d3d3d3 guisp=#d3d3d3 guibg=NONE
hi BufferLineHintVisible                         cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineDiagnosticSelected                  cterm=bold,italic gui=bold,italic
hi BufferLineDiagnosticVisible                   cterm=NONE gui=NONE guifg=#6078bf guibg=NONE
hi BufferLineNumbersVisible                      cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineNumbersSelected                     cterm=bold,italic gui=bold,italic
hi BufferLineBufferSelected                      cterm=bold,italic gui=bold,italic
hi BufferLineBufferVisible                       cterm=NONE gui=NONE guifg=#80a0ff guibg=NONE
hi BufferLineCloseButtonSelected                 cterm=NONE gui=NONE
hi NotifyERRORBorder                             guifg=#542931 guibg=#1a1b26 gui=NONE
hi NotifyWARNBorder                              guifg=#55473a guibg=#1a1b26 gui=NONE
hi NotifyINFOBorder                              guifg=#164a5b guibg=#1a1b26 gui=NONE
hi NotifyDEBUGBorder                             guifg=#2c2f44 guibg=#1a1b26 gui=NONE
hi NotifyTRACEBorder                             guifg=#41385b guibg=#1a1b26 gui=NONE
hi NotifyERRORIcon                               guifg=#db4b4b guibg=NONE gui=NONE
hi NotifyWARNIcon                                guifg=#e0af68 guibg=NONE gui=NONE
hi NotifyINFOIcon                                guifg=#0db9d7 guibg=NONE gui=NONE
hi NotifyDEBUGIcon                               guifg=#565f89 guibg=NONE gui=NONE
hi NotifyTRACEIcon                               guifg=#9d7cd8 guibg=NONE gui=NONE
hi NotifyERRORTitle                              guifg=#db4b4b guibg=NONE gui=NONE
hi NotifyWARNTitle                               guifg=#e0af68 guibg=NONE gui=NONE
hi NotifyINFOTitle                               guifg=#0db9d7 guibg=NONE gui=NONE
hi NotifyDEBUGTitle                              guifg=#565f89 guibg=NONE gui=NONE
hi NotifyTRACETitle                              guifg=#9d7cd8 guibg=NONE gui=NONE
hi NotifyERRORBody                               guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi NotifyWARNBody                                guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi NotifyINFOBody                                guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi NotifyDEBUGBody                               guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi NotifyTRACEBody                               guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi link NotifyLogTime                            Comment
hi link NotifyLogTitle                           Special
hi NvimTreeGitNew                                guifg=#449dab guibg=NONE gui=NONE
hi NvimTreeGitRenamed                            guifg=#bb9af7 guibg=NONE gui=NONE
hi NvimTreeGitMerge                              guifg=#e0af68 guibg=NONE gui=NONE
hi NvimTreeGitStaged                             guifg=#9ece6a guibg=NONE gui=NONE
hi NvimTreeGitDeleted                            guifg=#914c54 guibg=NONE gui=NONE
hi NvimTreeGitDirty                              guifg=#6183bb guibg=NONE gui=NONE
hi NvimTreeOpenedFile                            guibg=#292e42 guifg=#cdd6f4 gui=NONE
hi NvimTreeImageFile                             guifg=#a9b1d6 guibg=NONE gui=NONE
hi NvimTreeSpecialFile                           cterm=underline gui=underline guifg=#9d7cd8 guibg=NONE
hi NvimTreeExecFile                              gui=bold
hi NvimTreeRootFolder                            cterm=bold gui=bold guifg=#7aa2f7 guibg=NONE
hi NvimTreeFolderIcon                            guifg=#e0af68 guibg=NONE gui=NONE
hi NvimTreeSymlink                               guifg=#7aa2f7 guibg=NONE gui=NONE
hi NvimTreeIndentMarker                          guifg=#3b4261 guibg=NONE gui=NONE
hi NvimTreeBookmark                              guifg=#9ece6a guibg=NONE gui=NONE
hi NvimTreeLiveFilterValue                       gui=bold
hi NvimTreeLiveFilterPrefix                      gui=bold
hi NvimTreeWindowPicker                          gui=bold guifg=#ededed guibg=#4493c8
hi link NvimTreeCursorLine                       CursorLine
hi link NvimTreeCursorColumn                     CursorColumn
hi NvimTreeNormal                                guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi link NvimTreeStatusLineNC                     StatusLineNC
hi link NvimTreeStatusLine                       StatusLine
hi NvimTreeNormalNC                              guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi link NvimTreeFileMerge                        NvimTreeGitMerge
hi link NvimTreeFileStaged                       NvimTreeGitStaged
hi link NvimTreeFileRenamed                      NvimTreeGitRenamed
hi link NvimTreeFileNew                          NvimTreeGitNew
hi link NvimTreeFileDirty                        NvimTreeGitDirty
hi link NvimTreeFolderName                       Directory
hi link NvimTreeOpenedFolderName                 Directory
hi link NvimTreeEmptyFolderName                  Directory
hi link NvimTreeSignColumn                       NvimTreeNormal
hi link NvimTreePopup                            Normal
hi link NvimTreeGitIgnored                       Comment
hi link NvimTreeFileIgnored                      NvimTreeGitIgnored
hi link NvimTreeFileDeleted                      NvimTreeGitDeleted
hi NvimTreeWinSeparator                          guifg=#1a1b26 guibg=#1a1b26 gui=NONE
hi link NvimTreeVertSplit                        VertSplit
hi link NvimTreeEndOfBuffer                      EndOfBuffer
hi link NvimTreeCursorLineNr                     CursorLineNr
hi link NvimTreeLspDiagnosticsError              DiagnosticError
hi link NvimTreeLspDiagnosticsWarning            DiagnosticWarn
hi link NvimTreeLspDiagnosticsInformation        DiagnosticInfo
hi link NvimTreeLspDiagnosticsHint               DiagnosticHint
hi DevIconGulpfile                               ctermfg=167 guifg=#cc3e44 guibg=NONE gui=NONE
hi DevIconDart                                   ctermfg=25 guifg=#03589c guibg=NONE gui=NONE
hi DevIconEex                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconPsd                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconHeex                                   ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconPsb                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconBrewfile                               ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconPromptPs1                              ctermfg=59 guifg=#4d5a5e guibg=NONE gui=NONE
hi DevIconHbs                                    ctermfg=208 guifg=#f0772b guibg=NONE gui=NONE
hi DevIconFs                                     ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconGitConfig                              ctermfg=59 guifg=#41535b guibg=NONE gui=NONE
hi DevIconHaml                                   ctermfg=188 guifg=#eaeae1 guibg=NONE gui=NONE
hi DevIconCp                                     ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconCss                                    ctermfg=39 guifg=#42a5f5 guibg=NONE gui=NONE
hi DevIconImportConfiguration                    ctermfg=231 guifg=#ececec guibg=NONE gui=NONE
hi DevIconCson                                   ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconPpt                                    ctermfg=167 guifg=#cb4a32 guibg=NONE gui=NONE
hi DevIconCsh                                    ctermfg=59 guifg=#4d5a5e guibg=NONE gui=NONE
hi DevIconElm                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconMli                                    ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconEpp                                    guifg=#ffa61a guibg=NONE gui=NONE
hi DevIconCrystal                                ctermfg=16 guifg=#000000 guibg=NONE gui=NONE
hi DevIconGruntfile                              ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconGraphQL                                ctermfg=199 guifg=#e535ab guibg=NONE gui=NONE
hi DevIconCpp                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconCoffee                                 ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconConf                                   ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconJs                                     ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconConfiguration                          ctermfg=231 guifg=#ececec guibg=NONE gui=NONE
hi DevIconMd                                     ctermfg=15 guifg=#ffffff guibg=NONE gui=NONE
hi DevIconLuau                                   ctermfg=74 guifg=#51a0cf guibg=NONE gui=NONE
hi DevIconKotlinScript                           ctermfg=208 guifg=#f88a02 guibg=NONE gui=NONE
hi DevIconGo                                     ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconKsh                                    ctermfg=59 guifg=#4d5a5e guibg=NONE gui=NONE
hi DevIconDefault                                ctermfg=66 guifg=#dad8d8 guibg=NONE gui=NONE
hi DevIconTwig                                   ctermfg=107 guifg=#8dc149 guibg=NONE gui=NONE
hi DevIconDoc                                    ctermfg=25 guifg=#185abd guibg=NONE gui=NONE
hi DevIconSql                                    ctermfg=188 guifg=#dad8d8 guibg=NONE gui=NONE
hi DevIconPackageJson                            guifg=#e8274b guibg=NONE gui=NONE
hi DevIconXul                                    ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconMarkdown                               ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconGif                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconPackageLockJson                        guifg=#7a0d21 guibg=NONE gui=NONE
hi DevIconJsx                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconMustache                               ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconTcl                                    ctermfg=67 guifg=#1e5cb3 guibg=NONE gui=NONE
hi DevIconCobol                                  ctermfg=25 guifg=#005ca5 guibg=NONE gui=NONE
hi DevIconTor                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconHxx                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconExs                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconYml                                    ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconFsx                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconMixLock                                ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconRmd                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconHtm                                    ctermfg=166 guifg=#e34c26 guibg=NONE gui=NONE
hi DevIconEdn                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconBash                                   ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconHrl                                    ctermfg=132 guifg=#b83998 guibg=NONE gui=NONE
hi DevIconNPMrc                                  ctermfg=161 guifg=#e8274b guibg=NONE gui=NONE
hi DevIconSystemVerilog                          ctermfg=29 guifg=#019833 guibg=NONE gui=NONE
hi DevIconHpp                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconVimrc                                  ctermfg=29 guifg=#019833 guibg=NONE gui=NONE
hi DevIconHh                                     ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconGvimrc                                 ctermfg=29 guifg=#019833 guibg=NONE gui=NONE
hi DevIconCMakeLists                             ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconDockerfile                             ctermfg=59 guifg=#384d54 guibg=NONE gui=NONE
hi DevIconConfigRu                               ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconFsscript                               ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconJava                                   ctermfg=167 guifg=#cc3e44 guibg=NONE gui=NONE
hi DevIconH                                      ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconWebmanifest                            ctermfg=221 guifg=#f1e05a guibg=NONE gui=NONE
hi DevIconDiff                                   ctermfg=59 guifg=#41535b guibg=NONE gui=NONE
hi DevIconZshprofile                             ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconGemfile                                ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconZshrc                                  ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconLhs                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconDb                                     ctermfg=188 guifg=#dad8d8 guibg=NONE gui=NONE
hi DevIconProcfile                               ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconGitLogo                                ctermfg=202 guifg=#f14c28 guibg=NONE gui=NONE
hi DevIconFavicon                                ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconGitModules                             ctermfg=59 guifg=#41535b guibg=NONE gui=NONE
hi DevIconVerilog                                ctermfg=29 guifg=#019833 guibg=NONE gui=NONE
hi DevIconCxx                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconGemspec                                ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconProlog                                 ctermfg=179 guifg=#e4b854 guibg=NONE gui=NONE
hi DevIconJpeg                                   ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconHs                                     ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconMaterial                               ctermfg=132 guifg=#b83998 guibg=NONE gui=NONE
hi DevIconFsharp                                 ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconJson                                   ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconVim                                    ctermfg=29 guifg=#019833 guibg=NONE gui=NONE
hi DevIconFennel                                 ctermfg=230 guifg=#fff3d7 guibg=NONE gui=NONE
hi DevIconNix                                    ctermfg=110 guifg=#7ebae4 guibg=NONE gui=NONE
hi DevIconErb                                    ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconBinaryGLTF                             ctermfg=215 guifg=#ffb13b guibg=NONE gui=NONE
hi DevIconMjs                                    ctermfg=221 guifg=#f1e05a guibg=NONE gui=NONE
hi DevIconEx                                     ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconDsStore                                ctermfg=59 guifg=#41535b guibg=NONE gui=NONE
hi DevIconIni                                    ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconFsi                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconBat                                    ctermfg=154 guifg=#c1f12e guibg=NONE gui=NONE
hi DevIconBashrc                                 ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconClojure                                ctermfg=107 guifg=#8dc149 guibg=NONE gui=NONE
hi DevIconLicense                                ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconLua                                    ctermfg=74 guifg=#51a0cf guibg=NONE gui=NONE
hi DevIconGitCommit                              ctermfg=59 guifg=#41535b guibg=NONE gui=NONE
hi DevIconErl                                    ctermfg=132 guifg=#b83998 guibg=NONE gui=NONE
hi DevIconClojureDart                            ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconCsv                                    ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconClojureJS                              ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconCMake                                  ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconClojureC                               ctermfg=107 guifg=#8dc149 guibg=NONE gui=NONE
hi DevIconOPUS                                   ctermfg=208 guifg=#f88a02 guibg=NONE gui=NONE
hi DevIconPl                                     ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconLock                                   ctermfg=250 guifg=#bbbbbb guibg=NONE gui=NONE
hi DevIconFish                                   ctermfg=59 guifg=#4d5a5e guibg=NONE gui=NONE
hi DevIconCPlusPlus                              ctermfg=204 guifg=#f34b7d guibg=NONE gui=NONE
hi DevIconAi                                     ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconPrisma                                 ctermfg=15 guifg=#ffffff guibg=NONE gui=NONE
hi DevIconSvelte                                 ctermfg=202 guifg=#ff3e00 guibg=NONE gui=NONE
hi DevIconSwift                                  ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconLog                                    ctermfg=15 guifg=#ffffff guibg=NONE gui=NONE
hi DevIconTs                                     ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconBabelrc                                ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconZsh                                    ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconZig                                    ctermfg=208 guifg=#f69a1b guibg=NONE gui=NONE
hi DevIconYaml                                   ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconXml                                    ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconXls                                    ctermfg=23 guifg=#207245 guibg=NONE gui=NONE
hi DevIconBmp                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconXcPlayground                           ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconWebpack                                ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconWebp                                   ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconAwk                                    ctermfg=59 guifg=#4d5a5e guibg=NONE gui=NONE
hi DevIconVue                                    ctermfg=107 guifg=#8dc149 guibg=NONE gui=NONE
hi DevIconVHDL                                   ctermfg=29 guifg=#019833 guibg=NONE gui=NONE
hi DevIconR                                      ctermfg=65 guifg=#358a5b guibg=NONE gui=NONE
hi DevIconVagrantfile                            ctermfg=27 guifg=#1563ff guibg=NONE gui=NONE
hi DevIconTxt                                    ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconRss                                    ctermfg=215 guifg=#fb9d3b guibg=NONE gui=NONE
hi DevIconTextScene                              ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconC                                      ctermfg=75 guifg=#599eff guibg=NONE gui=NONE
hi DevIconTextResource                           ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconToml                                   ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconPhp                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconPdf                                    ctermfg=124 guifg=#b30b00 guibg=NONE gui=NONE
hi DevIconSvg                                    ctermfg=215 guifg=#ffb13b guibg=NONE gui=NONE
hi DevIconPng                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconGitlabCI                               ctermfg=166 guifg=#e24329 guibg=NONE gui=NONE
hi DevIconSuo                                    ctermfg=98 guifg=#854cc7 guibg=NONE gui=NONE
hi DevIconRakefile                               ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconNim                                    ctermfg=220 guifg=#f3d400 guibg=NONE gui=NONE
hi DevIconRake                                   ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconMint                                   ctermfg=108 guifg=#87c095 guibg=NONE gui=NONE
hi DevIconMdx                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconGitAttributes                          ctermfg=59 guifg=#41535b guibg=NONE gui=NONE
hi DevIconStyl                                   ctermfg=107 guifg=#8dc149 guibg=NONE gui=NONE
hi DevIconBashProfile                            ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconSml                                    ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconSln                                    ctermfg=98 guifg=#854cc7 guibg=NONE gui=NONE
hi DevIconLess                                   ctermfg=60 guifg=#563d7c guibg=NONE gui=NONE
hi DevIconSlim                                   ctermfg=166 guifg=#e34c26 guibg=NONE gui=NONE
hi DevIconLeex                                   ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconSh                                     ctermfg=59 guifg=#4d5a5e guibg=NONE gui=NONE
hi DevIconScss                                   ctermfg=204 guifg=#f55385 guibg=NONE gui=NONE
hi DevIconScala                                  ctermfg=167 guifg=#cc3e44 guibg=NONE gui=NONE
hi DevIconJson5                                  ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconPackedResource                         ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconTsx                                    ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconSass                                   ctermfg=204 guifg=#f55385 guibg=NONE gui=NONE
hi DevIconD                                      ctermfg=64 guifg=#427819 guibg=NONE gui=NONE
hi DevIconQuery                                  ctermfg=154 guifg=#90a850 guibg=NONE gui=NONE
hi DevIconSolidity                               ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconGitIgnore                              ctermfg=59 guifg=#41535b guibg=NONE gui=NONE
hi DevIconScheme                                 ctermfg=16 guifg=#000000 guibg=NONE gui=NONE
hi DevIconJpg                                    ctermfg=140 guifg=#a074c4 guibg=NONE gui=NONE
hi DevIconRs                                     ctermfg=180 guifg=#dea584 guibg=NONE gui=NONE
hi DevIconOpenTypeFont                           ctermfg=231 guifg=#ececec guibg=NONE gui=NONE
hi DevIconRb                                     ctermfg=52 guifg=#701516 guibg=NONE gui=NONE
hi DevIconPp                                     guifg=#ffa61a guibg=NONE gui=NONE
hi DevIconNPMIgnore                              ctermfg=161 guifg=#e8274b guibg=NONE gui=NONE
hi DevIconRproj                                  ctermfg=65 guifg=#358a5b guibg=NONE gui=NONE
hi DevIconSettingsJson                           ctermfg=98 guifg=#854cc7 guibg=NONE gui=NONE
hi DevIconTex                                    ctermfg=58 guifg=#3d6117 guibg=NONE gui=NONE
hi DevIconDropbox                                ctermfg=27 guifg=#0061fe guibg=NONE gui=NONE
hi DevIconRlib                                   ctermfg=180 guifg=#dea584 guibg=NONE gui=NONE
hi DevIconZshenv                                 ctermfg=113 guifg=#89e051 guibg=NONE gui=NONE
hi DevIconMotoko                                 ctermfg=99 guifg=#9772fb guibg=NONE gui=NONE
hi DevIconKotlin                                 ctermfg=208 guifg=#f88a02 guibg=NONE gui=NONE
hi DevIconMakefile                               ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconJl                                     ctermfg=133 guifg=#a270ba guibg=NONE gui=NONE
hi DevIconIco                                    ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi DevIconPm                                     ctermfg=67 guifg=#519aba guibg=NONE gui=NONE
hi DevIconMl                                     ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconNodeModules                            ctermfg=161 guifg=#e8274b guibg=NONE gui=NONE
hi DevIconGDScript                               ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconTerminal                               ctermfg=71 guifg=#31b53e guibg=NONE gui=NONE
hi DevIconDrools                                 ctermfg=217 guifg=#ffafaf guibg=NONE gui=NONE
hi DevIconEnv                                    ctermfg=226 guifg=#faf743 guibg=NONE gui=NONE
hi DevIconHtml                                   ctermfg=202 guifg=#e44d26 guibg=NONE gui=NONE
hi DevIconPyo                                    ctermfg=67 guifg=#ffe291 guibg=NONE gui=NONE
hi DevIconDesktopEntry                           ctermfg=60 guifg=#563d7c guibg=NONE gui=NONE
hi DevIconPyd                                    ctermfg=67 guifg=#ffe291 guibg=NONE gui=NONE
hi DevIconDump                                   ctermfg=188 guifg=#dad8d8 guibg=NONE gui=NONE
hi DevIconSig                                    ctermfg=173 guifg=#e37933 guibg=NONE gui=NONE
hi DevIconCs                                     ctermfg=58 guifg=#596706 guibg=NONE gui=NONE
hi DevIconPyc                                    ctermfg=67 guifg=#ffe291 guibg=NONE gui=NONE
hi DevIconPy                                     ctermfg=61 guifg=#ffbc03 guibg=NONE gui=NONE
hi DevIconGodotProject                           ctermfg=66 guifg=#6d8086 guibg=NONE gui=NONE
hi DevIconEjs                                    ctermfg=185 guifg=#cbcb41 guibg=NONE gui=NONE
hi CmpItemAbbr                                   guifg=#c0caf5 guibg=NONE gui=NONE
hi clear CmpItemAbbrDefault
hi CmpItemAbbrDeprecated                         cterm=strikethrough gui=strikethrough guifg=#3b4261 guibg=NONE
hi clear CmpItemAbbrDeprecatedDefault
hi CmpItemAbbrMatch                              guifg=#2ac3de guibg=NONE gui=NONE
hi clear CmpItemAbbrMatchDefault
hi CmpItemAbbrMatchFuzzy                         guifg=#2ac3de guibg=NONE gui=NONE
hi clear CmpItemAbbrMatchFuzzyDefault
hi link CmpItemKind                              CmpItemKindDefault
hi clear CmpItemKindDefault
hi CmpItemMenu                                   guifg=#565f89 guibg=NONE gui=NONE
hi clear CmpItemMenuDefault
hi CmpItemKindClass                              guifg=#ff9e64 guibg=NONE gui=NONE
hi link CmpItemKindClassDefault                  CmpItemKind
hi CmpItemKindVariable                           guifg=#bb9af7 guibg=NONE gui=NONE
hi link CmpItemKindVariableDefault               CmpItemKind
hi CmpItemKindField                              guifg=#73daca guibg=NONE gui=NONE
hi link CmpItemKindFieldDefault                  CmpItemKind
hi CmpItemKindConstant                           guifg=#bb9af7 guibg=NONE gui=NONE
hi link CmpItemKindConstantDefault               CmpItemKind
hi CmpItemKindKeyword                            guifg=#7dcfff guibg=NONE gui=NONE
hi link CmpItemKindKeywordDefault                CmpItemKind
hi CmpItemKindOperator                           guifg=#73daca guibg=NONE gui=NONE
hi link CmpItemKindOperatorDefault               CmpItemKind
hi CmpItemKindFunction                           guifg=#7aa2f7 guibg=NONE gui=NONE
hi link CmpItemKindFunctionDefault               CmpItemKind
hi link CmpItemKindFolder                        CmpItemKindFolderDefault
hi link CmpItemKindFolderDefault                 CmpItemKind
hi CmpItemKindReference                          guifg=#bb9af7 guibg=NONE gui=NONE
hi link CmpItemKindReferenceDefault              CmpItemKind
hi link CmpItemKindColor                         CmpItemKindColorDefault
hi link CmpItemKindColorDefault                  CmpItemKind
hi CmpItemKindValue                              guifg=#bb9af7 guibg=NONE gui=NONE
hi link CmpItemKindValueDefault                  CmpItemKind
hi CmpItemKindEvent                              guifg=#ff9e64 guibg=NONE gui=NONE
hi link CmpItemKindEventDefault                  CmpItemKind
hi CmpItemKindConstructor                        guifg=#7aa2f7 guibg=NONE gui=NONE
hi link CmpItemKindConstructorDefault            CmpItemKind
hi CmpItemKindUnit                               guifg=#ff9e64 guibg=NONE gui=NONE
hi link CmpItemKindUnitDefault                   CmpItemKind
hi CmpItemKindModule                             guifg=#e0af68 guibg=NONE gui=NONE
hi link CmpItemKindModuleDefault                 CmpItemKind
hi CmpItemKindSnippet                            guifg=#737aa2 guibg=NONE gui=NONE
hi link CmpItemKindSnippetDefault                CmpItemKind
hi link CmpItemKindText                          CmpItemKindTextDefault
hi link CmpItemKindTextDefault                   CmpItemKind
hi CmpItemKindStruct                             guifg=#ff9e64 guibg=NONE gui=NONE
hi link CmpItemKindStructDefault                 CmpItemKind
hi CmpItemKindEnumMember                         guifg=#73daca guibg=NONE gui=NONE
hi link CmpItemKindEnumMemberDefault             CmpItemKind
hi CmpItemKindTypeParameter                      guifg=#73daca guibg=NONE gui=NONE
hi link CmpItemKindTypeParameterDefault          CmpItemKind
hi CmpItemKindMethod                             guifg=#7aa2f7 guibg=NONE gui=NONE
hi link CmpItemKindMethodDefault                 CmpItemKind
hi link CmpItemKindFile                          CmpItemKindFileDefault
hi link CmpItemKindFileDefault                   CmpItemKind
hi CmpItemKindEnum                               guifg=#ff9e64 guibg=NONE gui=NONE
hi link CmpItemKindEnumDefault                   CmpItemKind
hi CmpItemKindProperty                           guifg=#73daca guibg=NONE gui=NONE
hi link CmpItemKindPropertyDefault               CmpItemKind
hi CmpItemKindInterface                          guifg=#ff9e64 guibg=NONE gui=NONE
hi link CmpItemKindInterfaceDefault              CmpItemKind
hi LspInfoBorder                                 guifg=#3d59a1 guibg=#1a1b26 gui=NONE
hi link LspInfoList                              Function
hi link LspInfoFiletype                          Type
hi link LspInfoTitle                             Title
hi link LspInfoTip                               Comment
hi link @text.uri                                TSURI
hi link TSURI                                    Underlined
hi link @text.literal                            TSLiteral
hi link TSLiteral                                String
hi link @text.title                              TSTitle
hi link TSTitle                                  Title
hi link @text.strike                             TSStrike
hi TSStrike                                      cterm=strikethrough gui=strikethrough
hi TSUnderline                                   cterm=underline gui=underline
hi link @text.note                               TSNote
hi TSNote                                        guifg=#1a1b26 guibg=#0db9d7 gui=NONE
hi link @text.environment                        TSEnvironment
hi link @text.environment.name                   TSEnvironmentName
hi link TSEnvironmentName                        Type
hi link TSEnvironment                            Macro
hi TSParameter                                   guifg=#e0af68 guibg=NONE gui=NONE
hi link TSStorageClass                           StorageClass
hi TSOperator                                    guifg=#89ddff guibg=NONE gui=NONE
hi link TSPreProc                                PreProc
hi link @parameter.reference                     TSParameterReference
hi link TSParameterReference                     TSParameter
hi link @tag                                     TSTag
hi link TSTag                                    Label
hi link @method.call                             TSMethodCall
hi link TSMethodCall                             TSMethod
hi link @annotation                              TSAnnotation
hi link TSAnnotation                             PreProc
hi TSField                                       guifg=#73daca guibg=NONE gui=NONE
hi link TSMethod                                 Function
hi link @symbol                                  TSSymbol
hi link TSSymbol                                 Identifier
hi link @keyword.return                          TSKeywordReturn
hi link TSKeywordReturn                          TSKeyword
hi link TSFunction                               Function
hi link @attribute                               TSAttribute
hi link TSAttribute                              PreProc
hi link @keyword.operator                        TSKeywordOperator
hi link TSKeywordOperator                        TSOperator
hi link @keyword.function                        TSKeywordFunction
hi TSKeywordFunction                             guifg=#bb9af7 guibg=NONE gui=NONE
hi link TSRepeat                                 Repeat
hi TSKeyword                                     cterm=italic gui=italic guifg=#9d7cd8 guibg=NONE
hi TSProperty                                    guifg=#73daca guibg=NONE gui=NONE
hi link TSInclude                                Include
hi link TSTodo                                   Todo
hi link TSFuncMacro                              Macro
hi link @type.builtin                            TSTypeBuiltin
hi link TSTypeBuiltin                            Type
hi link TSBoolean                                Boolean
hi link TSFuncBuiltin                            Special
hi link TSString                                 String
hi link @variable                                TSVariable
hi clear TSVariable
hi link @function.call                           TSFunctionCall
hi link TSFunctionCall                           TSFunction
hi link @text.emphasis                           TSEmphasis
hi TSEmphasis                                    cterm=italic gui=italic
hi link @text.strong                             TSStrong
hi TSStrong                                      cterm=bold gui=bold
hi link TSType                                   Type
hi link TSText                                   TSNone
hi link @variable.builtin                        TSVariableBuiltin
hi TSVariableBuiltin                             guifg=#f7768e guibg=NONE gui=NONE
hi link @tag.delimiter                           TSTagDelimiter
hi link TSTagDelimiter                           Delimiter
hi link @namespace                               TSNamespace
hi link TSNamespace                              Include
hi link TSException                              Exception
hi link @tag.attribute                           TSTagAttribute
hi link TSTagAttribute                           TSProperty
hi link TSFloat                                  Float
hi link TSDefine                                 Define
hi link @type.qualifier                          TSTypeQualifier
hi link TSTypeQualifier                          Type
hi link @string.special                          TSStringSpecial
hi link TSStringSpecial                          SpecialChar
hi TSConstructor                                 guifg=#bb9af7 guibg=NONE gui=NONE
hi TSStringEscape                                guifg=#bb9af7 guibg=NONE gui=NONE
hi link TSConstMacro                             Define
hi link @string.regex                            TSStringRegex
hi TSStringRegex                                 guifg=#b4f9f8 guibg=NONE gui=NONE
hi link TSConstBuiltin                           Special
hi link @text.danger                             TSDanger
hi TSDanger                                      guifg=#1a1b26 guibg=#db4b4b gui=NONE
hi link TSConstant                               Constant
hi link @text.warning                            TSWarning
hi TSWarning                                     guifg=#1a1b26 guibg=#e0af68 gui=NONE
hi link TSConditional                            Conditional
hi link @punctuation.special                     TSPunctSpecial
hi TSPunctSpecial                                guifg=#89ddff guibg=NONE gui=NONE
hi link TSComment                                Comment
hi link TSNumber                                 Number
hi link @punctuation.bracket                     TSPunctBracket
hi TSPunctBracket                                guifg=#a9b1d6 guibg=NONE gui=NONE
hi link @error                                   TSError
hi clear TSError
hi link TSCharacterSpecial                       SpecialChar
hi link @none                                    TSNone
hi TSNone                                        cterm=NONE gui=NONE
hi link @punctuation.delimiter                   TSPunctDelimiter
hi TSPunctDelimiter                              guifg=#89ddff guibg=NONE gui=NONE
hi link TSDebug                                  Debug
hi link TSCharacter                              Character
hi link TSTypeDefinition                         Typedef
hi link @text.reference                          TSTextReference
hi TSTextReference                               guifg=#1abc9c guibg=NONE gui=NONE
hi TSLabel                                       guifg=#7aa2f7 guibg=NONE gui=NONE
hi link @text.math                               TSMath
hi link TSMath                                   Special
hi link TelescopePreviewSticky                   Keyword
hi link TelescopePreviewHyphen                   NonText
hi link TelescopePreviewExecute                  String
hi link TelescopePreviewWrite                    Statement
hi link TelescopePreviewRead                     Constant
hi link TelescopePreviewSocket                   Statement
hi link TelescopePreviewLink                     Special
hi link TelescopePreviewBlock                    Constant
hi link TelescopePreviewDirectory                Directory
hi link TelescopePreviewCharDev                  Constant
hi link TelescopePreviewPipe                     Constant
hi link TelescopePreviewMatch                    Search
hi link TelescopePreviewLine                     Visual
hi link TelescopePromptPrefix                    Identifier
hi link TelescopeMatching                        Special
hi link TelescopePromptCounter                   NonText
hi link TelescopePreviewTitle                    TelescopeTitle
hi link TelescopeTitle                           TelescopeBorder
hi TelescopeBorder                               guifg=#3d59a1 guibg=#1a1b26 gui=NONE
hi link TelescopeResultsTitle                    TelescopeTitle
hi link TelescopePromptTitle                     TelescopeTitle
hi link TelescopePreviewBorder                   TelescopeBorder
hi link TelescopeResultsBorder                   TelescopeBorder
hi link TelescopeResultsDiffUntracked            NonText
hi link TelescopeResultsDiffDelete               DiffDelete
hi link TelescopeResultsDiffAdd                  DiffAdd
hi link TelescopeResultsDiffChange               DiffChange
hi link TelescopePromptBorder                    TelescopeBorder
hi link TelescopeResultsNormal                   TelescopeNormal
hi TelescopeNormal                               guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi link TelescopePromptNormal                    TelescopeNormal
hi link TelescopeMultiIcon                       Identifier
hi link TelescopeMultiSelection                  Type
hi link TelescopeSelectionCaret                  TelescopeSelection
hi link TelescopeSelection                       Visual
hi link TelescopeResultsFileIcon                 Normal
hi link TelescopeResultsSpecialComment           SpecialComment
hi link TelescopeResultsComment                  Comment
hi link TelescopeResultsNumber                   Number
hi link TelescopeResultsIdentifier               Identifier
hi link TelescopeResultsLineNr                   LineNr
hi link TelescopeResultsVariable                 SpecialChar
hi link TelescopeResultsStruct                   Struct
hi clear Struct
hi link TelescopeResultsOperator                 Operator
hi link TelescopeResultsMethod                   Method
hi clear Method
hi link TelescopeResultsFunction                 Function
hi link TelescopeResultsField                    Function
hi link TelescopeResultsConstant                 Constant
hi link TelescopeResultsClass                    Function
hi link TelescopePreviewMessageFillchar          TelescopePreviewMessage
hi link TelescopePreviewMessage                  TelescopePreviewNormal
hi link TelescopePreviewNormal                   TelescopeNormal
hi link TelescopePreviewDate                     Directory
hi link TelescopePreviewGroup                    Constant
hi link TelescopePreviewUser                     Constant
hi link TelescopePreviewSize                     String
hi CmpDocumentationBorder                        guifg=#3d59a1 guibg=#1a1b26 gui=NONE
hi CmpDocumentation                              guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi LightspeedUnlabeledMatch                      cterm=bold gui=bold guifg=#0db9d7 guibg=NONE
hi LightspeedShortcut                            cterm=bold,underline gui=bold,underline guifg=#c0caf5 guibg=#ff007c
hi LightspeedPendingOpArea                       guifg=#c0caf5 guibg=#ff007c gui=NONE
hi LightspeedOneCharMatch                        cterm=bold gui=bold guifg=#c0caf5 guibg=#ff007c
hi LightspeedMaskedChar                          guifg=#ff9e64 guibg=NONE gui=NONE
hi LightspeedLabelDistantOverlapped              cterm=underline gui=underline guifg=#41a6b5 guibg=NONE
hi LightspeedLabelDistant                        cterm=bold,underline gui=bold,underline guifg=#73daca guibg=NONE
hi LightspeedGreyWash                            guifg=#545c7e guibg=NONE gui=NONE
hi LeapLabelSecondary                            cterm=bold gui=bold guifg=#73daca guibg=NONE
hi LeapLabelPrimary                              cterm=bold gui=bold guifg=#ff007c guibg=NONE
hi LeapMatch                                     cterm=bold gui=bold guifg=#c0caf5 guibg=#ff007c
hi TSNodeUnmatched                               guifg=#545c7e guibg=NONE gui=NONE
hi TSNodeKey                                     cterm=bold gui=bold guifg=#ff007c guibg=NONE
hi HopUnmatched                                  guifg=#545c7e guibg=NONE gui=NONE
hi HopNextKey2                                   guifg=#127a90 guibg=NONE gui=NONE
hi HopNextKey1                                   cterm=bold gui=bold guifg=#0db9d7 guibg=NONE
hi HopNextKey                                    cterm=bold gui=bold guifg=#ff007c guibg=NONE
hi SneakScope                                    guibg=#33467c guifg=#cdd6f4 gui=NONE
hi BufferTabpage                                 guifg=#3d59a1 guibg=#1a1b26 gui=NONE
hi BufferTabpages                                guibg=#1a1b26 guifg=#cdd6f4 gui=NONE
hi BufferInactiveTarget                          guifg=#f7768e guibg=#1a1b26 gui=NONE
hi BufferInactiveSign                            guifg=#3d59a1 guibg=#1a1b26 gui=NONE
hi BufferInactiveMod                             guifg=#a58354 guibg=#1a1b26 gui=NONE
hi BufferInactiveIndex                           guifg=#737aa2 guibg=#1a1b26 gui=NONE
hi BufferInactive                                guifg=#737aa2 guibg=#1a1b26 gui=NONE
hi BufferVisibleTarget                           guifg=#f7768e guibg=#1a1b26 gui=NONE
hi BufferVisibleSign                             guifg=#0db9d7 guibg=#1a1b26 gui=NONE
hi BufferVisibleMod                              guifg=#e0af68 guibg=#1a1b26 gui=NONE
hi BufferVisibleIndex                            guifg=#0db9d7 guibg=#1a1b26 gui=NONE
hi BufferVisible                                 guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi BufferCurrentTarget                           guifg=#f7768e guibg=#3b4261 gui=NONE
hi BufferCurrentSign                             guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi BufferCurrentMod                              guifg=#e0af68 guibg=#3b4261 gui=NONE
hi LspSagaDefPreviewBorder                       guifg=#9ece6a guibg=NONE gui=NONE
hi BufferCurrent                                 guifg=#c0caf5 guibg=#3b4261 gui=NONE
hi healthWarning                                 guifg=#e0af68 guibg=NONE gui=NONE
hi healthSuccess                                 guifg=#73daca guibg=NONE gui=NONE
hi healthError                                   guifg=#db4b4b guibg=NONE gui=NONE
hi TargetWord                                    guifg=#7dcfff guibg=NONE gui=NONE
hi link DiagnosticWarning                        DiagnosticWarn
hi DefinitionIcon                                guifg=#7aa2f7 guibg=NONE gui=NONE
hi DefinitionCount                               guifg=#9d7cd8 guibg=NONE gui=NONE
hi WhichKeySeperator                             guifg=#565f89 guibg=NONE gui=NONE
hi WhichKeyGroup                                 guifg=#7aa2f7 guibg=NONE gui=NONE
hi WhichKey                                      guifg=#7dcfff guibg=NONE gui=NONE
hi AlphaButtons                                  guifg=#bb9af7 guibg=NONE gui=NONE
hi AlphaHeaderLabel                              guifg=#ff9e64 guibg=NONE gui=NONE
hi AlphaHeader                                   guifg=#7aa2f7 guibg=NONE gui=NONE
hi AlphaShortcut                                 guifg=#7dcfff guibg=NONE gui=NONE
hi DashboardCenter                               guifg=#bb9af7 guibg=NONE gui=NONE
hi DashboardHeader                               guifg=#7aa2f7 guibg=NONE gui=NONE
hi DashboardShortCut                             guifg=#7dcfff guibg=NONE gui=NONE
hi GlyphPalette7                                 guifg=#c0caf5 guibg=NONE gui=NONE
hi GlyphPalette6                                 guifg=#73daca guibg=NONE gui=NONE
hi GlyphPalette4                                 guifg=#7aa2f7 guibg=NONE gui=NONE
hi GlyphPalette2                                 guifg=#9ece6a guibg=NONE gui=NONE
hi GlyphPalette1                                 guifg=#db4b4b guibg=NONE gui=NONE
hi MiniTrailspace                                guibg=#f7768e guifg=#cdd6f4 gui=NONE
hi MiniTestPass                                  cterm=bold gui=bold guifg=#9ece6a guibg=NONE
hi MiniTestFail                                  cterm=bold gui=bold guifg=#f7768e guibg=NONE
hi MiniTestEmphasis                              cterm=bold gui=bold
hi MiniTablineVisible                            guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi MiniTablineTabpagesection                     guibg=#1a1b26 guifg=#cdd6f4 gui=NONE
hi MiniTablineModifiedVisible                    guifg=#e0af68 guibg=#1a1b26 gui=NONE
hi MiniTablineModifiedHidden                     guifg=#a58354 guibg=#1a1b26 gui=NONE
hi MiniTablineModifiedCurrent                    guifg=#e0af68 guibg=#3b4261 gui=NONE
hi MiniTablineHidden                             guifg=#737aa2 guibg=#1a1b26 gui=NONE
hi MiniTablineFill                               guibg=#15161e guifg=#cdd6f4 gui=NONE
hi MiniTablineCurrent                            guifg=#c0caf5 guibg=#3b4261 gui=NONE
hi MiniSurround                                  guifg=#15161e guibg=#ff9e64 gui=NONE
hi MiniStatuslineModeVisual                      cterm=bold gui=bold guifg=#15161e guibg=#bb9af7
hi MiniStatuslineModeReplace                     cterm=bold gui=bold guifg=#15161e guibg=#f7768e
hi MiniStatuslineModeOther                       cterm=bold gui=bold guifg=#15161e guibg=#1abc9c
hi MiniStatuslineModeInsert                      cterm=bold gui=bold guifg=#15161e guibg=#9ece6a
hi MiniStatuslineInactive                        guifg=#7aa2f7 guibg=#1a1b26 gui=NONE
hi MiniStatuslineFilename                        guifg=#a9b1d6 guibg=#3b4261 gui=NONE
hi MiniStatuslineFileinfo                        guifg=#a9b1d6 guibg=#292e42 gui=NONE
hi MiniStatuslineDevinfo                         guifg=#a9b1d6 guibg=#292e42 gui=NONE
hi MiniStarterQuery                              guifg=#0db9d7 guibg=NONE gui=NONE
hi MiniStarterSection                            guifg=#2ac3de guibg=NONE gui=NONE
hi MiniStarterItemPrefix                         guifg=#e0af68 guibg=NONE gui=NONE
hi MiniStarterItemBullet                         guifg=#3d59a1 guibg=NONE gui=NONE
hi MiniStarterItem                               guifg=#c0caf5 guibg=#1a1b26 gui=NONE
hi MiniStarterInactive                           cterm=italic gui=italic guifg=#565f89 guibg=NONE
hi MiniStarterHeader                             guifg=#7aa2f7 guibg=NONE gui=NONE
hi MiniStarterFooter                             cterm=italic gui=italic guifg=#e0af68 guibg=NONE
hi MiniStatuslineModeNormal                      cterm=bold gui=bold guifg=#15161e guibg=#7aa2f7
hi MiniStatuslineModeCommand                     cterm=bold gui=bold guifg=#15161e guibg=#e0af68
hi MiniStarterCurrent                            cterm=nocombine gui=nocombine
hi MiniJump2dSpot                                cterm=bold,nocombine gui=bold,nocombine guifg=#ff007c guibg=NONE
hi FernBranchText                                guifg=#7aa2f7 guibg=NONE gui=NONE
hi NeoTreeNormalNC                               guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi NeoTreeNormal                                 guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi MiniJump                                      guifg=#ffffff guibg=#ff007c gui=NONE
hi NeotestTarget                                 guifg=#7aa2f7 guibg=NONE gui=NONE
hi NeotestMarked                                 guifg=#7aa2f7 guibg=NONE gui=NONE
hi NeotestWinSelect                              guifg=#7aa2f7 guibg=NONE gui=NONE
hi NeotestAdapterName                            cterm=bold gui=bold guifg=#9d7cd8 guibg=NONE
hi NeotestExpandMarker                           guifg=#a9b1d6 guibg=NONE gui=NONE
hi NeotestIndent                                 guifg=#a9b1d6 guibg=NONE gui=NONE
hi NeotestBorder                                 guifg=#7aa2f7 guibg=NONE gui=NONE
hi NeotestDir                                    guifg=#7aa2f7 guibg=NONE gui=NONE
hi NeotestFile                                   guifg=#1abc9c guibg=NONE gui=NONE
hi NeotestFocused                                guifg=#e0af68 guibg=NONE gui=NONE
hi NeotestNamespace                              guifg=#41a6b5 guibg=NONE gui=NONE
hi MiniIndentscopePrefix                         cterm=nocombine gui=nocombine
hi NeotestTest                                   guifg=#a9b1d6 guibg=NONE gui=NONE
hi NeotestSkipped                                guifg=#7aa2f7 guibg=NONE gui=NONE
hi NeotestFailed                                 guifg=#f7768e guibg=NONE gui=NONE
hi NeotestRunning                                guifg=#e0af68 guibg=NONE gui=NONE
hi NeotestPassed                                 guifg=#9ece6a guibg=NONE gui=NONE
hi NeogitDiffAddHighlight                        guifg=#449dab guibg=#20303b gui=NONE
hi NeogitDiffDeleteHighlight                     guifg=#914c54 guibg=#37222c gui=NONE
hi NeogitDiffContextHighlight                    guifg=#a9b1d6 guibg=#2b2f44 gui=NONE
hi NeogitHunkHeaderHighlight                     guifg=#7aa2f7 guibg=#3b4261 gui=NONE
hi NeogitHunkHeader                              guifg=#c0caf5 guibg=#292e42 gui=NONE
hi NeogitRemote                                  guifg=#9d7cd8 guibg=NONE gui=NONE
hi NeogitBranch                                  guifg=#bb9af7 guibg=NONE gui=NONE
hi diffIndexLine                                 guifg=#bb9af7 guibg=NONE gui=NONE
hi diffLine                                      guifg=#565f89 guibg=NONE gui=NONE
hi diffFile                                      guifg=#7aa2f7 guibg=NONE gui=NONE
hi diffNewFile                                   guifg=#ff9e64 guibg=NONE gui=NONE
hi diffOldFile                                   guifg=#e0af68 guibg=NONE gui=NONE
hi diffChanged                                   guifg=#6183bb guibg=NONE gui=NONE
hi diffRemoved                                   guifg=#914c54 guibg=NONE gui=NONE
hi diffAdded                                     guifg=#449dab guibg=NONE gui=NONE
hi IlluminatedWordWrite                          guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi IlluminatedWordRead                           guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi IlluminatedWordText                           guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi illuminatedCurWord                            guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi illuminatedWord                               guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi TroubleNormal                                 guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi TroubleCount                                  guifg=#bb9af7 guibg=#3b4261 gui=NONE
hi TroubleText                                   guifg=#a9b1d6 guibg=NONE gui=NONE
hi rainbowcol6                                   guifg=#bb9af7 guibg=NONE gui=NONE
hi rainbowcol5                                   guifg=#7aa2f7 guibg=NONE gui=NONE
hi rainbowcol4                                   guifg=#1abc9c guibg=NONE gui=NONE
hi rainbowcol3                                   guifg=#9ece6a guibg=NONE gui=NONE
hi rainbowcol1                                   guifg=#f7768e guibg=NONE gui=NONE
hi GitSignsDelete                                guifg=#b2555b guibg=NONE gui=NONE
hi GitGutterDelete                               guifg=#b2555b guibg=NONE gui=NONE
hi MiniIndentscopeSymbol                         guifg=#2ac3de guibg=NONE gui=NONE
hi ALEWarningSign                                guifg=#e0af68 guibg=NONE gui=NONE
hi ALEErrorSign                                  guifg=#db4b4b guibg=NONE gui=NONE
hi LspCodeLens                                   guifg=#565f89 guibg=NONE gui=NONE
hi LspSignatureActiveParameter                   guifg=#ff9e64 guibg=NONE gui=NONE
hi MiniCursorwordCurrent                         guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi LspReferenceWrite                             guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi LspReferenceRead                              guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi LspReferenceText                              guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi debugBreakpoint                               guifg=#0db9d7 guibg=#192b38 gui=NONE
hi debugPC                                       guibg=#1a1b26 guifg=#cdd6f4 gui=NONE
hi @text.literal.markdown_inline                 guifg=#7aa2f7 guibg=#414868 gui=NONE
hi @punctuation.special.markdown                 cterm=bold gui=bold guifg=#ff9e64 guibg=NONE
hi markdownLinkText                              cterm=underline gui=underline guifg=#7aa2f7 guibg=NONE
hi markdownH2                                    cterm=bold gui=bold guifg=#7aa2f7 guibg=NONE
hi markdownH1                                    cterm=bold gui=bold guifg=#bb9af7 guibg=NONE
hi markdownCodeBlock                             guifg=#1abc9c guibg=NONE gui=NONE
hi markdownCode                                  guifg=#1abc9c guibg=NONE gui=NONE
hi markdownHeadingDelimiter                      cterm=bold gui=bold guifg=#ff9e64 guibg=NONE
hi mkdCodeEnd                                    cterm=bold gui=bold guifg=#1abc9c guibg=NONE
hi mkdCodeStart                                  cterm=bold gui=bold guifg=#1abc9c guibg=NONE
hi MiniCursorword                                guibg=#3b4261 guifg=#cdd6f4 gui=NONE
hi mkdCodeDelimiter                              guifg=#c0caf5 guibg=#414868 gui=NONE
hi htmlH2                                        cterm=bold gui=bold guifg=#7aa2f7 guibg=NONE
hi htmlH1                                        cterm=bold gui=bold guifg=#bb9af7 guibg=NONE
hi qfFileName                                    guifg=#7aa2f7 guibg=NONE gui=NONE
hi qfLineNr                                      guifg=#737aa2 guibg=NONE gui=NONE
hi Italic                                        cterm=italic gui=italic
hi Bold                                          cterm=bold gui=bold
hi MiniCompletionActiveParameter                 cterm=underline gui=underline
hi VisualNOS                                     guibg=#33467c guifg=#cdd6f4 gui=NONE
hi NormalSB                                      guifg=#a9b1d6 guibg=#1a1b26 gui=NONE
hi SignColumnSB                                  guifg=#3b4261 guibg=#1a1b26 gui=NONE
hi GlyphPalette3                                 guifg=#e0af68 guibg=NONE gui=NONE
hi GlyphPalette9                                 guifg=#f7768e guibg=NONE gui=NONE
hi DashboardFooter                               cterm=italic gui=italic guifg=#e0af68 guibg=NONE
hi AlphaFooter                                   cterm=italic gui=italic guifg=#e0af68 guibg=NONE
hi WhichKeyDesc                                  guifg=#bb9af7 guibg=NONE gui=NONE
hi WhichKeySeparator                             guifg=#565f89 guibg=NONE gui=NONE
hi CursorIM                                      guifg=#1a1b26 guibg=#c0caf5 gui=NONE
hi WhichKeyFloat                                 guibg=#1a1b26 guifg=#cdd6f4 gui=NONE
hi WhichKeyValue                                 guifg=#737aa2 guibg=NONE gui=NONE
hi link DiagnosticInformation                    DiagnosticInfo
hi Foo                                           guifg=#ff007c guibg=#ff007c gui=NONE
hi LspFloatWinNormal                             guibg=#1a1b26 guifg=#cdd6f4 gui=NONE
hi LspFloatWinBorder                             guifg=#3d59a1 guibg=NONE gui=NONE
hi LspSagaBorderTitle                            guifg=#7dcfff guibg=NONE gui=NONE
hi LspSagaHoverBorder                            guifg=#7aa2f7 guibg=NONE gui=NONE
hi LspSagaRenameBorder                           guifg=#9ece6a guibg=NONE gui=NONE
hi LspSagaCodeActionBorder                       guifg=#7aa2f7 guibg=NONE gui=NONE
hi LspSagaFinderSelection                        guifg=#33467c guibg=NONE gui=NONE
hi LspSagaCodeActionTitle                        guifg=#2ac3de guibg=NONE gui=NONE
hi LspSagaCodeActionContent                      guifg=#9d7cd8 guibg=NONE gui=NONE
hi LspSagaSignatureHelpBorder                    guifg=#f7768e guibg=NONE gui=NONE
hi ReferencesCount                               guifg=#9d7cd8 guibg=NONE gui=NONE
hi ReferencesIcon                                guifg=#7aa2f7 guibg=NONE gui=NONE
hi BufferCurrentIndex                            guifg=#0db9d7 guibg=#3b4261 gui=NONE
hi LightspeedLabelOverlapped                     cterm=underline gui=underline guifg=#ff007c guibg=NONE
hi ScrollbarHandle                               guibg=#292e42 guifg=#cdd6f4 gui=NONE
hi LightspeedLabel                               cterm=bold,underline gui=bold,underline guifg=#ff007c guibg=NONE
hi LeapBackdrop                                  guifg=#545c7e guibg=NONE gui=NONE
hi Sneak                                         guifg=#292e42 guibg=#bb9af7 gui=NONE
hi GitGutterAdd                                  guifg=#266d6a guibg=NONE gui=NONE
hi GitGutterChange                               guifg=#536c9e guibg=NONE gui=NONE
hi GitSignsAdd                                   guifg=#266d6a guibg=NONE gui=NONE
hi GitSignsChange                                guifg=#536c9e guibg=NONE gui=NONE
hi rainbowcol2                                   guifg=#e0af68 guibg=NONE gui=NONE
hi rainbowcol7                                   guifg=#9d7cd8 guibg=NONE gui=NONE
hi link YankyYanked                              IncSearch
hi link YankyPut                                 IncSearch
hi ScrollbarMisc                                 guifg=#9d7cd8 guibg=NONE gui=NONE
hi ScrollbarMiscHandle                           guifg=#9d7cd8 guibg=#292e42 gui=NONE
hi ScrollbarHint                                 guifg=#1abc9c guibg=NONE gui=NONE
hi ScrollbarHintHandle                           guifg=#1abc9c guibg=#292e42 gui=NONE
hi ScrollbarInfo                                 guifg=#0db9d7 guibg=NONE gui=NONE
hi ScrollbarInfoHandle                           guifg=#0db9d7 guibg=#292e42 gui=NONE
hi ScrollbarWarn                                 guifg=#e0af68 guibg=NONE gui=NONE
hi ScrollbarWarnHandle                           guifg=#e0af68 guibg=#292e42 gui=NONE
hi ScrollbarError                                guifg=#db4b4b guibg=NONE gui=NONE
hi ScrollbarErrorHandle                          guifg=#db4b4b guibg=#292e42 gui=NONE
hi ScrollbarSearch                               guifg=#ff9e64 guibg=NONE gui=NONE
hi ScrollbarSearchHandle                         guifg=#ff9e64 guibg=#292e42 gui=NONE
hi IndentBlanklineContextChar                    guifg=#9d7cd8 guibg=NONE gui=NONE
hi IndentBlanklineChar                           guifg=#3b4261 guibg=NONE gui=NONE
hi NavicSeparator                                guifg=#c0caf5 guibg=NONE gui=NONE
hi NavicText                                     guifg=#c0caf5 guibg=NONE gui=NONE
hi NavicIconsTypeParameter                       guifg=#73daca guibg=NONE gui=NONE
hi NavicIconsOperator                            guifg=#c0caf5 guibg=NONE gui=NONE
hi NavicIconsEvent                               guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsStruct                              guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsEnumMember                          guifg=#73daca guibg=NONE gui=NONE
hi NavicIconsNull                                guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsKeyword                             guifg=#9d7cd8 guibg=NONE gui=NONE
hi NavicIconsKey                                 guifg=#9d7cd8 guibg=NONE gui=NONE
hi NavicIconsObject                              guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsArray                               guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsBoolean                             guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsNumber                              guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsString                              guifg=#9ece6a guibg=NONE gui=NONE
hi NavicIconsConstant                            guifg=#bb9af7 guibg=NONE gui=NONE
hi NavicIconsVariable                            guifg=#bb9af7 guibg=NONE gui=NONE
hi NavicIconsFunction                            guifg=#7aa2f7 guibg=NONE gui=NONE
hi NavicIconsInterface                           guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsEnum                                guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsConstructor                         guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsField                               guifg=#73daca guibg=NONE gui=NONE
hi NavicIconsProperty                            guifg=#73daca guibg=NONE gui=NONE
hi NavicIconsMethod                              guifg=#7aa2f7 guibg=NONE gui=NONE
hi NavicIconsClass                               guifg=#ff9e64 guibg=NONE gui=NONE
hi NavicIconsPackage                             guifg=#c0caf5 guibg=NONE gui=NONE
hi NavicIconsNamespace                           guifg=#c0caf5 guibg=NONE gui=NONE
hi NavicIconsModule                              guifg=#e0af68 guibg=NONE gui=NONE
hi NavicIconsFile                                guifg=#c0caf5 guibg=NONE gui=NONE
