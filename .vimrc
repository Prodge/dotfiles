syntax on
set number
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab

"List formatting
set com=b:-
set formatoptions=tcroqln

"Starts plugin manager pathogen
execute pathogen#infect()

let g:indentLine_char = '¦'

"Start NERDTree Automatically
"autocmd vimenter * NERDTree
"Close nerdtree upon file select
let NERDTreeQuitOnOpen = 1

"Set NERDTree Toggle to ctrl-n
map <C-n> :NERDTreeToggle<CR>

"Tab Command Maps
nmap <C-t> :tabnew<CR>
nmap <C-u> :tabnext<CR>
nmap <C-e> :tabprevious<CR>
nmap <C-x> :tabclose<CR>

"Mapping Window changes
nmap <silent> <C-d> :wincmd l<CR>
nmap <silent> <C-i> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>


filetype plugin on

"Added at work
let g:paredit_electric_return = 0

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
let g:airline_theme='term'

"Set keybind for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"Set CtrlP to look in the current directory
let g:ctrlp_working_path_mode = 'c'

"Highlighting search matches
:set hlsearch

"Highlight ipdb traces
match Error /ipdb.set_trace()/

"Draw a verticle line at col 80
"set colorcolumn=80

"Make YouCompleteMe close after a completion
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"Keep cursor in the same place when moving pages
nnoremap <PageUp> 20<C-y>
nnoremap <PageDown> 20<C-e>

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
