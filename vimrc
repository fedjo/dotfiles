set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'leafgarland/typescript-vim'
call plug#begin('~/.vim/plugged')
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
call plug#end()
set rtp+=~/.fzf
"Plugin 'Raimondi/delimitMate'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'simnalamburt/vim-mundo'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'junegunn/vim-easy-align'
Plugin 'hynek/vim-python-pep8-indent'

Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-airline/vim-airline' | Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --all' }
"Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"Plugin 'Valloric/MatchTagAlways'
"Plugin 'ludovicchabant/vim-gutentags'

"Plugin 'tpope/vim-commentary'
"Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-ragtag'
"Plugin 'tpope/vim-sensible'

"Plugin 'davidhalter/jedi-vim'
"Plugin 'fatih/vim-go'
Plugin 'ervandew/supertab'
" Plugin 'psf/black'
"Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
" Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-endwise'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'scrooloose/syntastic'

" TODO list highlight
Plugin 'tomswartz07/vim-todo'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8 " The encoding displayed.
set fileencoding=utf-8 "The encoding written to file.


set grepprg=grep\ -nH\ $*

set t_Co=256    " set the terminal to 256 color
colorscheme railscasts " awesome colorsheme

"set lines=50 columns=100
set number " show line numbers
"set relativenumber
set showcmd " show command in bottom bar

" Switch off automatic backup creation
set nobackup
set nowritebackup

syntax on
" Remove all trailing whitespace before saving
" " (can be used for specific files with eg *.py instead of *)
autocmd BufWritePre * :%s/\s\+$//e"

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4
set expandtab " tabs are spaces
set autoindent

filetype indent on
if has("autocmd")
  filetype on
"  autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
  autocmd BufNewFile,BufRead *.html set filetype=htmldjango
  autocmd BufNewFile,BufRead *.py set filetype=python.django
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType eruby setlocal ts=2 sts=2 sw=2 expandtab

  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab ai

  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

set cursorline " highlight current line
" set colorcolumn=80,120 " highlight columns 80 and 120
set colorcolumn=88,120 " highlight columns 80 and 120

set ignorecase
set smartcase

set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level

let mapleader = "\<Space>" " set the leader to be spacebar
map <leader>q :nohl<CR>

" toggle folding
nnoremap <leader>z za

" make gj/gk move by virtual lines when used without a count, and by physical
" lines when used with a count
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $,^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" save with <leader>w
nnoremap <leader>w :w<CR>

" search word under cursor
nnoremap <leader>n *

" Mappings to access buffers
set hidden

nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>bq :bp <BAR> bd #<CR>

" airline {{{
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline_theme = 'badwolf'
" }}}

" emmet-vim {{{
  let g:user_emmet_expandabbr_key = '<c-e>'
" }}}

" ragtag {{{
  let g:ragtag_global_maps = 1
  imap ,, <C-X>=
  imap ,. <C-X>-
" }}}

" delimitMate {{{
  let delimitMate_expand_cr = 2
  let delimitMate_expand_space = 1 " {|} => { | }
" }}}

" vim-easy-align {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
" }}}

" vim-indent-guides {{{ NOT WORKING DUE TO CHOICE OF COLORSCHEME
  let g:indent_guides_default_mapping = 0
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_start_level = 2
  let g:indent_guides_exclude_filetypes = ['help', 'startify', 'man', 'rogue']
  let g:indent_guides_auto_colors = 0
" }}}

" YouCompleteMe
  let g:ycm_server_python_interpreter = '/usr/bin/python3'
  let g:ymc_autoclose_preview_window_after_completion = 1
  let g:ymc_seed_identifiers_with_syntax = 1 " Completion for programming language's keywords
  let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
  let g:ymc_complete_in_strings = 1 " Completion in strings
  let g:ymc_complete_in_comments = 1 " Completion in comments

" NerdTree {{{
  "nnoremap <leader>l :bnext<CR>
  map <leader>n :NERDTreeToggle<CR>
  let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
" }}}

" vim-gutter
  let g:gitgutter_map_keys = 0
  let g:gitgutter_max_signs = 200
  let g:gitgutter_realtime = 1
  let g:gitgutter_sign_removed = '-'
  let g:gitgutter_diff_args = '--ignore-space-at-eol'

" Ultisnips
  let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
  let g:UltiSnipsEditSplit = 'vertical'
  let g:UltiSnipsListSnippets = '<nop>'
  let g:UltiSnipsExpandTrigger = '<c-j>'
  let g:UltiSnipsJumpForwardTrigger = '<c-j>'
  let g:UltiSnipsJumpBackwardTrigger = '<c-b>'
  let g:ulti_expand_or_jump_res = 0

" Mundo
  nnoremap <leader>u :MundoToggle<CR>
  " Enable persistent undo so that undo history persists across vim sessions
  set undofile
  set undodir=~/.vim/undo

" Call Gundo tree
" nnoremap <F5> :GundoToggle<CR>

" vim-gutentags
  let g:gutentags_exclude = [
    \ '*.min.js',
    \ '*html*',
    \ 'jquery*.js',
    \ '*/vendor/*',
    \ '*/node_modules/*',
    \ '*/python2.7/*',
    \ '*/migrate/*.rb'
    \ ]
  let g:gutentags_generate_on_missing = 0
  let g:gutentags_generate_on_write = 0
  let g:gutentags_generate_on_new = 0
  nnoremap <leader>t! :GutentagsUpdate!<CR>
  set statusline+=%{gutentags#statusline()}

" fzf {{{
  " use ag instead of find
  let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

  nnoremap <silent> <leader><space> :Files<CR>
  nnoremap <silent> <leader>a :Buffers<CR>
  nnoremap <silent> <leader>A :Windows<CR>
  nnoremap <silent> <leader>; :BLines<CR>
  nnoremap <silent> <leader>o :BTags<CR>
  nnoremap <silent> <leader>O :Tags<CR>
  nnoremap <silent> <leader>? :History<CR>
  nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
  nnoremap <silent> <leader>. :AgIn

  nnoremap <silent> K :call SearchWordWithAg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>ga :BCommits<CR>
  nnoremap <silent> <leader>ft :Filetypes<CR>

  imap <C-x><C-f> <plug>(fzf-complete-file-ag)
  imap <C-x><C-l> <plug>(fzf-complete-line)

  function! SearchWordWithAg()
  execute 'Ag' expand('<cword>')
  endfunction

  function! SearchVisualSelectionWithAg() range
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  let old_clipboard = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', old_reg, old_regtype)
  let &clipboard = old_clipboard
  execute 'Ag' selection
  endfunction

  function! SearchWithAgInDirectory(...)
  call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
  endfunction
  command! -nargs=+ -complete=dir AgIn call SearchWithAgInDirectory(<f-args>)
" }}}

" fugitive {{{
  " Fix broken syntax highlight in gitcommit files
  " (https://github.com/tpope/vim-git/issues/12)
  let g:fugitive_git_executable = 'LANG=en_US.UTF-8 git'

  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  nnoremap <silent> <leader>gc :Gcommit<CR>
  nnoremap <silent> <leader>gb :Gblame<CR>
  nnoremap <silent> <leader>ge :Gedit<CR>
  nnoremap <silent> <leader>gE :Gedit<space>
  nnoremap <silent> <leader>gr :Gread<CR>
  nnoremap <silent> <leader>gR :Gread<space>
  nnoremap <silent> <leader>gw :Gwrite<CR>
  nnoremap <silent> <leader>gW :Gwrite!<CR>
  nnoremap <silent> <leader>gq :Gwq<CR>
  nnoremap <silent> <leader>gQ :Gwq!<CR>

  function! ReviewLastCommit()
    if exists('b:git_dir')
      Gtabedit HEAD^{}
      nnoremap <buffer> <silent> q :<C-U>bdelete<CR>
    else
      echo 'No git a git repository:' expand('%:p')
    endif
  endfunction
  nnoremap <silent> <leader>g` :call ReviewLastCommit()<CR>

  augroup fugitiveSettings
    autocmd!
    autocmd FileType gitcommit setlocal nolist
    autocmd BufReadPost fugitive://* setlocal bufhidden=delete
  augroup END
" }}}


function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" assign keyboard commands while using the greek keyboard:
map Α A
map Β B
map Ψ C
map Δ D
map Ε E
map Φ F
map Γ G
map Η H
map Ι I
map Ξ J
map Κ K
map Λ L
map Μ M
map Ν N
map Ο O
map Π P
map Q Q

map Ρ R
map Σ S
map Τ T
map Θ U
map Ω V
map W W
map Χ X
map Υ Y
map Ζ Z
map α a
map β b
map ψ c
map δ d
map ε e
map φ f
map γ g
map η h
map ι i
map ξ j

map κ k
map λ l
map μ m
map ν n
map ο o
map π p
map q q
map ρ r
map σ s
map τ t
map θ u
map ω v
map ς w
map χ x
map υ y
map ζ z
