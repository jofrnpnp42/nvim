if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/neko/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/neko/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/home/neko/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/var/lib/snapd/desktop/nvim/site/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/home/neko/.local/share/flatpak/exports/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/neko/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/neko/.config/nvim/after,/home/neko/.config/nvim/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/neko/.config/nvim/init.vim', '/home/neko/.config/nvim/userautoload/dein/plugins.toml', '/home/neko/.config/nvim/userautoload/dein/plugins-lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/neko/.config/nvim'
let g:dein#_runtime_path = '/home/neko/.config/nvim/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/neko/.config/nvim/.cache/init.vim'
let &runtimepath = '/home/neko/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/neko/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/home/neko/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/neko/.config/nvim/repos/github.com/Shougo/vimproc.vim,/home/neko/.config/nvim/repos/github.com/Shougo/dein.vim,/home/neko/.config/nvim/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/neko/.config/nvim/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/home/neko/.local/share/flatpak/exports/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/neko/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/neko/.config/nvim/after'
filetype off
source ~/.config/nvim/userautoload/plugins/plugins-unite-gtags.vim
source ~/.config/nvim/userautoload/plugins/plugins-unite.vim
vmap - <Plug>(caw:I:toggle)
source ~/.config/nvim/userautoload/plugins/plugins-unite-outline.vim
