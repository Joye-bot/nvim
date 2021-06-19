" ======================
" === vim-hexokinase ===
" ======================
let g:Hexokinase_highlighters = [ 'backgroundfull' ]


" =================
" === vista.vim ===
" =================
noremap <LEADER>v :Vista!!<CR>
noremap <c-t> :silent! Vista finder coc<CR>

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

" function! NearestMethodOrFunction() abort
"       return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


" ====================
" === vim-floaterm ===
" ====================
let g:floaterm_keymap_prev   = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_kill   = '<F7>'
let g:floaterm_wintype='float'
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_position='center'
let g:floaterm_autoclose=1
nnoremap tw :FloatermNew<CR>
nnoremap tf :FloatermNew fzf<CR>
nnoremap tr :FloatermNew ranger<CR>
nnoremap tg :FloatermNew lazygit<CR>
nnoremap tp :FloatermNew python<CR>
nnoremap th :FloatermNew htop<CR>


" ======================
" === dashboard-nvim ===
" ======================
"let g:dashboard_custom_header = [
"\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
"\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
"\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
"\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
"\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
"\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
"\]
let g:dashboard_preview_command = 'cat'
let g:dashboard_preview_file = '~/.config/nvim/sunjon.cat'
let g:dashboard_preview_pipeline="lolcat"
let g:dashboard_preview_file_width = 70
let g:dashboard_preview_file_height = 10
let foo = system('fortune | lolcat')
"let g:dashboard_custom_footer = [foo]
let g:dashboard_default_executive ='fzf'


" ================
" === vim-clap ===
" ================
let g:clap_provide_alias = { 'hist': 'command_history', 'gfiles': 'git_files' }
let g:clap_layout = { 'relative': 'editor' }
let g:clap_theme = 'material_design_dark'
let g:clap_popup_border = 'sharp'
" The provider name is `command_history`, with the following alias config,
" now you can call it via both `:Clap command_history` and `:Clap hist:`.
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_selected_sign = { 'text': ' >', 'texthl': "ClapSelectedSign", "linehl": "ClapSelected"}
let g:clap_current_selection_sign = { 'text': '>>', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_open_preview = 'never'
let g:clap_open_action = {'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit'}
let g:clap_preview_size = { '*':5, 'files':10 }
autocmd FileType clap_input let g:completion_enable_auto_pop = 0
autocmd FileType clap_input inoremap <silent> <buffer> <C-e> <C-R>=clap#navigation#linewise('down')<CR>
autocmd FileType clap_input inoremap <silent> <buffer> <C-u> <C-R>=clap#navigation#linewise('up')<CR>


" ===============
" === fzf.vim ===
" ===============
set rtp+=~/.fzf
noremap <silent> <C-f> :Rg<CR>
noremap <silent> <C-w> :Buffers<CR>
noremap <leader>; :History:<CR>
let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))

noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }


" ===============
" === LeaderF ===
" ===============
" popup mode
"let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
"let g:Lf_ShortcutF = '<C-P>'
let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

"noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
"noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>


let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
let g:Lf_CommandMap = {
\   '<C-k>': ['<C-u>'],
\   '<C-j>': ['<C-e>'],
\   '<C-]>': ['<C-v>'],
\   '<C-p>': ['<C-n>'],
\}
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', 'vendor', 'node_modules'],
        \ 'file': ['__vim_project_root', 'class']
        \}
let g:Lf_UseMemoryCache = 0
let g:Lf_UseCache = 0


" ===============
" === far.vim ===
" ===============
noremap <LEADER>fa :F  **/*<left><left><left><left><left>
let g:far#mapping = {
		\ "replace_undo" : ["l"],
		\ }


" ==================
" === vimspector ===
" ==================
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/vimspector-json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/vimspector-json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad


" ======================
" === vim-signature ====
" ======================
let g:SignatureMap = {
		\ 'Leader'            : "m",
		\ 'PlaceNextMark'     : "m,",
		\ 'ToggleMarkAtLine'  : "m.",
		\ 'PurgeMarksAtLine'  : "dm-",
		\ 'DeleteMark'        : "dm",
		\ 'PurgeMarks'        : "dm/",
		\ 'PurgeMarkers'      : "dm?",
		\ 'GotoNextLineAlpha' : "m<LEADER>",
		\ 'GotoPrevLineAlpha' : "",
		\ 'GotoNextSpotAlpha' : "m<LEADER>",
		\ 'GotoPrevSpotAlpha' : "",
		\ 'GotoNextLineByPos' : "",
		\ 'GotoPrevLineByPos' : "mn",
		\ 'GotoPrevSpotByPos' : "mp",
		\ 'GotoNextMarker'    : "",
		\ 'GotoPrevMarker'    : "",
		\ 'GotoNextMarkerAny' : "",
		\ 'GotoPrevMarkerAny' : "",
		\ 'ListLocalMarks'    : "m/",
		\ 'ListLocalMarkers'  : "m?",
		\ }


" ========================
" === vim-visual-multi ===
" ========================
"let g:VM_theme = 'iceblue'
"let g:VM_default_mapping = 0
let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_custom_motions             = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
let g:VM_maps['i']                  = 'k'
let g:VM_maps['I']                  = 'K'
let g:VM_maps['Find Under']         = '<C-k>'
let g:VM_maps['Find Subword Under'] = '<C-k>'
let g:VM_maps['Find Next']          = ''
let g:VM_maps['Find Prev']          = ''
let g:VM_maps['Remove Region']      = 'q'
let g:VM_maps['Skip Region']        = '<c-n>'
let g:VM_maps['Undo']               = 'l'
let g:VM_maps['Redo']               = '<C-r>'


" ======================
" === vim-easymotion ===
" ======================
"let g:EasyMotion_do_mapping = 0
"let g:EasyMotion_do_shade = 0
"let g:EasyMotion_smartcase = 1
" map ' <Plug>(easymotion-overwin-f2)
" nmap ' <Plug>(easymotion-overwin-f2)
"map E <Plug>(easymotion-j)
"map U <Plug>(easymotion-k)
"nmap f <Plug>(easymotion-overwin-f)
"map \; <Plug>(easymotion-prefix)
"nmap ' <Plug>(easymotion-overwin-f2)
"map 'l <Plug>(easymotion-bd-jk)
"nmap 'l <Plug>(easymotion-overwin-line)
"map  'w <Plug>(easymotion-bd-w)
"nmap 'w <Plug>(easymotion-overwin-w)


" ==================
" === indentLine ===
" ==================
let g:indentLine_char = '│'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#333333'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 0
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig


" ==========================
" === indent-guides.nvim ===
" ==========================
"lua << EOF
"require('init-indent')
"EOF


" ============================
" === vim-instant-markdown ===
" ============================
"let g:instant_markdown_slow = 0
"let g:instant_markdown_autostart = 1
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 1
"let g:instant_markdown_browser = "firefox --new-window"
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1


" =============================
" === markdown-preview.nvim ===
" =============================
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'firefox'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
	\ 'mkit': {},
	\ 'katex': {},
	\ 'uml': {},
	\ 'maid': {},
	\ 'disable_sync_scroll': 0,
	\ 'sync_scroll_type': 'middle',
	\ 'hide_yaml_meta': 1
	\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ======================
" === vim-table-mode ===
" ======================
noremap <LEADER>tm :TableModeToggle<CR>


" ===================
" === bullets.vim ===
" ===================
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]


" ==============
" === vim-go ===
" ==============
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_type = 1
let g:go_highlight_fileds = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enable = 0


