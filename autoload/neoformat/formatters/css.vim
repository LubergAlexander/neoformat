function! neoformat#formatters#css#enabled() abort
    return ['cssbeautify', 'prettydiff', 'stylefmt', 'csscomb']
endfunction

function! neoformat#formatters#css#cssbeautify() abort
    return { 'exe': 'css-beautify' }
endfunction

function! neoformat#formatters#css#csscomb() abort
    return {
            \ 'exe': 'csscomb',
            \ 'replace': 1
            \ }
endfunction

function! neoformat#formatters#css#prettydiff() abort
    return {
            \ 'exe': 'prettydiff',
            \ 'args': ['mode:"beautify"',
                     \ 'lang:"css"',
                     \ 'readmethod:"filescreen"',
                     \ 'endquietly:"quiet"',
                     \ 'source:"%:p"'],
            \ 'no_append': 1
            \ }
endfunction

function! neoformat#formatters#css#stylefmt() abort
    return {
        \ 'exe': 'stylefmt',
        \ 'replace': 1
        \ }
endfunction
