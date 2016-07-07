"pathogen

filetype off

call pathogen#infect()

let g:pymode_rope = 0
let g:pymode_rope_guess_project = 0
let g:pymode_rope_completion = 0
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_rope_lookup_project = 0

filetype plugin indent on
syntax on

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbars

"autocmd BufWritePost,FileWritePost *.js :Autoformat
"autocmd BufWritePost,FileWritePost *.js JSHint
au FileType javascript setl tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
au FileType less setl tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
au FileType html setl tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set nofoldenable
let g:pymode_folding=1

let g:pep8_ignore="E501"
let g:syntastic_python_pep8_args="--ignore=E501,W601"
let g:syntastic_python_flake8_args='--ignore=E501,E128,E225'
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225'

"execute pathogen#infect()
"syntax on
"filetype plugin indent on

set ff=unix
set nowrap        " don't wrap lines
set tabstop=4
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set encoding=utf8

let g:ycm_path_to_python_interpreter = '/usr/bin/python'

autocmd FileType qf wincmd J

"NERDTree
"autocmd vimenter * NERDTree
let g:NERDTreeWinPos = "right"
map <C-t> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeQuitOnOpen=1

"ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <C-k> :CtrlPTag<CR>

"vim-gocode
"Bundle 'Blackrush/vim-gocode'
"
" NERDTree sync with editor
"autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

" make Backspace/Del work in isnert mode
set backspace=indent,eol,start

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" Ag.vim settings
let g:ag_working_path_mode="r"

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

let g:ycm_complete_in_comments = 0
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_min_num_of_chars_for_completion = 2

let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'

"vim.ack
let g:ack_default_options = " -H --nocolor --nogroup --column --ignore-dir=Godeps --ignore-dir=_workspace"

let g:ycm_server_keep_logfiles = 1

" set path to js-beautify file
"   let g:jsbeautify_file = fnameescape(fnamemodify(expand("<sfile>"),
"   ":h")."/bundle/js-beautify/beautify.js") 
"
" let g:jsbeautify = {"indent_size": 4, "indent_char": "\t"} 
set runtimepath^=~/.vim/bundle/ag

" snipmate
ino <c-j> <c-r>=TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

set wildignore+=*.pyc

" kadar se zapre okno ohranis prejsno velikost vseh oken
set noea
" i.e.
" set equalalways

" JSHint
" ko shran pozene linter
let jshint2_save = 1

" jedi
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0

" uporab sistemski clipboard
set clipboard=unnamedplus

" leader gumb za jedi
let mapleader="\\"

" tagi v trenutnem direktoriju
set tags=./tags,tags;

" scrollbari off
set guioptions-=L
set guioptions-=r

" airline
let g:airline#extensions#tabline#enabled = 1

" toggle tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F9> :GitGutterToggle<CR>
nmap <F12> :helpclose<CR>:NERDTreeClose<CR>:windo lcl\|ccl<CR>

" ctrlp presledki
let g:ctrlp_regexp = 1

let g:ctrlp_abbrev = { 
\ 'gmode': 'i',
\ 'abbrevs': [
\ {
\ 'pattern': ' ',
\ 'expanded': '.*',
\ 'mode': 'pfrz',
\ }
\ ]
\ }

" case insensitive search
nnoremap ; /\c

" indent line
:nnoremap <Space> cc
