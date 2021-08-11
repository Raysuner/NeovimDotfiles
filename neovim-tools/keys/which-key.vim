" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ ':Commentary'                , 'comment' ]
let g:which_key_map['o'] = [ ':Bracey'                    , 'live server' ]
" let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Farr --source=vimgrep'     , 'find and replace' ]
let g:which_key_map['F'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right' ]

let g:which_key_map.l = {
    \'name' : '+lsp',
    \'[' : [ '<Plug>(coc-diagnostic-prev)', 'diagnostic-prev' ],
    \']' : [ '<Plug>(coc-diagnostic-next)', 'diagnostic-next' ],
    \'r' : [ '<Plug>(coc-rename)', 'rename' ],
    \'f' : [ ':Format', 'format' ],
    \'F' : [ ':Fold', 'fold' ],
    \'rc': [ ':OR', 'runCommand' ],
    \'l' : [ ':CocList', 'coclist' ],
    \'a' : [ ':CocList diagnostics', 'list diagnostics'],
    \'c' : [ ':CocList commands', 'list commands' ],
    \'e' : [ ':CocList extensions', 'list extensions' ],
    \'o' : [ ':CocList outline', 'list outline' ],
    \'s' : [ ':CocList -I symbols', 'commands list'] ,
    \'p' : [ ':CocListResume', 'list recent'] ,
    \}

let g:which_key_map.b = {
    \'name' : '+buffer',
    \'1' : [ ':BufferGoto 1', 'buffer 1' ],
    \'2' : [ ':BufferGoto 2', 'buffer 2' ],
    \'3' : [ ':BufferGoto 3', 'buffer 3' ],
    \'4' : [ ':BufferGoto 4', 'buffer 4' ],
    \'5' : [ ':BufferGoto 5', 'buffer 5' ],
    \'6' : [ ':BufferGoto 6', 'buffer 6' ],
    \'7' : [ ':BufferGoto 7', 'buffer 7' ],
    \'8' : [ ':BufferGoto 8', 'buffer 8' ],
    \'9' : [ ':BufferGoto 9', 'buffer 9' ],
    \'s' : [ ':Buffers' , 'list buffers' ],
    \'h' : [ ':BufferMovePrevious', 'move buffer previous' ],
    \'l' : [ ':BufferMoveNext', 'move buffer next' ],
    \'c' : [ ':BufferClose', 'close buffer' ],
    \'o' : [ ':BufferCloseAllButCurrent', 'current buffer' ]
    \}

let g:which_key_map.s = {
    \'name' : 'startify',
    \'l' : [ ':SLoad', 'load' ],
    \'c' : [ ':SClose', 'close' ],
    \'d' : [ ':SDelete', 'delete' ],
    \}

let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }
" Register which key map
call which_key#register('<Space>', "g:which_key_map")
