" Set refresh time in ms
let g:SrcExpl_RefreshTime = 1000
" Is update tags when SrcExpl is opened
let g:SrcExpl_isUpdateTags = 0
" Tag update command
let g:SrcExpl_updateTagsCmd = 'ctags --sort=foldcase %'
" Update all tags
function! g:SrcExpl_UpdateAllTags()
  let g:SrcExpl_updateTagsCmd = 'ctags --sort=foldcase -R .'
  call g:SrcExpl_UpdateTags()
  let g:SrcExpl_updateTagsCmd = 'ctags --sort=foldcase %'
endfunction
" Source Explorer Window Height
let g:SrcExpl_winHeight = 11
" Mappings
"let g:SrcExpl_UpdateTags = 1
"let g:SrcExpl_WinHeight = 10
let g:SrcExpl_pluginList = ["__Tag_List__", "NERD_tree_1", "Source_Explorer", "*unite*", "*vimfiler* - explorer", "__Tagbar__" ]

nn [srce] <Nop>
nm <Leader>sc [srce]
nn <silent> [srce]<CR> :SrcExplToggle<CR>
"nn <silent> [srce]u :call g:SrcExpl_UpdateTags()<CR>
"nn <silent> [srce]a :call g:SrcExpl_UpdateAllTags()<CR>
nn <silent> [srce]n :call g:SrcExpl_NextDef()<CR>
nn <silent> [srce]p :call g:SrcExpl_PrevDef()<CR>
