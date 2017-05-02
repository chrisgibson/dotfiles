" vim-plug
" Plugin manager
" https://github.com/junegunn/vim-plug
"
" :PlugInstall to install plugins

" Specify directory for plugins
call plug#begin('~/.vim/plugged')

" ack.vim
" https://github.com/mileszs/ack.vim
Plug 'mileszs/ack.vim'

" ctrlp.vim
" http://kien.github.io/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" fugitive.vim
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" goyo.vim
" https://github.com/junegunn/goyo.vim
Plug 'junegunn/goyo.vim'

" gruvbox
" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'

" sensible.vim
" https://github.com/tpope/vim-sensible
Plug 'tpope/vim-sensible'

" tagbar
" https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'

" unite.vim
" https://github.com/Shougo/unite.vim
Plug 'Shougo/unite.vim'

" vim-airline
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" vim-gitgutter
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" vimfiler
" https://github.com/Shougo/vimfiler.vim
Plug 'Shougo/vimfiler.vim'

" Initialize plugins
call plug#end()

let mapleader = ","

set nocompatible
set nobackup
set nowb
set noswapfile
set noerrorbells
set novisualbell
set hidden
set history=1000
set ignorecase
set smartcase
" set nolist!
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set wildmode=list:longest
set t_vb=
set updatetime=1000

set expandtab
set shiftwidth=2
set softtabstop=2

set mouse=n
set ttymouse=xterm2

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme gruvbox

" ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
map <leader>b :CtrlPBuffer<cr>

" goyo.vim
" :Goyo - toggle Goyo
let g:goyo_width = '90%'
let g:goyo_height = '90%'

" gruvbox
let g:gruvbox_italic=1

" tagbar
nmap <leader>t :TagbarToggle<CR>

" vim-airline
let g:airline_powerline_fonts = 1
" let g:airline_theme='bubblegum'

" vim-gitgutter
"
" <leader>ha " stage hunk
" <leader>hr " undo hunk
let g:gitgutter_sign_column_always = 0
" let g:gitgutter_realtime = 1
" let g:gitgutter_eager = 1
" let g:gitgutter_async = 1

" vimfiler
"
" gs " toggle safe mode
" K " make directory
" N " new file
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$']
call vimfiler#custom#profile('default', 'context', {'explorer': 1})
map <leader>p :VimFilerExplorer<cr>
