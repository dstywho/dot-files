
set backspace=indent,eol,start
filetype plugin on " Automatically Detect file types
set nocompatible "no vi compatability
syntax on

set background=dark
colorscheme ir_black 

"set t_Co=256 " 256 colors
"hi Normal ctermfg=252 ctermbg=237 term=standout
if $TERM == 'xterm-256color'
       colorscheme ir_black
else
        colorscheme desert
endif

if $TERM == 'screen-256color-bce'
  colorscheme ir_black
endif

if $TERM == 'rxvt'
  set t_Co=256 " 256 colors
  colorscheme ir_black
endif


" Tabs *******************************************
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Status Line**************************************************
set showcmd
set ruler " Show ruler
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set laststatus=2

"set ch=2
" Line Wrappin********************************************************
set nowrap
set linebreak  " Wrap at word

" Cursor highlights ********************************************
set cursorline

set hlsearch

set foldmethod=indent
set foldlevel=1


map <leader>t :FufCoverageFile<CR>


