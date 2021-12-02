let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <SNR>51_AutoPairsReturn =AutoPairsReturn()
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
snoremap <silent>  "_c
xnoremap <silent> <NL> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <NL> :call UltiSnips#ExpandSnippetOrJump()
nnoremap <silent>  :CtrlP
snoremap  "_c
nnoremap <silent>  g` :call ReviewLastCommit()
nnoremap <silent>  gQ :Gwq!
nnoremap <silent>  gq :Gwq
nnoremap <silent>  gW :Gwrite!
nnoremap <silent>  gw :Gwrite
nnoremap <silent>  gR :Gread 
nnoremap <silent>  gr :Gread
nnoremap <silent>  gE :Gedit 
nnoremap <silent>  ge :Gedit
nnoremap <silent>  gb :Gblame
nnoremap <silent>  gc :Gcommit
nnoremap <silent>  gd :Gdiff
nnoremap <silent>  gs :Gstatus
nnoremap <silent>  ft :Filetypes
nnoremap <silent>  ga :BCommits
nnoremap <silent>  gl :Commits
nnoremap <silent>  . :AgIn
nnoremap <silent>  / :execute 'Ag ' . input('Ag/')
nnoremap <silent>  ? :History
nnoremap <silent>  O :Tags
nnoremap <silent>  o :BTags
nnoremap <silent>  ; :BLines
nnoremap <silent>  A :Windows
nnoremap <silent>  a :Buffers
nnoremap <silent>    :Files
nnoremap  t! :GutentagsUpdate!
nnoremap  u :MundoToggle
nnoremap  bq :bp | bd #
nnoremap  h :bprevious
nnoremap  l :bnext
map  n :NERDTreeToggle
nnoremap  w :w
nnoremap  z za
map  q :nohl
nnoremap $ <Nop>
snoremap <silent> <nop> :call UltiSnips#ListSnippets()
nnoremap B ^
nnoremap E $
vnoremap <silent> K :call SearchVisualSelectionWithAg()
nnoremap <silent> K :call SearchWordWithAg()
map Q Q
map W W
nnoremap ^ <Nop>
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
nnoremap gV `[v`]
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
map q q
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
imap 	 <Plug>SuperTabForward
inoremap <silent> <NL> =UltiSnips#ExpandSnippetOrJump()
imap  <Plug>(fzf-complete-line)
imap  <Plug>(fzf-complete-file-ag)
imap ,. -
imap ,, =
inoremap <silent> <nop> =UltiSnips#ListSnippets()
map ζ z
map θ u
map ο o
map ν n
map μ m
map λ l
map κ k
map ξ j
map ι i
map η h
map γ g
map ε e
map δ d
map β b
map α a
map Ζ Z
map Υ Y
map Χ X
map Ω V
map Θ U
map Τ T
map Σ S
map Ρ R
map Π P
map Ο O
map Ν N
map Μ M
map Λ L
map Κ K
map Ξ J
map Ι I
map Η H
map Γ G
map Φ F
map Ε E
map Δ D
map Ψ C
map Β B
map Α A
map υ y
map χ x
map ς w
map ω v
map τ t
map σ s
map ρ r
map π p
map φ f
map ψ c
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=10
set grepprg=grep\ -nH\ $*
set helplang=en
set hidden
set ignorecase
set laststatus=2
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/typescript-vim,~/.vim/bundle/vim-mundo,~/.vim/bundle/vim-python-pep8-indent,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/ultisnips,~/.vim/bundle/supertab,~/.vim/bundle/black,~/.vim/bundle/vim-railscasts-theme,~/.vim/bundle/nerdTree,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/auto-pairs,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-snippets,~/.vim/bundle/vim-todo,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/typescript-vim/after,~/.vim/bundle/vim-mundo/after,~/.vim/bundle/vim-python-pep8-indent/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/vim-airline-themes/after,~/.vim/bundle/ultisnips/after,~/.vim/bundle/supertab/after,~/.vim/bundle/black/after,~/.vim/bundle/vim-railscasts-theme/after,~/.vim/bundle/nerdTree/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/auto-pairs/after,~/.vim/bundle/vim-commentary/after,~/.vim/bundle/vim-snippets/after,~/.vim/bundle/vim-todo/after
set shiftwidth=4
set showcmd
set showtabline=2
set smartcase
set softtabstop=4
set statusline=%{gutentags#statusline()}
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set undodir=~/.vim/undo
set undofile
set wildignore=*.pyc
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/manos/devicehub-teal/ereuse_devicehub
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 db.py
badd +12 migrations/env.py
badd +142 devicehub.py
badd +11 cli.py
badd +13 config.py
badd +6 resources/device/definitions.py
badd +37 resources/device/schemas.py
badd +81 resources/schemas.py
badd +14 dispatchers.py
badd +3 ~/manos/devicehub-teal/setup.py
badd +1 marshmallow.py
badd +1 migrations/versions/25a0284306fa_lalala.py
argglobal
silent! argdel *
$argadd resources/models.py
edit marshmallow.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> § =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> ¢ =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> © =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> ¨ =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
inoremap <buffer> <silent> ý =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> û =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> Ý =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> Û =AutoPairsMoveCharacter('[')
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=88,120
setlocal colorcolumn=88,120
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python.django'
setlocal filetype=python.django
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=10
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonPEPIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python.django'
setlocal syntax=python.django
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
