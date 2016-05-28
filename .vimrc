set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'rip-rip/clang_complete'           " CPP code completion
Plugin 'scrooloose/nerdtree'              " File navigation tree
Plugin 'scrooloose/syntastic'             " Error checking
Plugin 'altercation/vim-colors-solarized' " Colors
Plugin 'valloric/youcompleteme'
Plugin 'majutsushi/tagbar'
" Plugin 'mbbill/undotree'
Plugin 'octol/vim-cpp-enhanced-highlight'

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


" Generic variables
let g:clang_library_path="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib"

" Configuration
syntax enable
set number
set relativenumber
set exrc
set secure

" Tabbing
set smarttab
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set autoindent
set shiftround                  " Always indent by multiple of shiftwidth
set expandtab                   " Always use spaces instead of tabs

" Splits
set splitbelow
set splitright

set ttyfast                     " Fast terminal
set ruler                       " Show ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

" Temp Files
set nobackup                    " No backup file
set noswapfile                  " No swap file

" NERDTree
let NERDTreeWinPos="left"
let NERDTreeWinSize=35
let NERDTreeIgnore=['\.job$', '^CVS$', '\.orig', '\~$']
let g:NERDTreeStatusline="%f"


" YouCompleteMe {
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist=['~/.vim/*']
let g:ycm_always_populate_location_list = 0
let g:ycm_auto_trigger=1
let g:ycm_enable_diagnostic_highlighting=1
let g:ycm_enable_diagnostic_signs=1
let g:ycm_max_diagnostics_to_display=10000
let g:ycm_min_num_identifier_candidate_chars=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_open_loclist_on_ycm_diags=1
let g:ycm_show_diagnostics_ui=1
let g:ycm_collect_identifiers_from_tags_files = 1

" Syntax checking (Syntastic)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_cpp_checkers=['cppcheck']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers=['pylint']

" Column highlight
set colorcolumn=120
highlight ColorColumn ctermbg=darkgray

" Invisible Characters
" nmap <leader>l :set list!<CR>   " Toggle hidden characters
" set nolist                      " Hide by default
" set listchars=tab:▸\ ,trail:-,extends:>,precedes:<,nbsp:⎵,eol:¬

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
