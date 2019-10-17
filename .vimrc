set t_Co=256

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'              " File navigation tree
" Plugin 'scrooloose/syntastic'             " Error checking
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajh17/Spacegray.vim'


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


" Theme 
" set term=builtin_ansi
syntax enable
set background=dark

" colorscheme solarized
" colorscheme spacegray
" colorscheme atom-dark-256
"

" Configuration
set number
set relativenumber
set secure
set binary 
set hidden
set showcmd
set ruler


" Tabbing
set smarttab
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set autoindent
set shiftround                  " Always indent by multiple of shiftwidth

" Splits
set splitbelow
set splitright

set ttyfast                     " Fast terminal
set ruler                       " Show ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

" Temp Files
set nobackup                    " No backup file
set noswapfile                  " No swap file

" Scrolling
set scrolloff=3                 " Keep at least 3 lines above/below
set sidescrolloff=3             " Keep at least 3 lines left/right

let g:spacegray_underline_search = 1

" Searching
set incsearch                   " Incremental search
set hlsearch                    " Highlight matches
set ignorecase                  " Case-insensitive search
set smartcase                   " Unless search contains uppercase letter
set showmatch                   " Show matching bracket

" Cycle through buffers
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>

" NERDTree
let NERDTreeWinPos="left"
let NERDTreeWinSize=35
let NERDTreeIgnore=['\.job$', '^CVS$', '\.orig', '\~$']
let g:NERDTreeStatusline="%f"


" YouCompleteMe {
" let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist=['~/.vim/*']
let g:ycm_always_populate_location_list = 0
let g:ycm_auto_trigger=1
let g:ycm_enable_diagnostic_highlighting=1
let g:ycm_enable_diagnostic_signs=1
let g:ycm_max_diagnostics_to_display=100
let g:ycm_min_num_identifier_candidate_chars=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_open_loclist_on_ycm_diags=1
let g:ycm_show_diagnostics_ui=1
let g:ycm_collect_identifiers_from_tags_files = 1

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_check_on_open=1
" let g:syntastic_cpp_checkers=['cppcheck']
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_python_checkers=['pylint']

" Airline
set laststatus=2                " Alwasy display statusline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme='ayu_dark'

" Markdown Syntax Support
augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Down>    :resize +2<CR>
	nnoremap <Up>  :resize -2<CR>
	nnoremap <Right>  :vertical resize +2<CR>
	nnoremap <Left> :vertical resize -2<CR>
endif

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Column highlight
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

" Invisible Characters
" nmap <leader>l :set list!<CR>   " Toggle hidden characters
" set nolist                      " Hide by default
set listchars=tab:▸\ ,trail:-,extends:>,precedes:<,nbsp:⎵,eol:¬

" Functions
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc





" Custom Key mappings
nmap     <F8>  :TagbarToggle<CR>
nnoremap <F9>  :NERDTreeFind<CR>
nnoremap <F10> :NERDTreeToggle<CR>


