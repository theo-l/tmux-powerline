let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-Space> 
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
nnoremap <silent>  :CtrlP
snoremap <silent>  c
nmap  h
xmap  h
omap  h
map <NL> j
map  k
map  l
xnoremap <silent>  :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent>  :call UltiSnips#ExpandSnippet()
snoremap  "_c
map ,tl ;TagbarToggle
nnoremap ,ss :source ./session.vim
nnoremap ,wqa :mksession! ./session.vim:wqa
nnoremap ,wq :mksession! ./session.vim:wq
nnoremap ,qa :mksession! ./session.vim:qa
nnoremap ,q :mksession! ./session.vim:q
nnoremap ,w :w
nmap ,e $zz
nmap ,b 0zz
nnoremap : ;
nnoremap ; :
nmap G Gzz
nmap N Nzz
nmap [c <Plug>GitGutterPrevHunk
nnoremap \d :YcmShowDetailedDiagnostic
nmap \hp <Plug>GitGutterPreviewHunk
nmap \hr <Plug>GitGutterUndoHunk:echomsg '\hr is deprecated. Use \hu'
nmap \hu <Plug>GitGutterUndoHunk
nmap \hs <Plug>GitGutterStageHunk
map \n <Plug>NERDTreeTabsToggle
nnoremap \vc :source $MYVIMRC
nnoremap \gl ;!git fetch origin ; git pull origin master
nnoremap \gu ;!git add -A;git commit -m 'updated';git push origin master
map \cs ;call RunCurrentScript()
map \cl ;.w !bash
map \c ;!
nnoremap \f :tabfind 
map \x :x
map \e :e
map \p "+p
map \ys "+yy
map \ya ggvG$"+y
nmap ]c <Plug>GitGutterNextHunk
xmap ac <Plug>GitGutterTextObjectOuterVisual
omap ac <Plug>GitGutterTextObjectOuterPending
nnoremap dd dd
nnoremap db d0
nnoremap de d$
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap guw gUw
nnoremap gub gU^
nnoremap gue gU$
nnoremap glw guw
nnoremap glb gu^
nnoremap gle gu$
nmap gg ggzz 
xmap ic <Plug>GitGutterTextObjectInnerVisual
omap ic <Plug>GitGutterTextObjectInnerPending
nmap n nzz
map q: ;q
nnoremap yb y^
nnoremap ye y$
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
snoremap <silent> <Del> c
snoremap <silent> <BS> c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
nnoremap <SNR>53_: :=v:count ? v:count : ''
inoremap  
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap <silent>  =UltiSnips#ExpandSnippet()
inoremap ) =ClosePair(')')
inoremap ,w :wi
inoremap > =ClosePair('>')
inoremap \` =QuoteDelim("`")
inoremap \' =QuoteDelim("'")
inoremap \" =QuoteDelim('"')
inoremap \< <>i
inoremap \{ {}i
inoremap \[ []i
inoremap \( ()i
inoremap ] =ClosePair(']')
inoremap jk 
inoremap jj 
inoremap kk 
inoremap } =ClosePair('}')
iabbr flaot float
iabbr retrun return
iabbr retun return
iabbr fro for
iabbr seiz size
iabbr lenthe length
iabbr lenght length
iabbr lenth length
iabbr rwo row
iabbr staci static
iabbr praviet private
iabbr priate private 
iabbr publci public 
iabbr publc public 
iabbr nwe new
iabbr colunm column
iabbr coulmn column
iabbr thta that
iabbr taht that
iabbr teh the
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set backupdir=~/.swp
set clipboard=unnamedplus
set completefunc=youcompleteme#Complete
set completeopt=menuone
set confirm
set cpoptions=aAceFsB
set directory=~/.swp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,mac,dos
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 10
set guioptions=aegirLt
set helplang=cn
set hidden
set history=1000
set hlsearch
set icon
set ignorecase
set incsearch
set nojoinspaces
set laststatus=2
set matchtime=1
set mouse=a
set mousemodel=popup
set path=.,/usr/include,,,~/gitworkspace/tmux-powerline/**/*
set ruler
set runtimepath=~/.vim,~/.vim/plugged/Vundle.vim/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-nerdtree-direnter/,~/.vim/plugged/vim-nerdtree-tabs/,~/.vim/plugged/nerdtree-git-plugin/,~/.vim/plugged/tagbar/,~/.vim/plugged/delimitMate/,~/.vim/plugged/Emmet.vim/,~/.vim/plugged/vim-airline/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/jedi-vim/,~/.vim/plugged/vim-gitgutter/,~/.vim/plugged/indentLine/,~/.vim/plugged/YouCompleteMe/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/ultisnips/,~/.vim/plugged/vim-easy-align/,~/.vim/plugged/syntastic/,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,~/.vim/plugged/jedi-vim/after,~/.vim/plugged/indentLine/after,~/.vim/plugged/ultisnips/after,~/.vim/after
set scrolloff=3
set shell=/bin/bash
set shiftwidth=4
set shortmess=atIc
set showcmd
set showmatch
set noshowmode
set showtabline=2
set smartcase
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set tags=./tags,./TAGS,tags,TAGS,./tags,tags,~/.vimtags
set updatetime=2000
set viewoptions=folds,options,cursor,unix,slash
set viminfo='100,<50,s10,h,!
set visualbell
set wildignore=*.o,*.obj,*~,*.pyc,.env,.env[0-9]+,.env-pypy,.git,.gitkeep,.tmp,.coverage,*DS_Store*,.sass-cache/,__pycache__/,.webassets-cache/,vendor/rails/**,vendor/cache/**,*.gem,log/**,tmp/**,.tox/**,.idea/**,.vagrant/**,.coverage/**,*.egg,*.egg-info,*.png,*.jpg,*.gif,*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**,*/.nx/**,*.app
set wildignorecase
set wildmenu
set wildmode=list:longest,full
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/gitworkspace/tmux-powerline
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 themes/default.sh
argglobal
silent! argdel *
edit themes/default.sh
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
vnoremap <buffer>  i=ScriptVCommentToggle()<NL>x
nnoremap <buffer>  i=ScriptCommentToggle(".")<NL>x
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
inoremap <buffer> 	 =SkipBracket("[\\]\\)\\}>'\"`;]")<NL>
inoremap <buffer>  =ScriptCommentToggle(".")<NL>x
inoremap <buffer> " =QuoteDelim('"')<NL>
inoremap <buffer> ' =QuoteDelim("'")<NL>
inoremap <buffer> ( ()i
inoremap <buffer> ) =ClosePair(')')<NL>
inoremap <buffer> < <>i
inoremap <buffer> > =ClosePair('>')<NL>
inoremap <buffer> [ []i
inoremap <buffer> ] =ClosePair(']')<NL>
imap <buffer> ` <Plug>delimitMate`
inoremap <buffer> { {}i
inoremap <buffer> } =ClosePair('}')<NL>
iabbr <buffer> idoc 50i#o#<NL>50i#kf#a
iabbr <buffer> icase case  $varName  in  <NL>op1 | op2 ) statement ;;<NL> *) statement ;;<NL>esac3kf$
iabbr <buffer> iuntil until  [ test ]  ;  do <NL><NL>; <NL>done3kft
iabbr <buffer> iwhile while  [ test ]  ;  do <NL><NL>; <NL>done 3kft   
iabbr <buffer> iforin for $var in ${array[@]} ; do <NL><NL>statement; <NL>done 3k0f$ 
iabbr <buffer> ifor for  ((e1;e2;e3 ))  ;  do <NL><NL>; <NL>done 3kfe
iabbr <buffer> idict #declare -A dictVar; dictVar[name]=valueodeclare -A $dictVarF$
iabbr <buffer> ilist #declare -a listVar; listVar=(value1 ...)odeclare -a $listVarF$
iabbr <buffer> ifnumle if  [[ $num1 -le $num2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifnumlt if  [[ $num1 -lt $num2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifnumge if  [[ $num1 -ge $num2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifnumgt if  [[ $num1 -gt $num2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifnumne if  [[ $num1 -ne $num2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifnumeq if  [[ $num1 -eq $num2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifstrne if  [[ $str1 != $str2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifstreq if  [[ $str1 == $str2 ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifstrnem if  [[ -n $str ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifstremt if  [[ -z $str ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifvarexists if  [[ -v $varname ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifoptenabled if  [[ -o $optname ]]; then <NL><NL>fi2kf$  
iabbr <buffer> iffile1older if  [[ $file1 -of $file2 ]]; then <NL><NL>fi2kf$   
iabbr <buffer> iffile1newer if  [[ $file1 -nf $file2 ]]; then <NL><NL>fi2kf$   
iabbr <buffer> iffileequal if  [[ $file1 -ef $file2 ]]; then <NL><NL>fi2kf$   
iabbr <buffer> iffilerun if  [[ -x $file ]]; then <NL><NL>fi2kf$  
iabbr <buffer> iffilewrite if  [[ -w $file ]]; then <NL><NL>fi2kf$  
iabbr <buffer> iffileempty if  [[ -s $file ]]; then <NL><NL>fi2kf$  
iabbr <buffer> iffileread if  [[ -r $file ]]; then <NL><NL>fi2kf$  
iabbr <buffer> ifdirexists if  [[ -d $dir ]]; then <NL><NL>fi2kf$  
iabbr <buffer> iffileexists if  [[ -f $file ]]; then <NL><NL>fi2kf$
iabbr <buffer> iif if  [[  ]]; then<NL><NL>fi2k2f[a
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
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#Complete
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
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,0=end,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
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
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 087|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atIc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
