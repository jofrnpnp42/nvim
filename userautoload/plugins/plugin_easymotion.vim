"----------------------------------------------------------------
" http://haya14busa.com/mastering-vim-easymotion/
"----------------------------------------------------------------
" <Space> キーで easy-motion を起動する
"nmap <Space> <Plug>(easymotion-s2)
" f キーで easy-motion を起動する
" nmap f  <Plug>(easymotion-s2)

" ラベルの表示順位を定義する
"let g:EasyMotion_keys = ';hklyuiopnm,qwertasdgzxcvbjf'
let g:EasyMotion_keys = 'faslkhjnmie,rmo;uwzpqtdgxcvby'

" ラベル選択時に <Space> か <CR> を押すと 1つ目のマッチに飛ぶ
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1

" g/ で easy-motion を呼び出す
" nmap g/ <Plug>(easymotion-sn)
" xmap g/ <Plug>(easymotion-sn)
" omap g/ <Plug>(easymotion-tn)
nmap ,, <Plug>(easymotion-sn)
xmap ,, <Plug>(easymotion-sn)
omap ,, <Plug>(easymotion-tn)

" 大小文字区別しない(1)
let g:EasyMotion_smartcase = 1

" Repeat Motion。C-n や C-p で過去の履歴を表示する。
map g/ <Plug>(easymotion-repeat)
" map <C-n> <Plug>(easymotion-next)
" map <C-p> <Plug>(easymotion-prev)
" map ; <Plug>(easymotion-next)
" map , <Plug>(easymotion-prev)

