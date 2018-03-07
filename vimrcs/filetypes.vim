""""""""""""""
" JavaScript "
""""""""""""""
let g:javascript_plugin_jsdoc = 1

""""""""""
" Python "
""""""""""
let g:python_highlight_all = 1
let g:ale_python_pylint_executable = 'python3'
command! AlePython call TogglePythonVersion()
function! TogglePythonVersion()
    if g:ale_python_pylint_executable == "python3"
        let g:ale_python_pylint_executable = "python2"
    else
        let g:ale_python_pylint_executable "python3"
    endif
endfunction

""""""""
" MISC "
""""""""
autocmd BufNewFile,BufRead *.smali set filetype=smali
