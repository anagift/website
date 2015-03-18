let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ./
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 notes.md
badd +1 app/index.html
badd +1 app/views/main.html
badd +1 app/src/app.coffee
badd +1 app/src/config/route.coffee
badd +1 app/src/controllers/main.coffee
badd +1 app/src/controllers/sample.coffee
badd +1 app/src/directives/sample.coffee
badd +1 app/src/components/sample.cjsx
badd +1 app/src/directives/main.coffee
badd +1 \[quickrun\ output]
badd +1 ~/dotfiles/vimfiles/doc/log_angular.txt
badd +1 app/sass/style.sass
badd +1 app/sass/base.sass
badd +1 app/sass/layout.sass
badd +1 app/sass/theme.sass
badd +1 app/sass/mixins.sass
badd +1 app/sass/module.sass
badd +1 app/sass/motion.sass
badd +1 app/sass/state.sass
badd +1 app/sass/function.sass
badd +1 db.sql
badd +1 ~/dotfiles/vimfiles/doc/log_sass.txt
badd +1 ~/dotfiles/vimfiles/doc/log_db.txt
badd +1 app/sass/functions.sass
badd +1 app/sass/config.sass
badd +1 app/sass/motions.sass
badd +1 app/sass/layout/index.sass
badd +1 app/sass/module/index.sass
badd +1 app/src/directives/oneway.coffee
badd +1 app/src/controllers/oneway.coffee
badd +3 app/src/components/twoway.cjsx
badd +1 app/src/directives/twoway.coffee
badd +1 app/src/controllers/twoway.coffee
badd +1 app/views/oneway.html
badd +1 app/views/twoway.html
badd +1 app/views/pages/oneway.html
badd +1 app/sass/_config.sass
badd +1 app/sass/_base.sass
badd +3 app/sass/components/search.sass
badd +1 app/sass/layouts/_header.sass
badd +1 app/sass/pages/_top.sass
badd +1 app/sass/_functions.sass
badd +1 app/sass/_mixins.sass
badd +4 app/sass/_motions.sass
badd +1 app/sass/_theme.sass
badd +1 app/sass/components/_index.sass
badd +1 app/sass/layouts/_index.sass
badd +1 app/sass/modules/_index.sass
badd +1 app/sass/pages/_index.sass
badd +3 app/sass/_state.sass
badd +1 app/src/components/nav.cjsx
badd +1 app/src/directives/nav.coffee
badd +1 app/sass/components/_nav.sass
badd +1 test/spec/controllers/oneway_spec.coffee
badd +1 e2e/scenarios/sample_spec.coffee
badd +1 test/spec/directives/nav_spec.coffee
badd +1 ~/dotfiles/vimfiles/doc/log_test.txt
badd +1 app/sass
argglobal
silent! argdel *
set stal=2
edit app/src/components/nav.cjsx
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
exe '3resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 34 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 68 + 136) / 272)
exe '9resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 68 + 136) / 272)
exe '10resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 68 + 136) / 272)
exe '11resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 60 + 136) / 272)
exe '12resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 60 + 136) / 272)
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
lcd ./
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
lcd ./
wincmd w
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ./
wincmd w
argglobal
edit .//app/src/directives/nav.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
lcd ./
wincmd w
argglobal
edit .//app/src/controllers/oneway.coffee
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ./
wincmd w
argglobal
edit .//app/src/config/route.coffee
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
lcd ./
wincmd w
argglobal
edit .//app/src/app.coffee
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
lcd ./
wincmd w
argglobal
edit .//\[quickrun\ output]
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
lcd ./
wincmd w
argglobal
edit .//app/views/pages/oneway.html
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
lcd ./
wincmd w
argglobal
edit .//app/index.html
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
lcd ./
wincmd w
argglobal
edit .//notes.md
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 24 - ((14 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
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
exe '3resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 34 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 68 + 136) / 272)
exe '9resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 68 + 136) / 272)
exe '10resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 68 + 136) / 272)
exe '11resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 60 + 136) / 272)
exe '12resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 60 + 136) / 272)
tabedit .//test/spec
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
exe 'vert 1resize ' . ((&columns * 20 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 60 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 68 + 136) / 272)
exe '5resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 68 + 136) / 272)
exe '6resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 68 + 136) / 272)
exe '7resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ./
wincmd w
argglobal
edit .//test/spec/directives/nav_spec.coffee
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
lcd ./
wincmd w
argglobal
edit .//e2e/scenarios/sample_spec.coffee
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
lcd ./
wincmd w
argglobal
edit .//\[quickrun\ output]
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
lcd ./
wincmd w
argglobal
edit .//app/src/components/nav.cjsx
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
lcd ./
wincmd w
argglobal
edit .//app/index.html
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
lcd ./
wincmd w
argglobal
edit .//notes.md
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ./
wincmd w
argglobal
edit ~/dotfiles/vimfiles/doc/log_test.txt
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 4 - ((3 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ./
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 20 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 60 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 68 + 136) / 272)
exe '5resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 68 + 136) / 272)
exe '6resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 68 + 136) / 272)
exe '7resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
tabedit .//app/sass
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
2wincmd k
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
exe '3resize ' . ((&lines * 23 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 23 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
exe '9resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 68 + 136) / 272)
exe '10resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 68 + 136) / 272)
exe '11resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 68 + 136) / 272)
exe '12resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 60 + 136) / 272)
exe '13resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 13resize ' . ((&columns * 60 + 136) / 272)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ./
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
lcd ./
wincmd w
argglobal
edit .//app/sass/components/_nav.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ./
wincmd w
argglobal
edit .//app/sass/_theme.sass
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ./
wincmd w
argglobal
edit .//app/sass/_base.sass
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
lcd ./
wincmd w
argglobal
edit .//app/sass/components/_index.sass
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
lcd ./
wincmd w
argglobal
edit .//app/sass/_config.sass
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
lcd ./
wincmd w
argglobal
edit .//app/sass/style.sass
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
lcd ./
wincmd w
argglobal
edit .//\[quickrun\ output]
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
lcd ./
wincmd w
argglobal
edit .//app/src/components/nav.cjsx
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
lcd ./
wincmd w
argglobal
edit .//app/index.html
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
lcd ./
wincmd w
argglobal
edit .//notes.md
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 24 - ((14 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0
lcd ./
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
lcd ./
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 62 + 36) / 73)
exe 'vert 1resize ' . ((&columns * 20 + 136) / 272)
exe '2resize ' . ((&lines * 7 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 20 + 136) / 272)
exe '3resize ' . ((&lines * 23 + 36) / 73)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 23 + 36) / 73)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 6resize ' . ((&columns * 60 + 136) / 272)
exe '7resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 7resize ' . ((&columns * 60 + 136) / 272)
exe '8resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 8resize ' . ((&columns * 60 + 136) / 272)
exe '9resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 9resize ' . ((&columns * 68 + 136) / 272)
exe '10resize ' . ((&lines * 31 + 36) / 73)
exe 'vert 10resize ' . ((&columns * 68 + 136) / 272)
exe '11resize ' . ((&lines * 22 + 36) / 73)
exe 'vert 11resize ' . ((&columns * 68 + 136) / 272)
exe '12resize ' . ((&lines * 15 + 36) / 73)
exe 'vert 12resize ' . ((&columns * 60 + 136) / 272)
exe '13resize ' . ((&lines * 54 + 36) / 73)
exe 'vert 13resize ' . ((&columns * 60 + 136) / 272)
tabedit .//db.sql
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
lcd ./
wincmd w
argglobal
edit .//notes.md
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
lcd ./
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
lcd ./
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
