set nocompatible " Unset compatibility with VI, it's 2014!
filetype on
"set t_Co=256

" Load the other 'vimrc' files
source ~/.config/nvim/vundle
syntax on        " enable syntax high-lighting
set number       " enable line numbers 
set nowrap        " Don't column wrap the text
set showmatch     " Show matching brackets
set textwidth=99  " lines longer than 99 columns will be broken
set tabstop=2     " set each tab to width two
set shiftwidth=2  " operation >> indents 2 columns; << unindents 2 columns
set softtabstop=2 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set ruler         " show column
set sw=2          " set shift width to two
set et            " convert tabs to spaces (short for expandtabs)
set backspace=indent,eol,start " enable sensible back-space behavior
set expandtab     " insert spaces when hitting TABs
set shiftround    " round indent to multiple of 'shiftwidth'
set incsearch     " show matches as you type
set ignorecase    " Do case insensitive matching
set smartcase     " case-insensitive EXCEPT if I include an upper case.
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " highligh white spaces and tabs

" Instead of failing command, present dialog if unsaved unchages
set confirm

" Enable mouse in all modes
set mouse=a

" Faster window navigation, woot!
map <C-H> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remap some keys to be less button presses! Thanks Phil
nnoremap ; :
nnoremap <leader>; ;
nmap ;s :sp .<CR>
nmap ;v :vsp .<CR>
nmap ;l :set invnumber<CR>
nmap ;x :x<CR>
nmap ;w :w<CR>
nmap ;q :q!<CR>

" Remap opening NERDTree to something easier
nmap ;n :NERDTree<CR>
" map new escape in insert and visual modes
inoremap ;w <ESC>:w<CR>
inoremap ;x <ESC>:x<CR>
inoremap ;q <ESC>:q<CR>

" These two remap the '`' and the escape keys to refer to one another.
inoremap ` <ESC>
cnoremap ` <ESC>
vnoremap ` <ESC>

inoremap <ESC> `
cnoremap <ESC> `
vnoremap <ESC> `

" Some key-bindings for navigating between windows in neovim
" http://neovim.io/doc/user/vim_terminal_emulator.html
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" timeout between mapped keypresses
set timeoutlen=200

" http://bpdp.blogspot.com/2012/01/arrows-problem-in-nerdtree-vim-plugin.html
let g:NERDTreeDirArrows=0

" https://github.com/rust-lang/rust.vim
let g:rustfmt_autosave=1

" Set a highlight over text on lines over n column chars.
highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

set directory=/tmp " vim swap files get put here.

""""""""""""""""""""""""""""""""""""""
" let mouse wheel scroll file contents
""""""""""""""""""""""""""""""""""""""
if !has("gui_running")
    set mouse=a
    set nocompatible
    inoremap <Esc>[62~ <C-X><C-E>
    inoremap <Esc>[63~ <C-X><C-Y>
    nnoremap <Esc>[62~ <C-E>
    nnoremap <Esc>[63~ <C-Y>
endif

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.nvim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/undodir
  set undolevels=15000
endif
