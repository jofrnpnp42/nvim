" " unite.vim {{{
" " The prefix key.
" nnoremap    [unite]   <Nop>
" nmap    <Leader>f [unite]  
" " unite.vim keymap 
" " https://github.com/alwei/dotfiles/blob/3760650625663f3b08f24bc75762ec843ca7e112/.vimrc 
" nnoremap [unite]u  :<C-u>Unite -no-split<Space>
" nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer<CR>
" nnoremap <silent> [unite]b :<C-u>Unite<Space>bookmark<CR>
" nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
" nnoremap <silent> [unite]r :<C-u>UniteWithBufferDir file<CR>
" nnoremap <silent> ,vr :UniteResume<CR>  
" vinarise
let g:vinarise_enable_auto_detect = 1   
" unite-build map nnoremap <silent> ,vb :Unite build<CR> nnoremap <silent> ,vcb :Unite build:!<CR> nnoremap <silent> ,vch :UniteBuildClearHighlight<CR> "" }}}

""" http://qiita.com/knt45/items/6f16c6b041ce309076d6
"インサートモードで開始
let g:unite_enable_start_insert=1
"ヒストリー/ヤンク機能を有効化
let g:unite_source_history_yank_enable =1
"prefix keyの設定
nmap <Space> [unite]

"スペースキーとaキーでカレントディレクトリを表示
"nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]<CR> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

"スペースキーとfキーでバッファと最近開いたファイル一覧を表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>file_mru buffer file<CR>

"スペースキーとdキーで最近開いたディレクトリを表示
nnoremap <silent> [unite]d :<C-u>Unite<Space>directory_mru<CR>

"スペースキーとbキーでバッファを表示
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>

""スペースキーとxキーでレジストリを表示
"nnoremap <silent> [unite]x :<C-u>Unite<Space>-buffer-name=register register<CR>

"スペースキーとtキーでタブを表示
"nnoremap <silent> [unite]t :<C-u>Unite<Space>tab<CR>

"スペースキーとhキーでヒストリ/ヤンクを表示
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>

"スペースキーとoキーでoutline
nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>

"スペースキーとaキーでfile_rec:!
"nnoremap <silent> [unite]<CR> :<C-u>Unite<Space>file_rec:!<CR>
nnoremap <silent> [unite]aaa :<C-u>Unite<Space>file_rec:! -buffer-name=files<CR>

"スペースキーとgキーで grep
nnoremap <silent> [unite]g :<C-u>Unite<Space>grep<CR>

"スペースキーとrキーで grep
nnoremap <silent> [unite]r :<C-u>Unite<Space>UniteResume search-buffer<CR>

"スペースキーとlキーで line (バッファの行を検索)
nnoremap <silent> [unite]l :<C-u>Unite<Space>line<CR>

"スペースキーとjキーで bookmark (バッファの行を検索)
nnoremap <silent> [unite]j :<C-u>Unite<Space>bookmark<CR>
"nnoremap <silent> [unite]j :<C-u>Unite<Space>bookmark -quick-match<CR>
"bookmark の登録
nnoremap <silent> [unite]m :<C-u>UniteBookmarkAdd<CR>

" カーソル位置の単語をgrep検索 (カレントパス . がうまく解釈されない)
"nnoremap <silent> [unite]w :<C-u>Unite grep:.. -buffer-name=search-buffer<CR><C-R><C-W>
"nnoremap <leader>grw       :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
"nnoremap <leader>grw       :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
"nnoremap <leader>grw :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

"unite.vimを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()

function! s:unite_my_settings()"{{{
    " ESCでuniteを終了
    nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction"}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-startify (直前に使用したファイル) の Unite 版
"http://lsifrontend.blog100.fc2.com/blog-entry-832.html
"http://d.hatena.ne.jp/osyo-manga/20131217/1387292034
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   let g:unite_source_alias_aliases = {
"   \ "startup_file_mru" : {
"   \  "source" : "file_mru",
"   \ },
"   \ "startup_directory_mru" : {
"   \  "source" : "directory_mru",
"   \ },
"   \}
"   
"   " 表示数の制限
"   call unite#custom_max_candidates("startup_file_mru", 10)
"   call unite#custom_max_candidates("startup_directory_mru", 5)
"   
"   if !exists("g:unite_source_menu_menus")
"     let g:unite_source_menu_menus = {}
"   endif
"   
"   " :Unite menu:startup での出力リスト
"   let g:unite_source_menu_menus.startup = {
"   \ "description" : "startup menu",
"   \ "command_candidates" : [
"   \   [ "edit",  "edit" ],
"   \   [ "vimrc",  "edit " . $HOME . "/vimrc"],
"   \   [ "gvimrc", "edit " . $HOME . "/gvimrc"],
"   \   [ "vimfiler", "VimFiler" ],
"   \   [ "unite-howm", "Unite qfixhowm/new qfixhowm:nocache -hide-source-names -no-split" ],
"   \   [ "unite-update", "Unite -log neobundle/update" ],
"   \   [ "unite-file_mru", "Unite file_mru" ],
"   \   [ "unite-directory_mru", "Unite directory_mru" ],
"   \ ]
"   \}
"   
"   command! UniteStartup
"   \ Unite
"   \ output:echo:"===:file:mru:===":! startup_file_mru
"   \ output:echo:":":!
"   \ output:echo:"===:directory:mru:===":! startup_directory_mru
"   \ output:echo:":":!
"   \ output:echo:"===:menu:===":! menu:startup
"   \ -hide-source-names
"   \ -no-split
"   \ -quick-match
"   
"   augroup startup
"       autocmd!
"       autocmd VimEnter * nested :UniteStartup
"   augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Unite-tag
" autocmd BufEnter *
" \   if empty(&buftype)
" \|      nnoremap <buffer> <C-k> :<C-u>UniteWithCursorWord -immediately tag<CR>
" \|  endif
" 
" autocmd BufEnter *
" \   if empty(&buftype)
" \|      nnoremap <buffer> <C-m> :<C-u>Unite jump<CR>
" \|  endif
" 
