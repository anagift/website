let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd pathname
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 notes.md
badd +1 app/index.html
badd +1 app/views/main.html
badd +1 app/src/app.coffee
badd +1 app/src/config/routes.coffee
badd +1 app/src/controllers/main.coffee
badd +1 app/src/controllers/sample.coffee
badd +1 app/src/directives/sample.coffee
badd +1 app/src/components/sample.cjsx
badd +1 app/src/directives/main.coffee
badd +0 \[quickrun\ output]
badd +0 ~/dotfiles/vimfiles/doc/log_angular.txt
badd +0 app/sass/style.sass
badd +0 app/sass/base.sass
badd +0 app/sass/layout.sass
badd +0 app/sass/theme.sass
badd +0 app/sass/mixins.sass
badd +0 app/sass/module.sass
badd +0 app/sass/motion.sass
badd +0 app/sass/state.sass
badd +0 app/sass/function.sass
badd +0 db.sql
argglobal
silent! argdel *
set stal=2
edit app/src
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
4wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 62 + 36) / 73)
exe 'vert 1resize ' . ((&columns * 20 + 136) / 272)
exe '2resize ' . ((&lines * 7 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 20 + 136) / 272)
exe '3resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 19 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 17 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
exe '9resize ' . ((&lines * 16 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 60 + 136) / 272)
exe '10resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 68 + 136) / 272)
exe '11resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 68 + 136) / 272)
exe '12resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 68 + 136) / 272)
exe '13resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 13resize ' . ((&columns * 60 + 136) / 272)
exe '14resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 14resize ' . ((&columns * 60 + 136) / 272)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd pathname
wincmd w
argglobal
enew
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd pathname
wincmd w
argglobal
edit pathname/app/src/components/sample.cjsx
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/src/directives/sample.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/src/controllers/sample.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/src/directives/main.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/src/controllers/main.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/src/config/routes.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/src/app.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/\[quickrun\ output]
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/views/main.html
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/index.html
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/notes.md
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/dotfiles/vimfiles/doc/log_angular.txt
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 62 + 36) / 73)
exe 'vert 1resize ' . ((&columns * 20 + 136) / 272)
exe '2resize ' . ((&lines * 7 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 20 + 136) / 272)
exe '3resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 19 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 17 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
exe '9resize ' . ((&lines * 16 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 60 + 136) / 272)
exe '10resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 68 + 136) / 272)
exe '11resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 68 + 136) / 272)
exe '12resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 68 + 136) / 272)
exe '13resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 13resize ' . ((&columns * 60 + 136) / 272)
exe '14resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 14resize ' . ((&columns * 60 + 136) / 272)
tabedit pathname/app/sass
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
4wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 62 + 36) / 73)
exe 'vert 1resize ' . ((&columns * 20 + 136) / 272)
exe '2resize ' . ((&lines * 7 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 20 + 136) / 272)
exe '3resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 12 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 13 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 13 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 13 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
exe '9resize ' . ((&lines * 19 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 60 + 136) / 272)
exe '10resize ' . ((&lines * 17 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 60 + 136) / 272)
exe '11resize ' . ((&lines * 16 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 60 + 136) / 272)
exe '12resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 68 + 136) / 272)
exe '13resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 13resize ' . ((&columns * 68 + 136) / 272)
exe '14resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 14resize ' . ((&columns * 68 + 136) / 272)
exe '15resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 15resize ' . ((&columns * 60 + 136) / 272)
exe '16resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 16resize ' . ((&columns * 60 + 136) / 272)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2 - ((1 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd pathname
wincmd w
argglobal
enew
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/motion.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/function.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/mixins.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/module.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/state.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/theme.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/layout.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/style.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/sass/base.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/\[quickrun\ output]
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/views/main.html
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/app/index.html
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/notes.md
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit ~/dotfiles/vimfiles/doc/log_sass.txt
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 62 + 36) / 73)
exe 'vert 1resize ' . ((&columns * 20 + 136) / 272)
exe '2resize ' . ((&lines * 7 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 20 + 136) / 272)
exe '3resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 12 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 13 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 13 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 13 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
exe '9resize ' . ((&lines * 19 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 60 + 136) / 272)
exe '10resize ' . ((&lines * 17 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 60 + 136) / 272)
exe '11resize ' . ((&lines * 16 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 60 + 136) / 272)
exe '12resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 68 + 136) / 272)
exe '13resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 13resize ' . ((&columns * 68 + 136) / 272)
exe '14resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 14resize ' . ((&columns * 68 + 136) / 272)
exe '15resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 15resize ' . ((&columns * 60 + 136) / 272)
exe '16resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 16resize ' . ((&columns * 60 + 136) / 272)
tabedit pathname/db.sql
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 211 + 136) / 272)
exe '2resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 60 + 136) / 272)
exe '3resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit pathname/notes.md
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
argglobal
edit ~/dotfiles/vimfiles/doc/log_db.txt
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd pathname
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 211 + 136) / 272)
exe '2resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 60 + 136) / 272)
exe '3resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
