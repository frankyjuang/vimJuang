"""""""""""
" ack.vim "
"""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"""""""
" ale "
"""""""
let g:ale_history_enabled = 0
let g:ale_echo_msg_error_str = 'Error:'
let g:ale_echo_msg_warning_str = 'Warning:'
let g:ale_echo_msg_format = '%severity% %s [%linter%]'
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "!"
map <leader>aa <Plug>(ale_go_to_definition)
map <leader>ad <Plug>(ale_detail)
map <leader>a<space> <Plug>(ale_toggle_buffer)
nmap <silent> <C-i> <Plug>(ale_previous_wrap)
nmap <silent> <C-u> <Plug>(ale_next_wrap)

"""""""""""""""
" bufExplorer "
"""""""""""""""
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerFindActive = 1
let g:bufExplorerSortBy = 'name'
map <leader>b<Space> :BufExplorer<CR>

"""""""""""
" fzf.vim "
"""""""""""
set rtp+=/usr/local/opt/fzf  " Install using Homebrew.
set rtp+=$HOME/.fzf  " Install using git.
let g:fzf_buffers_jump = 1
nnoremap <leader>f :Ag<CR>

"""""""""""""""""
" nerdcommenter "
"""""""""""""""""
let NERDSpaceDelims = 1
let g:NERDAltDelims_python = 1  " Avoid having two spaces before delimiter.
let g:NERDCustomDelimiters = { 'jinja': { 'left': '{#','right': '#}' } }

""""""""""""
" nerdtree "
""""""""""""
function! ToggleNERDTreeFind()
    if g:NERDTree.IsOpen()
        execute ':NERDTreeClose'
    else
        execute ':NERDTreeFind'
    endif
endfunction
map <F3> :call ToggleNERDTreeFind()<CR>
" auto close tab if there is only nerdtree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""
" tagbar "
""""""""""
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
map <F6> :TagbarToggle<CR>

""""""""""""
" undotree "
""""""""""""
nnoremap <F4> :UndotreeToggle<CR>

"""""""""""""""
" vim-airline "
"""""""""""""""
let g:airline_theme = "light"
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z = "%3p%% %l:%c"

"""""""""""""""
" vimtex"
"""""""""""""""
let g:tex_flavor = "latex"
