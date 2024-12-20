let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Work/Reclament
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +5 Authserver/src/main/resources/application.properties
badd +0 auth-client/src/main/resources/application.properties
badd +0 conversation-worker/src/main/resources/application.properties
badd +16 embedding-test/src/main/java/com/reclament/embedding_test/EmbeddingTestApplication.java
badd +17 ~/Work/Reclament/embedding-test/src/main/java/com/reclament/embedding_test/config/GridFSConfig.java
badd +0 embedding-test/src/main/resources/application.properties
badd +0 resource-server/src/main/resources/application.properties
badd +0 recread/src/main/resources/application.properties
argglobal
%argdel
edit auth-client/src/main/resources/application.properties
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
6wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 107) / 214)
exe '2resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 2resize ' . ((&columns * 183 + 107) / 214)
exe '3resize ' . ((&lines * 9 + 37) / 75)
exe 'vert 3resize ' . ((&columns * 183 + 107) / 214)
exe '4resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 4resize ' . ((&columns * 183 + 107) / 214)
exe '5resize ' . ((&lines * 9 + 37) / 75)
exe 'vert 5resize ' . ((&columns * 183 + 107) / 214)
exe '6resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 6resize ' . ((&columns * 183 + 107) / 214)
exe '7resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 7resize ' . ((&columns * 183 + 107) / 214)
exe '8resize ' . ((&lines * 9 + 37) / 75)
exe 'vert 8resize ' . ((&columns * 183 + 107) / 214)
argglobal
enew
file NvimTree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt Authserver/src/main/resources/application.properties
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("Authserver/src/main/resources/application.properties", ":p")) | buffer Authserver/src/main/resources/application.properties | else | edit Authserver/src/main/resources/application.properties | endif
if &buftype ==# 'terminal'
  silent file Authserver/src/main/resources/application.properties
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 5 - ((2 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("conversation-worker/src/main/resources/application.properties", ":p")) | buffer conversation-worker/src/main/resources/application.properties | else | edit conversation-worker/src/main/resources/application.properties | endif
if &buftype ==# 'terminal'
  silent file conversation-worker/src/main/resources/application.properties
endif
balt Authserver/src/main/resources/application.properties
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 6 - ((5 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 044|
wincmd w
argglobal
if bufexists(fnamemodify("embedding-test/src/main/resources/application.properties", ":p")) | buffer embedding-test/src/main/resources/application.properties | else | edit embedding-test/src/main/resources/application.properties | endif
if &buftype ==# 'terminal'
  silent file embedding-test/src/main/resources/application.properties
endif
balt ~/Work/Reclament/embedding-test/src/main/java/com/reclament/embedding_test/config/GridFSConfig.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 9 - ((8 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 038|
wincmd w
argglobal
if bufexists(fnamemodify("Authserver/src/main/resources/application.properties", ":p")) | buffer Authserver/src/main/resources/application.properties | else | edit Authserver/src/main/resources/application.properties | endif
if &buftype ==# 'terminal'
  silent file Authserver/src/main/resources/application.properties
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 033|
wincmd w
argglobal
if bufexists(fnamemodify("resource-server/src/main/resources/application.properties", ":p")) | buffer resource-server/src/main/resources/application.properties | else | edit resource-server/src/main/resources/application.properties | endif
if &buftype ==# 'terminal'
  silent file resource-server/src/main/resources/application.properties
endif
balt Authserver/src/main/resources/application.properties
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("recread/src/main/resources/application.properties", ":p")) | buffer recread/src/main/resources/application.properties | else | edit recread/src/main/resources/application.properties | endif
if &buftype ==# 'terminal'
  silent file recread/src/main/resources/application.properties
endif
balt Authserver/src/main/resources/application.properties
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 3 - ((2 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
4wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 107) / 214)
exe '2resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 2resize ' . ((&columns * 183 + 107) / 214)
exe '3resize ' . ((&lines * 9 + 37) / 75)
exe 'vert 3resize ' . ((&columns * 183 + 107) / 214)
exe '4resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 4resize ' . ((&columns * 183 + 107) / 214)
exe '5resize ' . ((&lines * 9 + 37) / 75)
exe 'vert 5resize ' . ((&columns * 183 + 107) / 214)
exe '6resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 6resize ' . ((&columns * 183 + 107) / 214)
exe '7resize ' . ((&lines * 10 + 37) / 75)
exe 'vert 7resize ' . ((&columns * 183 + 107) / 214)
exe '8resize ' . ((&lines * 9 + 37) / 75)
exe 'vert 8resize ' . ((&columns * 183 + 107) / 214)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

let g:current_session = 'RecConfig'
