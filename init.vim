call plug#begin('~/.nvim/plugged')

"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

"Plug 'Solarized'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'

Plug 'rhysd/vim-clang-format'

Plug 'terryma/vim-multiple-cursors'

Plug 'zhaocai/GoldenView.Vim'


Plug 'raimondi/delimitmate'

Plug 'funorpain/vim-cpplint'

"Plug 'python-mode/python-mode', { 'branch': 'develop' }

"Plug 'miyakogi/seiya.vim'

"Latex
"Plug 'lervag/vimtex'


"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-scripts/a.vim'

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline-themes'


" Sessions
"Plug 'tpope/vim-obsession'
"Plug 'dhruvasagar/vim-prosession' " requires tpope/vim-obsession

" Other solution for sessions

Plug 'thaerkh/vim-workspace'

"

"Plug 'thaerkh/vim-indentguides'
"Plug 'nathanaelkane/vim-indent-guides'


Plug 'chrisbra/colorizer'

Plug 'airblade/vim-gitgutter'

Plug 'andrewradev/linediff.vim'

call plug#end()

"Plugin 'rdnetto/YCM-Generator'

"Plugin 'scrooloose/syntastic'
"Plugin 'kana/vim-operator-user'
"Plugin 'rhysd/vim-clang-format'

"Plugin 'FredKSchott/CoVim' " dangerous

"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-surround'
"Plugin 'taglist.vim'
"Plugin 'mileszs/ack.vim'
"Plugin 'rdnetto/YCM-Generator'

autocmd ColorScheme * highlight RedundantWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight Todo1 ctermbg=DarkGrey guibg=DarkGrey
"au InsertLeave * match pandocDefinitionTerm /\t\+/
au InsertLeave * 2match RedundantWhitespace /\s\+$/

" Display scons files with python syntax
autocmd BufNew,BufRead SConstruct set filetype=python
autocmd BufNew,BufRead SConscript set filetype=python

set number
set smartindent
set ts=4
set sw=4
" set expandtab
syntax on
"set t_Co=16
set background=dark
colorscheme solarized
set cursorline
set hlsearch
"set mouse=a
set mouse=""
set backspace=2
set laststatus=2 "always display status line

set spelllang=pl,en
set spell

"" vim-markdown
"let g:vim_markdown_folding_disabled = 1
"

"" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


"" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-h>"
let g:UltiSnipsListSnippets = "<c-l>" "List possible snippets based on current file


"" YCM key bindings
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"" vimtex + YCM
  if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
  let g:ycm_semantic_triggers.tex = [
        \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
        \ 're!\\hyperref\[[^]]*',
        \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\(include(only)?|input){[^}]*',
        \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
        \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
        \ ]



let g:goldenview__enable_default_mapping = 0
nmap <silent> <F8> <Plug>GoldenViewSwitchMain
nmap <silent> <S-F8> <Plug>GoldenViewSwitchToggle
nmap <silent> <leader>l <Plug>GoldenViewSplit

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l
nnoremap <silent><Space> :nohlsearch<Bar>:echo<CR>

"let g:ack_default_options = " -H --nocolor --nogroup --column -s --ignore-file=is:tags" "ack version to old for -s
let g:ack_default_options = " -H --ignore-file=is:tags" "ack version to old for -s
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>


"ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" ycm
"let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files = 1
"nnoremap <leader>jd :YcmCompleter GoTo<CR>

"clang_format
let g:clang_format#command= "clang-format"
let g:clang_format#code_style= "Mozilla"
let g:clang_format#syle_options= {
			\ "ColumnLimit" : 120 }

"" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc,cc,h nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,cc,h vnoremap <buffer><Leader>cf :ClangFormat<CR>
"" " if you install vim-operator-user
"autocmd FileType c,cpp,objc,cc,h map <buffer><Leader>x <Plug>(operator-clang-format)
" " Toggle auto formatting:
nmap <leader>C :ClangFormatAutoToggle<CR>
""/clang_format

let g:pymode_python = 'python3'


" Indent Python in the Google way. {

setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

function GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"
" } Indent Python in the Google way.

let g:tmuxline_preset = 'tmux'

let g:workspace_autocreate = 1
let g:workspace_autosave = 0
let g:workspace_session_disable_on_args = 1 " don't load session if filename is specified

"let g:indentguides_spacechar = '»'
"let g:indentguides_tabchar = '›'

set sessionoptions-=blank " don't save blank windows-> NERDtree should'nt cause issues when restoring session
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

highlight! link SignColumn LineNr
