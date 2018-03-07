"""""""""""""""""""""""""""""""""""""
" - Vundle Setup                    "
" - General                         "
" - User interface                  "
" - Colors and Fonts                "
" - Files and backups               "
" - Text, tab and indent related    "
" - Visual mode related             "
" - Moving around, tabs and buffers "
" - Status line & Tabline           "
" - Editing mappings                "
" - Helper functions                "
"""""""""""""""""""""""""""""""""""""


""""""""""""""""
" Vundle Setup "
""""""""""""""""
set nocompatible              " Be iMproved
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vimJuang/plugins/Vundle.vim
call vundle#begin()

" Pass a path where Vundle should install plugins
call vundle#begin('~/.vimJuang/plugins')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins for general purpose
Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'lervag/vimtex'

" Plugins for filetypes
Plugin 'vim-python/python-syntax'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'Glench/Vim-Jinja2-Syntax'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on


"""""""""""
" General "
"""""""""""
" Enable mouse operation
set mouse=a

" Show relative number line
set nu
set rnu

" Number of history has to remember
set history=700

" Highlight current line
set cursorline

" Enable filetype plugins
filetype plugin on
filetype indent on
set rtp+=~/.vimJuang/after

" Define map leader
let mapleader = ","
let g:mapleader = ","

" :q shortcut
map <leader>q :q<CR>
" :w shortcut
map <leader>w :w<CR>
" :e shortcut
map <leader>e :e<CR>
" :W sudo saves the file
command! W w !sudo tee % > /dev/null
" reload vimrc
map <leader>r :call ReloadRC()<CR>

" Fix Meta Key
let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50


""""""""""""""""""
" User interface "
""""""""""""""""""
" Number of lines above and below the cursor
set scrolloff=7

" Turn on the Wild menu
set wildmenu
set wildmode=longest,full

" Ignore compiled files and version control files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Turn on Wild completion ignore case
set wildignorecase

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1


""""""""""""""""""""
" Colors and Fonts "
""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors
set t_Co=256

" Set colorscheme
colorscheme Tomorrow-Night

" Set background color
set background=dark

" Set utf8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Indicate the 80 column layout concern
set colorcolumn=80


"""""""""""""""""""""""""""
" Files, backups and undo "
"""""""""""""""""""""""""""
" Turn off backup
set nobackup
set nowritebackup
set noswapfile

" Automatically reload buffer when moving cursor. Helpful for syncing same
" file opened at multiple places.
set autoread
autocmd CursorMoved,CursorMovedI * checktime

" Turn on persistent undo
let vimDir = '$HOME/.vimJuang'
let &runtimepath.=','.vimDir
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
	set undolevels=1000
	set undoreload=10000
endif


""""""""""""""""""""""""""""""""
" Text, tab and indent related "
""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set linebreak
set autoindent
set cindent
set cinkeys-=0#
set indentkeys-=0#
set wrap

" Shortcut of built-in auto format
map <leader>= ggVG=<CR>

" Delete trailing white space on save
autocmd BufWrite * :call DeleteTrailingWS()

" Uncover special format characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
map <leader>s<space> :set list!<CR>


"""""""""""""""""""""""
" Visual mode related "
"""""""""""""""""""""""
" Search by pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>


""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers "
""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines
map j gj
map k gk

" Use <space> to search and ctrl-<space> to search backwards
map <space> /
map <c-@> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <c-r>=escape(expand("%:p:h"), ' ')<cr>/

" Remap gt and gy to switch tabs
noremap gt gT
noremap gy gt

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
set switchbuf=useopen,usetab,newtab

" Return to last edit position when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Remember info about open buffers on close
set viminfo^=%

" Use system clipboard
if has("clipboard")
    set clipboard=unnamed " copy to the system clipboard
    if has("unnamedplus") " X11 support
        set clipboard+=unnamedplus
    endif
endif


"""""""""""""""""""""""""
" Status line & Tabline "
"""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line if plugin vim-airline is not working
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Format Tabline
function! MyTabline()
    let s = ''
    for i in range(tabpagenr('$'))
        let tab = i + 1
        let winnr = tabpagewinnr(tab)
        let buflist = tabpagebuflist(tab)
        let bufnr = buflist[winnr - 1]
        let bufname = bufname(bufnr)
        let bufmodified = getbufvar(bufnr, "&mod")

        let s .= '%' . tab . 'T'
        let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
        let s .= ' ' . tab .':'
        let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . '] ' : '[No Name] ')

        if bufmodified
            let s .= '[+] '
        endif
    endfor

    let s .= '%#TabLineFill#'
    return s
endfunction
set tabline=%!MyTabline()
set showtabline=2


""""""""""""""""""""
" Editing mappings "
""""""""""""""""""""
" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <A-j> :m .+1<CR>==
nmap <A-k> :m .-2<CR>==
imap <A-j> <Esc>:m .+1<CR>==gi
imap <A-k> <Esc>:m .-2<CR>==gi
vmap <A-j> :m '>+1<CR>gv=gv
vmap <A-k> :m '<-2<CR>gv=gv

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Insert new line in normal mode
nmap <CR> o<Esc>


""""""""""""""""""""
" Helper functions "
""""""""""""""""""""
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Return mode message if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Delete trailing white space
function! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

" tricks to avoid E127: Cannot redefine function ReloadRC
if exists("*ReloadRC")
    finish
endif

" Reload vimrc, and reload airline
function! ReloadRC()
    source $MYVIMRC
    AirlineRefresh
endfunction
