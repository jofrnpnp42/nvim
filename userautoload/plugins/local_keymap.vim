"" .vimrcの編集を簡単にする{{{
" http://vim-users.jp/2009/09/hack74/ 
" .vimrcや.gvimrcを編集するためのKey-mappingを定義する
nnoremap  <Space>ev  :<C-u>edit $HOME/vimrc<CR>
nnoremap  <Space>eg  :<C-u>edit $HOME/gvimrc<CR>
" .vimrcや.gvimrcの変更を反映するためのKey-mappingを定義する
nnoremap  <Space>rv :<C-u>source $HOME/vimrc \| if has('gui_running') \| source $HOME/gvimrc \| endif <CR>
nnoremap  <Space>rg :<C-u>source $HOME/gvimrc<CR>
" .vimrcや.gvimrcを変更すると、自動的に変更が反映されるようにする
augroup MyAutoCmd
    autocmd!
augroup END
if !has('gui_running') && !(has('win32') || has('win64'))
    " .vimrcの再読込時にも色が変化するようにする
    autocmd MyAutoCmd BufWritePost $HOME/vimrc nested source $HOME/vimrc
else
    " .vimrcの再読込時にも色が変化するようにする
    autocmd MyAutoCmd BufWritePost $HOME/vimrc source $HOME/vimrc |
                \if has('gui_running') | source $HOME/gvimrc
    autocmd MyAutoCmd BufWritePost $HOME/gvimrc if has('gui_running') | source $HOME/gvimrc
endif
    "" }}}
