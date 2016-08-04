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

"Tab Command Maps
nmap <C-t> :tabnew<CR>
nmap <C-u> :tabnext<CR>
nmap <C-e> :tabprevious<CR>

"Resize windows
nmap <C-j> :vertical resize +5<CR>
nmap <C-k> :vertical resize -5<CR>

"Highlight git conflicts
match Error /=======/
match Error /<<<<<<</
match Error />>>>>>>/

filetype plugin on

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
  let g:ctrlp_user_command = 'ag %s -l -f --nocolor --ignore-case --ignore-dir venv  --ignore-dir build-vptest --ignore-dir build-vpweb --ignore-dir node_modules --ignore-dir vpweb --ignore-dir vptest --ignore-dir cover --ignore-dir media_files --ignore "*.pyc" -g ""'
endif

"bind K to grep word under cursor
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

"Keep cursor in the same place when moving pages
"nnoremap <PageUp> 20<C-y>
"nnoremap <PageDown> 20<C-e>

"Set page up/down to move in smaller increments
nnoremap <PageUp> 20k
nnoremap <PageDown> 20j

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

"filetypes for closetag to run
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" Remap F1 to escape from insert mode
inoremap <F1> <Esc>
noremap <F1> <Esc>
