let g:vimfiler_as_default_explorer = 1 
let g:vimfiler_tree_leaf_icon = ' ' 
let g:vimfiler_tree_opened_icon = '▾' 
let g:vimfiler_tree_closed_icon = '▸' 
let g:vimfiler_file_icon = '-' 
let g:vimfiler_marked_file_icon = '*' 

"autocmd VimEnter * VimFiler -split -simple -winwidth=40 -no-quit -no-focus
nnoremap <leader>e :VimFilerExplore -split -winwidth=40 -find -no-quit -no-focus<Cr>
"autocmd VimEnter * VimFilerExplorer
