let g:asyncrun_open = 10
inoremap <silent><f9> <Esc>:AsyncTask file-build<cr>
inoremap <silent><f10> <Esc>:AsyncTask file-run<cr>
nnoremap <silent><f9> :AsyncTask file-build<cr>
nnoremap <silent><f10> :AsyncTask file-run<cr>
nnoremap <silent><LocalLeader> :ccl<cr>
