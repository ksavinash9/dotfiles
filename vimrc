
set nocompatible
filetype off

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
 " required!
 Plugin 'gmarik/Vundle.vim'

 " My Plugins here:
 "
 " original repos on github
 Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
" Plugin 'tpope/vim-rails.git'
" Plugin 'ack.vim'
 Plugin 'sjl/badwolf'
 Plugin 'plasticboy/vim-markdown'
 Plugin 'jtratner/vim-flavored-markdown'
 Plugin 'groenewege/vim-less'
 Plugin 'editorconfig-vim'
 Plugin 'bling/vim-airline'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'kien/ctrlp.vim'
 " vim-scripts repos
 " Plugin 'L9'
 " Plugin 'FuzzyFinder'
 Plugin 'scrooloose/NERDTree'
 Plugin 'jistr/vim-nerdtree-tabs'
 Plugin 'scrooloose/NERDCommenter'
 Plugin 'scrooloose/syntastic'
 Plugin 'Tabular'
 Plugin 'pangloss/vim-javascript'
 Plugin 'mxw/vim-jsx'
 Plugin 'leafgarland/typescript-vim'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'ternjs/tern_for_vim'
 " non github repos
 " Plugin 'git://git.wincent.com/command-t.git'
 " ...
call vundle#end()
filetype plugin indent on     " required!

set guifont       = "Menlo:12"
let g:colors_name = "badwolf"
set background    = "dark"

set modelines=0
syntax enable
set nu
set ruler

" Remove Trailing Whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Nerd Tree Settings
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Nerd Tree Tab Settings
let g:nerdtree_tabs_open_on_console_startup=1
:set tabstop=4 shiftwidth=4 expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Special EOL char
set listchars=tab:¬\ ,eol:↵                                         " set the character for special char
" toggle for showing eol and other char
" nnoremap <silent> <leader>l :set list!<CR>
:set cursorline
:set cursorcolumn
map <Leader> <Plug>(easymotion-prefix)
