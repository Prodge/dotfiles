syntax on
set number
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab

"Retab the whole file
map <F7> mzgg=G`z

"List formatting
set com=b:-
set formatoptions=tcroqln

"Starts plugin manager pathogen
execute pathogen#infect()

let g:indentLine_char = '|'

"Start NERDTree Automatically
"Autocmd vimenter * NERDTree
"Close nerdtree upon file select
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1

"Set NERDTree Toggle to ctrl-n
map <C-n> :NERDTreeToggle<CR>

"Rainbow Parens colours
let g:rbpt_colorpairs = [
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

"Enable Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Tab Command Maps
nmap <C-t> :tabnew<CR>
nmap <C-u> :tabnext<CR>
nmap <C-e> :tabprevious<CR>

"Toggle buffers into tabs
let notabs = 0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

"Resize windows
nmap <A-u> :vertical resize +5<CR>
nnoremap <A-e> :vertical resize -5<CR>

"Highlight git conflicts
match Error /=======/
match Error /<<<<<<</
match Error />>>>>>>/

filetype plugin on

let g:paredit_leader = '\'
let g:paredit_electric_return = 0

"Nerdtree ignore compiled python files
let NERDTreeIgnore = ['\.pyc$']

colorscheme zenburn
highlight Normal ctermfg=grey ctermbg=None
"Setting tab colour
highlight TabLineSel ctermfg=Red ctermbg=None

"Splits
set splitbelow
set splitright

"Automatically remove whitespace at end of line on file save
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"Highlight trailing whitespace
"match ErrorMsg '\s\+$'

"Highlight lines longer than 80 characters
"match Error /\%81v.\+/

"Enable Airline all the time
set laststatus=2
"Set Airline colourscheme
let g:airline_theme='distinguished'

"Set keybind for CtrlP
let g:ctrlp_map = '<c-p>'

"Toggle paste mode shortcut
set pastetoggle=<F2>
let g:ctrlp_cmd = 'CtrlP'
"Set CtrlP to look in the current directory
let g:ctrlp_working_path_mode = 'c'
"Set persistant ctrlp cache
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"use ag instead of vim's globpath to search
"NOTE: Need to install ag to use this
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l -f --nocolor --ignore-case --ignore-dir venv --ignore-dir lib --ignore-dir class --ignore-dir bin --ignore-dir build-vptest --ignore-dir build-vpweb --ignore-dir node_modules --ignore-dir vpweb --ignore-dir vptest --ignore-dir cover --ignore-dir media_files --ignore "*.pyc" -g ""'
endif

"Bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"Highlighting search matches
set hlsearch

"Highlight ipdb traces
match Error /ipdb.set_trace()/

"Draw a verticle line at col 80
"set colorcolumn=80

"Make YouCompleteMe close after a completion
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"YouCompleteMe GoTo Maps
nmap <C-g> :YcmCompleter GoTo<CR>
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_python_binary_path = 'python'

"Keep cursor in the same place when moving pages
"nnoremap <PageUp> 20<C-y>
"nnoremap <PageDown> 20<C-e>

"Set page up/down to move in smaller increments
nnoremap <PageUp> 20k
nnoremap <PageDown> 20j
inoremap <PageUp> <C-o>20k
inoremap <PageDown> <C-o>20j

"Show the next match while entering a search
"":set incsearch

"Ignore .pyc files (also included in CtrlP
set wildignore+=*.swp,*.zip,*.pyc

set wildchar=<Tab> wildmenu wildmode=full

"Will do a case insensitive search if the search is all lowercase
set smartcase
set ignorecase

"Auto refresh files on change
set autoread

"Filetypes for closetag to run
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

"Remap F1 to escape from insert mode
inoremap <F1> <Esc>
noremap <F1> <Esc>

"Share clipboard with X
"set clipboard=unnamed_plus

"Shortcut to Dsplit to the current word
"nnoremap <C-g> :Dsplit <C-R><C-W><CR>

"jedi-vim go to tabs not buffers when going to definition
let g:jedi#use_tabs_not_buffers = 1

"Navigation for dvorak
nnoremap c k
nnoremap t j
nnoremap n l

vnoremap c k
vnoremap t j
vnoremap n l

"Add a new mapping for 'n' as we just replaced it
nnoremap g n

"Provide chtn / hjkl movements in Insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-t> <C-o>j
inoremap <A-c> <C-o>k
inoremap <A-n> <C-o>l

"Shift navigation jumping movements for chtn
nnoremap H <C-Left>
nnoremap N <C-Right>
inoremap <A-H> <C-Left>
inoremap <A-N> <C-Right>
