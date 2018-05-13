#!/bin/sh
f="
local_keymap.vim
plugin_easyalign.vim
plugin_easymotion.vim
plugin_indentguides.vim
plugin_lightline.vim
plugin_neocomplcache.vim
plugin_qfixgrep.vim
plugin_srcexpl.vim
plugin_tagbar.vim
plugin_textmanip.vim
plugin_thumbnail.vim
plugin_vim_open_browser.vim
plugin_vimfiler.vim
plugin_yankround.vim
plugins-unite-gtags.vim
plugins-unite-outline.vim
plugins-unite.vim
vimfiler.rc.vim
"

for i in $f
do
echo "** $HOME/.config/nvim/userautoload/plugins/$i"
echo '>|vim|'
cat $i
echo '||<'
echo '　'
done
