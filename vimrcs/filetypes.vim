"""""""
" C++ "
"""""""
let g:syntastic_cpp_compiler_options = " -std=c++11"
let g:syntastic_cpp_checkers=["cpplint", "gcc"]
let g:syntastic_cpp_cpplint_exec = "cpplint"
let g:syntastic_cpp_cpplint_args = "--verbose=0"


""""""""""""""
" JavaScript "
""""""""""""""
let g:javascript_plugin_jsdoc = 1
let g:syntastic_javascript_checkers=["eslint"]


""""""""""
" Python "
""""""""""
let g:python_highlight_all = 1
let g:syntastic_python_checkers = ["pylint", "python"]

" Determine python version for syntastic check.
let g:syntastic_python_python_exec = "python3"
command! SynPython call TogglePythonVersion()
function! TogglePythonVersion()
    if g:syntastic_python_python_exec == "python3"
        let g:syntastic_python_python_exec = "python2"
    else
        let g:syntastic_python_python_exec = "python3"
    endif
endfunction


""""""""
" MISC "
""""""""
autocmd BufNewFile,BufRead *.smali set filetype=smali
