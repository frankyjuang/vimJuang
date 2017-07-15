""""""""""""""""""""""""""""""
" => MISC section
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.smali set filetype=smali

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let g:python_highlight_all = 1
let g:syntastic_python_checkers = ['pylint', 'python']
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

""""""""""""""""""""""""""""""
" => C++ section
""""""""""""""""""""""""""""""
let g:syntastic_cpp_compiler_options = " -std=c++11"

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()
