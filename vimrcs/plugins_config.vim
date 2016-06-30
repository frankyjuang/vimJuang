""""""""""""""""""""""""""""""
" => bufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerFindActive = 1
let g:bufExplorerSortBy = 'name'
map <leader>bb :BufExplorer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagBar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tt :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim 
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = "light"
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z = "%3p%% %l:%c"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_cpp_compiler_options = " -std=c++11"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 2
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
map <leader>ll :lne<CR>
map <leader>lp :lp<CR>
" toggle python version
command! SynPython call TogglePythonVersion()
function! TogglePythonVersion()
    if !exists("g:syntastic_python_python_exec")
        let g:syntastic_python_python_exec = "python2"
    elseif g:syntastic_python_python_exec == "python2"
        let g:syntastic_python_python_exec = "python3"
    else
        let g:syntastic_python_python_exec = "python2"
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let NERDSpaceDelims = 1
