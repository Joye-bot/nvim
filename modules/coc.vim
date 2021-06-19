" ================
" === coc.nvim ===
" ================
let g:coc_global_extensions = [
				\ 'coc-clangd',
				\ 'coc-css',
				\ 'coc-diagnostic',
				\ 'coc-emmet',
				\ 'coc-eslint',
				\ 'coc-explorer',
				\ 'coc-gitignore',
				\ 'coc-html',
				\ 'coc-java',
				\ 'coc-json',
				\ 'coc-lists',
				\ 'coc-pairs',
				\ 'coc-prettier',
				\ 'coc-pyright',
				\ 'coc-python',
				\ 'coc-snippets',
				\ 'coc-syntax',
				\ 'coc-tasks',
				\ 'coc-vimlsp',
				\ 'coc-yank']

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-o> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-o> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Use `<leader>-` and `<leader>+` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>+ <Plug>(coc-diagnostic-next)


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use <LEADER>h to show documentation in preview window.
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


" Formatting selected code.
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)


" Applying codeAction to the selected region.
" Example: `<leader>app` for current pargraph
" xmap <leader>a <Plug>(coc-codeaction-selected)
" nmap <leader>a <Plug>(coc-codeaction-selected)

function! s:cocActionsOpenFromSelected(type) abort
	execute 'CocCommand actions.open' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@



" ====================
" === coc-explorer ===
" ====================
nmap tt :CocCommand explorer<CR>


" ====================
" === coc-tasks ===
" ====================
noremap <silent> <leader>ts :CocList tasks<CR>
" coc-snippets
"imap <C-l> <Plug>(coc-snippets-expand)
"vmap <C-e> <Plug>(coc-snippets-select)
"let g:coc_snippet_next = '<c-e>'
"let g:coc_snippet_prev = '<c-n>'
"imap <C-e> <Plug>(coc-snippets-expand-jump)


" ================
" === coc-yank ===
" ================
noremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>

