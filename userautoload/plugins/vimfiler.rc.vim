" https://muunyblue.github.io/c95d62c68196b2d0c1c1de8c7eeb6d50.html#vimfiler より. 一部変更した
call vimfiler#custom#profile('default', 'context', {
    \ 'safe' : 0,
    \ 'auto_expand' : 1,
    \ 'parent' : 0,
    \ })
"default explore -> vimfiler
let g:vimfiler_as_default_explorer = 1
"buffer directory
"nnoremap <silent> fe :<C-u>VimFilerBufferDir -quit<CR>
" Nerdtree like
"nnoremap <C-e> :<C-u>VimFilerBufferDir -split -winwidth=120 -toggle -no-quit<CR>
autocmd VimEnter * VimFiler -split -simple -winwidth=40 -no-quit -no-focus
nnoremap <leader>e :VimFilerExplore -split -winwidth=40 -find -no-quit -no-focus<Cr>
"key mapping
autocmd MyAutoCmd FileType vimfiler call s:vimfiler_my_settings()
function! s:vimfiler_my_settings()
  nnoremap <silent><buffer><expr> v vimfiler#do_switch_action('vsplit')
  nnoremap <silent><buffer><expr> s vimfiler#do_switch_action('split')
endfunction
" Textmate icons
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

