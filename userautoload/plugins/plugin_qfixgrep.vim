"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 使用する grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""let mygrepprg = 'grep\ -rnIH\ --exclude-dir=.svn\ --exclude-dir=.git '
"let mygrepprg = 'grep'
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Windowsのcygwin grep用のダメ文字対策設定(デフォルト)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let MyGrep_DamemojiReplaceReg = '(..)'
"
"let MyGrep_ExcludeReg = '[~#]$\|\.bak$\|\.o$\|\.obj$\|\.exe$\|[/\\]tags$\|^tags$|[/\\].cvs[/\\]|[/\\].svn[/\\]|[/\\].git[/\\]'
"