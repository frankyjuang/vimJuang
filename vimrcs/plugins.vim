"""""""""""
" ack.vim "
"""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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
map <leader>n<Space> :call ToggleNERDTreeFind()<CR>
" auto close tab if there is only nerdtree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""
" syntastic "
"""""""""""""
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': []}
nnoremap <leader>sc :SyntasticCheck<CR>
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_loc_list_height = 5
" Go thru errors.
map <leader>x :lclose<CR>
map <leader>a :lne<CR>
map <leader>d :lp<CR>

""""""""""
" tagbar "
""""""""""
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
map <leader>t<Space> :TagbarToggle<CR>

"""""""""""""""
" vim-airline "
"""""""""""""""
let g:airline_theme = "light"
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z = "%3p%% %l:%c"
