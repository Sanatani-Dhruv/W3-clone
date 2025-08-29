let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/HTML-CSS-PRACTICE/W3Schools-clone
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 index.html
badd +65 styles/plususer-part.css
badd +47 styles/career-part.css
badd +1 ./
badd +0 styles/how-to-section-part.css
badd +0 styles/code-editor-part.css
argglobal
%argdel
$argadd ./
edit index.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe 'vert 1resize ' . ((&columns * 31 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 79 + 95) / 191)
exe '3resize ' . ((&lines * 23 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 79 + 95) / 191)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 79 + 95) / 191)
argglobal
enew
file NERD_tree_tab_2
balt index.html
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
let s:l = 870 - ((16 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 870
normal! 025|
wincmd w
argglobal
if bufexists(fnamemodify("styles/how-to-section-part.css", ":p")) | buffer styles/how-to-section-part.css | else | edit styles/how-to-section-part.css | endif
balt styles/career-part.css
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
let s:l = 98 - ((11 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 98
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("styles/code-editor-part.css", ":p")) | buffer styles/code-editor-part.css | else | edit styles/code-editor-part.css | endif
balt styles/career-part.css
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
let s:l = 32 - ((9 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 79 + 95) / 191)
exe '3resize ' . ((&lines * 23 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 79 + 95) / 191)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 79 + 95) / 191)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
