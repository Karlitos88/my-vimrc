set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Solarized'

Plugin 'ervandew/supertab'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
" Track the engine.
Plugin 'SirVer/ultisnips'
"Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'kien/ctrlp.vim'

Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/nerdtree'

Plugin 'kana/vim-operator-user'
Plugin 'rhysd/vim-clang-format'

Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

"Plugin 'FredKSchott/CoVim' " dangerous

"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-surround'
"Plugin 'taglist.vim'
"Plugin 'zhaocai/GoldenView.Vim'
"Plugin 'mileszs/ack.vim'
"Plugin 'rdnetto/YCM-Generator'
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

autocmd ColorScheme * highlight RedundantWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight Todo1 ctermbg=DarkGrey guibg=DarkGrey
au InsertLeave * match pandocDefinitionTerm /\t\+/
au InsertLeave * 2match RedundantWhitespace /\s\+$/


set number
set smartindent
set ts=2
set sw=2
set expandtab
syntax on
set t_Co=16
set background=dark
colorscheme solarized
set cursorline
set hlsearch
set mouse=a
set backspace=2
set laststatus=2 "always display status line 


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"let g:goldenview__enable_default_mapping = 0
"nmap <silent> <F8> <Plug>GoldenViewSwitchMain
"nmap <silent> <S-F8> <Plug>GoldenViewSwitchToggle
"nmap <silent> <leader>l <Plug>GoldenViewSplit
"nnoremap <leader>jd :YcmCompleter GoTo<CR>

noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
nnoremap <silent><Space> :nohlsearch<Bar>:echo<CR>
"let g:ack_default_options = " -H --nocolor --nogroup --column" "ack version to old for -s

" ycm
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
"clang_format
let g:clang_format#command="clang-format-3.6"
let g:clang_format#code_style="google"

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc,cc,h nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,cc,h vnoremap <buffer><Leader>cf :ClangFormat<CR>
" " if you install vim-operator-user
autocmd FileType c,cpp,objc,cc,h map <buffer><Leader>x <Plug>(operator-clang-format)
 " Toggle auto formatting:
nmap <leader>C :ClangFormatAutoToggle<CR>
"/clang_format


" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
""GBS_BUILD_ROOTS
"
""let g:syntastic_cpp_include_dirs=['/usr/include/glib-2.0', '/usr/include/glib-2.0/include']
"let g:syntastic_cpp_no_default_include_dirs=0
""let g:syntastic_cpp_auto_refresh_includes=1
"let g:syntastic_aggregate_errors=1
"let g:syntastic_cpp_check_header=1
"let b:syntastic_c_cflags= ['-specs= ~/wrt/repos/webapi-plugins/packaging/webapi-plugins.spec']
"" /syntastic
