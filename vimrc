 set nocompatible              " be iMproved, required

" VUNDLE RAP
""""""""""""""""""""""

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Filepath plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

"Syntax and Coloring
Plugin 'flazz/vim-colorschemes'
Plugin 'luochen1990/rainbow'
Plugin 'bronson/vim-trailing-whitespace'

" Error Checking
Plugin 'scrooloose/syntastic'
"Plugin 'neomake/neomake'
" Various
Plugin 'garbas/vim-snipmate' " ultasnips ? xptemplates
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'

" Haskell Plugins
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
" Plugin 'neovimhaskell/haskell-vim'
" Plugin 'bitc/vim-hdevtools'
" Bundle 'git://github.com/urso/haskell_syntax.vim.git'
"
Plugin 'scrooloose/nerdcommenter'

Plugin 'Shougo/neocomplete.vim'
Plugin 'jplaut/vim-arduino-ino'
Plugin 'vim-airline/vim-airline'
Plugin 'jgdavey/tslime.vim'
" Plugin 'christoomey/vim-tmux-navigator'

" Editing
Plugin 'tomtom/tcomment_vim' " gc
Plugin 'tpope/vim-surround'  " v S {char}

" Helpers
Plugin 'Shougo/vimproc.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'mhinz/vim-startify'
Plugin 'ktonga/vim-follow-my-lead'

Plugin 'tpope/vim-fugitive'

Plugin 'majutsushi/tagbar'

Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-rooter'

Plugin 'easymotion/vim-easymotion'
Plugin 'elzr/vim-json'
call vundle#end()
filetype plugin indent on

"Preview Window
"-------------------
"autocmd WinEnter * if &previewwindow && winnr() > 1 | wincmd K | endif
" set previewheight=25
" au BufEnter ?* call PreviewHeightWorkAround()
" func PreviewHeightWorkAround()
"     if &previewwindow
"         exec 'setlocal winheight='.&previewheight
"     endif
" endfunc
"
"Colors
"
"""""""""""""""""

syntax on

colorscheme agmacs


let g:haskell_classic_highlighting = 0
let g:rainbow_active = 1

let g:airline#extensions#tabline#enabled = 1

let g:ackprg = 'ag --nogroup --nocolor --column'


au BufRead,BufNewFile *.hst set filetype=haskell


" Arduiono
" """""""""""""

" Default: /Applications/Arduino.app/Contents/Resources/Java
" let g:vim_arduino_library_path = /path/to/arduino/installation
" Default: result of `$(ls /dev/tty.* | grep usb)`

" let g:vim_arduino_serial_port = /my/serial/port
"
" General Keys
""""""""""""""""""
set notimeout

nnoremap - $

inoremap <Left> <noh> " <c-o>:echo "no left for you!"<cr>
inoremap <Right> <noh>
inoremap <Down> <noh>
inoremap <Up> <noh>

nnoremap <Left> <noh>
nnoremap <Right> <noh>
nnoremap <Down> <noh>
nnoremap <Up> <noh>

vnoremap <Left> <noh>
vnoremap <Right> <noh>
vnoremap <Down> <noh>
vnoremap <Up> <noh>

" nnoremap <CR> :noh<CR><CR>

" Follow the Leader
"
vmap <Leader>y "+y
"---------------------
let mapleader=" "
" nnoremap <Leader>fs :w<CR>
vmap <Leader>py "+y
nmap <Leader>pp "+p<Esc>


imap jk <Esc>
"|autocmd! BufWritePost * Neomake
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
nmap <Leader>tm :Tmux :r<CR>:Tmux main<CR>
nmap <Leader>tw :Tmux
nmap <Leader>tr :Tmux :rtl<CR>:Tmux :rtl<CR>

map <Leader>pr :so $MYVIMRC<CR>

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR> :ccl <CR>
autocmd BufReadPost quickfix nnoremap <buffer> <Leader>j <CR>

" Movement
" nmap <CR> o <Esc>x
" :FixWhitespace<CR>

" nnoremap <CR> :noh<CR>


nmap mj :m +1 <CR>
nmap mk :m -2 <CR>



" Windows

nnoremap <Leader>wh <C-W><C-H>
nnoremap <Leader>wj <C-W><C-J>
nnoremap <Leader>wk <C-W><C-K>
nnoremap <Leader>wl <C-W><C-L>

nnoremap <Leader>wcj <C-W><C-J>:q<CR>

nnoremap <Leader>wv+ :vertical resize +
"10<CR>
nnoremap <Leader>wv- :vertical resize -
" 1i<CR>

nnoremap <Leader>wtl :vsplit<CR>:vertical resize -25<CR>

nnoremap <Leader>wo :wincmd p<CR>

nnoremap <Leader>wq :close<CR>
nnoremap <Leader>pw :w<CR>
nnoremap <Leader>pq :q<CR>
" nnoremap <Leader>pwq :wq<CR>

nnoremap <Leader>fw :FixWhitespace<CR>

" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

nnoremap <Leader>pv :edit ~/.vimrc<CR>

autocmd InsertEnter,InsertLeave * set cul!

nnoremap <Leader>ps :Ack --haskell

" TAGS

"Terminal
"-___________
tnoremap <Esc> <C-\><C-n>?\$<CR>:noh<CR>
nnoremap <Leader>0 ?\$<CR>

nnoremap <silent> <esc> :noh<cr><esc>

tmap jk <Esc>$
tmap kj <Esc>l

" humbers
set number
set relativenumber

" Wrapping
set nowrap
set tw=0

set showmode

" 'Sensible Defaults'

set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
set mouse=a
set history=1000

" Syntastic
""""""""""""""""""

map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 1
let g:syntastic_enable_balloons = 1


let g:syntastic_quiet_messages = {'regex': 'Reduce duplication\|Redundant bracket\|Eta reduce\|Use record pattern\|Move brackets\|Use replicateM\|Control.Arrow\|Use uncurry\|Use print\|Redundant return\|Use camel'}

autocmd FileType qf wincmd J

" Haskell Stuff
"""""""""""""""""

let g:haskell_enable_typeroles = 1

" ghc-mod
""""""""""""""""""

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

let g:ghcmod_hlint_options = ['--ignore=Redundant bracket']

" supertab - Replace with You Complete Me?
"""""""""""""""""""""

let g:SuperTabDefaultCompletionType = "<c-p>"
" '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" nerdtree
""""""""""""""""""""

map <Leader>n :NERDTreeToggle<CR>

" Tabularize
""""""""""""""""""""

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>
vmap aa :Tabularize /as<CR>
" ctrl-p
""""""""""""""""""""

" :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
noremap <leader>f<space> :CtrlPMixed

map <Leader>pf :CtrlP<CR>
map <Leader>pb :CtrlPBuffer<CR>
map <leader>pt :CtrlPTag<CR>

map <leader>tq :tabclose<CR>
noremap <silent><Leader>t] <C-w><C-]><C-w>T

noremap <silent><Leader>tp <C-w>}
noremap <silent><Leader>to <C-w>z

let g:ctrlp_custom_ignore = '\v[\/]dist$'

let g:ctrlp_reuse_window = 1

set wildignore+=*/build
set wildignore+=*/dev_stuff/output/batch_scores
set wildignore+=*/dist
set wildignore+=*/.cabal-sandbox
set wildignore+=*/.git
set wildignore+=*/dev_stuff/input/old
set wildignore+=*/dev_stuff/workspace/old
set wildignore+=*/dev_stuff/output/old

" Tests
" """"""""
"let g:hdevtools_options = '-g-isrc -g-Wall'

" function! FindCabalSandboxRoot()
"     return finddir('.cabal-sandbox', './;')
" endfunction
"
" function! FindCabalSandboxRootPackageConf()
"     return glob(FindCabalSandboxRoot().'/*-packages.conf.d')
" endfunction
" "
" function! HaskellSourceDir()
"     return fnamemodify(FindCabalSandBVox(), ':h:h' . '/src')
" endfunction
"
" let g:hdevtools_options = '-g-isrc -g-Wall -g-package-conf='.FindCabalSandboxRootPackageConf()


