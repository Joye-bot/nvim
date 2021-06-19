" ===================================
" === Install Plugs with Vim-Plug ===
" ===================================

call plug#begin('~/.vim/plugged')

" ColorScheme
Plug 'liuchengxu/space-vim-theme'
Plug 'danilamihailov/beacon.nvim'
Plug 'itchyny/vim-cursorword'


" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'


" Status line
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'Iron-E/nvim-highlite'


" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }


" File navigation
Plug 'liuchengxu/vista.vim'
Plug 'voldikss/vim-floaterm'
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }


" Find & Replace
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
Plug 'ctrlpvim/ctrlp.vim'


" Debugger
Plug 'puremourning/vimspector'

" Modern task system
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'


" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}


" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" Editor Enhancement
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'godlygeek/tabular'
Plug 'kshenoy/vim-signature'
Plug 'mg979/vim-visual-multi'
Plug 'easymotion/vim-easymotion'


" indent
Plug 'Yggdroot/indentLine'
"Plug 'glepnir/indent-guides.nvim'


" Git
Plug 'airblade/vim-gitgutter'


" Markdown
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'dkarter/bullets.vim'


" Python
Plug 'tmhedberg/SimpylFold'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent'


" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go', 'vim-plug'], 'tag': '*' }


" HTML, CSS, JavaScript
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'othree/html5.vim'

call plug#end()

