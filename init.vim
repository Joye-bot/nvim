" ___       _ _         _
"|_ _|_ __ (_) |___   _(_)_ __ ___
" | || '_ \| | __\ \ / / | '_ ` _ \
" | || | | | | |_ \ V /| | | | | | |
"|___|_| |_|_|\__(_)_/ |_|_| |_| |_|


" =====================================
" === Auto load for first time uses ===
" =====================================
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source $HOME/.config/nvim/modules/mappings.vim
source $HOME/.config/nvim/modules/editor.vim
source $HOME/.config/nvim/modules/language-config.vim
source $HOME/.config/nvim/modules/machine-specific.vim
source $HOME/.config/nvim/modules/cursor.vim
source $HOME/.config/nvim/modules/plugins.vim
source $HOME/.config/nvim/modules/theme.vim
source $HOME/.config/nvim/modules/coc.vim
source $HOME/.config/nvim/modules/snippets.vim
source $HOME/.config/nvim/modules/plugin-setting.vim

