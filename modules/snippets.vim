" =========================
" === Markdown Settings ===
" =========================
" Snippets
source $HOME/.config/nvim/UltiSnips/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell


" =================
" === ultisnips ===
" =================
let g:tex_flavor = "latex"
inoremap <c-n> <nop>
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-n>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/UltiSnips/', $HOME.'/.vim/plugged/vim-snippets/UltiSnips']
silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>

