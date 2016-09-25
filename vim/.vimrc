set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



execute pathogen#infect()
filetype plugin indent on

" Custom configuration
set nu
set paste
syntax on

" change comment color
hi Comment ctermfg =blue

" set indent and tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set expandtab " expand tab to spaces

" indent settiongs
set backspace=indent,eol,start
set autoindent
set smartindent
set whichwrap=b,s,<,>,[,]
set lbr 
set cindent
set cinoptions=:0,g0,t0,(0,Ws,m1

" search settings
set hlsearch
set incsearch
set smartcase

set history=50
set ruler
set showmatch
set showmode
set showcmd
set wildmenu
set wildmode=longest:full,full
"if version >= 703
"	set colorcolumn=80,100
"endif

" status line
set statusline=%<%f\%h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P



" configure default ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'  
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   
let g:ycm_confirm_extra_conf=0   " no longer asks if you want to load the ycm_extra_conf.py configuration
let g:ycm_collect_identifiers_from_tag_files = 1 " Using ctags generated tags file

if has("autocmd")
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
                \ if line("'\"")>0&&line("'\"")<=line("$") |
                \ exe "normal g'\"" |
                \ endif
endif

" set the ariline
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set laststatus=2
set nocompatible
set t_Co=256
" set noshowmode
