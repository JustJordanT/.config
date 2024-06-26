" Plugins
set surround
set highlightedyank
set NERDTree
set multiple-cursors
" set commentary
set easymotion
set vim-paragraph-motion
set textobj-indent
set textobj-entire
set argtextobj
set ReplaceWithRegister
set exchange
set nohlsearch

inoremap jj <Esc>

" Plugins Settings
let g:highlightedyank_highlight_duration = "1000"
let g:highlightedyank_highlight_color = "rgba(57, 197, 187, 155)"

" Vim Settings
set scrolloff=5
set history=1000
set showmode
set incsearch
set sw=4
set ts=4
set shiftwidth=2
" set softtabstop=2
set expandtab
set smartindent
set autoindent
set hlsearch
set ignorecase
set smartcase

" Idea Settings
set ideajoin
set ideamarks

map <space> <nop>

let mapleader="\<space>"

" Leader
map <leader>1 <Action>(GoToTab1)
map <leader>2 <Action>(GoToTab2)
map <leader>3 <Action>(GoToTab3)
map <leader>4 <Action>(GoToTab4)
map <leader>5 <Action>(GoToTab5)
map <leader>6 <Action>(GoToTab6)
map <leader>7 <Action>(GoToTab7)
map <leader>8 <Action>(GoToTab8)
map <leader>9 <Action>(GoToTab9)
map <leader>bp <Action>(ToggleLineBreakpoint)
map <leader>bd <Action>(CloseEditor)
map <leader>ba <Action>(CloseAllEditors)
map <leader>bo <Action>(CloseAllEditorsButActive)
map <leader>rr <Action>(Run)
map <leader>rc <Action>(ChooseRunConfiguration)
map <leader>rd <Action>(Debug)
map <leader>rt <Action>(RunTests)
map <leader>rs <Action>(Stop)
map <leader>rn <Action>(RenameElement)
map <leader>re <Action>(Refactorings.QuickListPopupAction)
map <leader>rf <Action>(RecentFiles)
map <leader>rl <Action>(RecentLocations)
map <leader>rp <Action>(ManageRecentProjects)
map <leader>a <Action>(GotoAction)
map <leader>v <Action>(Vcs.QuickListPopupAction)
map <leader>fu <Action>(FindUsages)
map <leader>fs <Action>(FileStructurePopup)
map <leader>uw <Action>(Unwrap)
map <leader>sw <Action>(SurroundWith)
map <leader>sd <Action>(SafeDelete)
map <leader>su <Action>(ShowUsages)
map <leader>sf <Action>(ShowFilePath)
map <leader>si <Action>(SelectIn)
" map <leader>sh <Action>(MoveTabLeft)
" map <leader>sj <Action>(MoveTabDown)
" map <leader>sk <Action>(MoveTabUp)
" map <leader>sl <Action>(MoveTabRight)
" map <leader>lm <Action>(leetcode.NavigatorActionsMenu)
" map <leader>lt <Action>(leetcode.NavigatorActionsToolbar)
" map <leader>ll <Action>(leetcode.editor.group)
map <leader>hl <Action>(HighlightUsagesInFile)
map <leader>c <Action>(CommentByLineComment)
map <leader>qf <Action>(ShowIntentionActions)
map <leader>qp <Action>(QuickPreview)
map <leader>qd <Action>(QuickDefinition)
map <leader>qD <Action>(QuickTypeDefinition)
map <leader>g <Action>(ShowErrorDescription)
map <leader>w <Action>(HideAllWindows)
map <leader>of <Action>(OpenFile)
" map <leader>oi <Action>(OptimizeImports)
map <leader>om <Action>(OverrideMethods)
map <leader>im <Action>(ImplementMethods)
map <leader>mj <Action>(MoveStatementDown)
map <leader>mk <Action>(MoveStatementUp)
map <leader>z <Action>(ToggleZenMode)
map <leader>zx <Action>(Terminal)

" []
nmap [g <Action>(GotoPreviousError)
nmap ]g <Action>(GotoNextError)
nmap <leader>p <Action>(PreviousTab)
nmap <leader>n <Action>(NextTab)
nmap [u <Action>(GotoPrevElementUnderCaretUsage)
nmap ]u <Action>(GotoNextElementUnderCaretUsage)
nmap [o <Action>(PreviousOccurence)
nmap ]o <Action>(NextOccurence)
nmap [m <Action>(MethodUp)
nmap ]m <Action>(MethodDown)
nmap [c <Action>(JumpToLastChange)
nmap ]c <Action>(JumpToNextChange)

" Goto
map ga <Action>(GotoAction)
map gm <Action>(GotoSuperMethod)
map gc <Action>(GotoClass)
map gf <Action>(GotoFile)
map gt <Action>(GotoTest)
map gd <Action>(GotoDeclaration)
map gD <Action>(GotoTypeDeclaration)
map gi <Action>(GotoImplementation)
map gI <Action>(QuickImplementations)
map gs <Action>(GotoSymbol)

" Backslash
nmap \\g <Action>(Generate)
nmap \\fc <Action>(ReformatCode)
nmap \\fp <Action>(FindInPath)
nmap \\o <Action>(SelectAllOccurrences)
nmap \\hc <Action>(CallHierarchy)
nmap \\hm <Action>(MethodHierarchy)
nmap \\ht <Action>(TypeHierarchy)
nmap \\tt <Action>($ShowTranslationDialogAction)
nmap \\ts <Action>($TranslateTextComponent)
nmap \\ti <Action>($InclusiveTranslateAction)
nmap \\te <Action>($ExclusiveTranslateAction)

" Ctrl
map <C-a> ggVG"+y
map <C-l> :noh<CR>
nmap <C-n> <Action>(NewFile)
nmap <C-k> <Action>(NewDir)
