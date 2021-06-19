" =======================
" === space vim theme ===
" =======================
let g:space_vim_transp_bg = 1
colorscheme space_vim_theme


" ===================
" === beacon.nvim ===
" ===================
let g:beacon_enable = 1


" ===================
" === vim-airline ===
" ===================
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_powerline_fonts = 1


" =========================
" === vim-airline-theme ===
" =========================
"let g:airline_theme='violet'


" =======================
" === galaxyline.nvim ===
" =======================
lua << EOF
require('init-galaxyline')
EOF


" ==================
" === treesitter ===
" ==================
lua << EOF
require('init-treesitter')
EOF


" =======================
" === nvim-ts-rainbow ===
" =======================
hi rainbowcol1 guifg=#123456

