let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Projects/ESP-Projects
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/Projects/ESP-Projects/examples/get-started/blink/main/blink_example_main.c
badd +0 term://~/Projects/ESP-Projects//56281:/bin/bash
badd +0 term://~/Projects/ESP-Projects//56468:/bin/bash
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Projects/ESP-Projects/examples/get-started/blink/main/blink_example_main.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe 'vert 1resize ' . ((&columns * 30 + 107) / 215)
exe '2resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 92 + 107) / 215)
exe '3resize ' . ((&lines * 17 + 19) / 39)
exe 'vert 3resize ' . ((&columns * 92 + 107) / 215)
exe 'vert 4resize ' . ((&columns * 91 + 107) / 215)
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
let s:l = 14 - ((8 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Projects/ESP-Projects//56281:/bin/bash", ":p")) | buffer term://~/Projects/ESP-Projects//56281:/bin/bash | else | edit term://~/Projects/ESP-Projects//56281:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/Projects/ESP-Projects//56281:/bin/bash
endif
balt ~/Projects/ESP-Projects/examples/get-started/blink/main/blink_example_main.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 14 - ((7 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 024|
wincmd w
argglobal
if bufexists(fnamemodify("~/Projects/ESP-Projects/examples/get-started/blink/main/blink_example_main.c", ":p")) | buffer ~/Projects/ESP-Projects/examples/get-started/blink/main/blink_example_main.c | else | edit ~/Projects/ESP-Projects/examples/get-started/blink/main/blink_example_main.c | endif
if &buftype ==# 'terminal'
  silent file ~/Projects/ESP-Projects/examples/get-started/blink/main/blink_example_main.c
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
let s:l = 20 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 02|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 107) / 215)
exe '2resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 92 + 107) / 215)
exe '3resize ' . ((&lines * 17 + 19) / 39)
exe 'vert 3resize ' . ((&columns * 92 + 107) / 215)
exe 'vert 4resize ' . ((&columns * 91 + 107) / 215)
tabnext
argglobal
if bufexists(fnamemodify("term://~/Projects/ESP-Projects//56468:/bin/bash", ":p")) | buffer term://~/Projects/ESP-Projects//56468:/bin/bash | else | edit term://~/Projects/ESP-Projects//56468:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/Projects/ESP-Projects//56468:/bin/bash
endif
balt term://~/Projects/ESP-Projects//56281:/bin/bash
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 257 - ((35 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 257
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
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

let g:current_session = 'blink'
