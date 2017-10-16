" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_histroy = 50
nnoremap <silent>g<C-p> :<C-u>CtrlPYankRound<CR>
nnoremap <silent>g<C-p> :<C-u>CtrlPYankRound<CR>

