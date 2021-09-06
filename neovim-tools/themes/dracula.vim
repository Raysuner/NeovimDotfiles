function! MyHighlights()
    highlight Green cterm=NONE ctermfg=34  gui=NONE  guifg=#3DC05E
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme dracula call MyHighlights()
augroup END
function

