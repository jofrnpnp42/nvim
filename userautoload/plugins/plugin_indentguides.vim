"" 起動時点から有効にする
let g:indent_guides_enable_on_vim_startup = 1
"
" ハイライトの色を鮮やかにする
let g:indent_guides_color_change_percent =  6
"
" ハイライトの幅を狭める
let g:indent_guides_guide_size = 1
"
"" 色値設定
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg='#003060'   ctermbg=3 "青
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg='#606060'   ctermbg=4 "白
"
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg='#303060'   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg='#1e294e'   ctermbg=4 


let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar', 'unite']
