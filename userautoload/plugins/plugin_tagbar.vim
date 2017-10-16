let g:tagbar_ctags_bin="/usr/bin/ctags"

nn [tagbar] <Nop>
nm <Leader>t [tagbar]
nn <silent> [tagbar]<CR> :<C-u>Tagbar<CR>
nn <silent> [tagbar]t    :<C-u>TagbarToggle<CR>
nn <silent> [tagbar]c    :<C-u>TagbarClose<CR>

" ステータスラインの参考 %{tagbar#currenttag('[%s]','')} がタグを表示している部分
set statusline=%F%m%r%h%w\%=%{tagbar#currenttag('[%s]','')}\[Pos=%v,%l]\[Len=%L]

"autocmd VimEnter * execute 'Tagbar'
"autocmd WinEnter * execute 'Tagbar'
"autocmd WinLeave * execute 'Tagbar'
