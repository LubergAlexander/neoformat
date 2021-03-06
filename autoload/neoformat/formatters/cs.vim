function! neoformat#formatters#cs#enabled() abort
    return ['uncrustify', 'astyle']
endfunction

function! neoformat#formatters#cs#uncrustify() abort
    return {
        \ 'exe': 'uncrustify',
        \ 'args': ['-q', '-l CS', '-f']
        \ }
endfunction

function! neoformat#formatters#cs#astyle() abort
    return {
        \ 'exe': 'astyle',
        \ 'args': ['--mode=cs'],
        \ 'replace': 1
        \ }
endfunction
