nnoremap <leader>sc :noh<cr>

" Files
nnoremap <leader>fs :w<cr>

" wild menu swap arrows
set wildmenu
set wildcharm=<C-Z>
cnoremap <expr> <up> wildmenumode() ? "\<left>" : "\<up>"
cnoremap <expr> <down> wildmenumode() ? "\<right>" : "\<down>"
cnoremap <expr> <left> wildmenumode() ? "\<up>" : "\<left>"
cnoremap <expr> <right> wildmenumode() ? " \<bs>\<C-Z>" : "\<right>"

" Windows
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>ws :split<cr>
nnoremap <leader>ww <C-w>w
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>wm <C-w>o
nnoremap <leader>wd :close<cr>

" Buffers
nnoremap <leader>bb    :buffers<cr>:buffer<space>
nnoremap <leader>bn    :bnext<cr>
nnoremap <leader><tab> :b#<cr>
nnoremap <leader>bp    :bprevious<cr>
nnoremap <leader>bd    :bdelete<cr>
nnoremap <C-x>k        :buffers<cr>:bdelete<space>


inoremap jk <esc>
nnoremap <C-g> <esc>
cnoremap <C-g> <c-u><bs>
inoremap <C-g> <esc>
xnoremap <C-g> <esc>
nnoremap ñ ;
nnoremap Ñ :

" unwrap exceptions in json format
command -range UnwrapEx :silent<line1>,<line2> s/\\t/    /ge | s/\\n/<cr>/ge


if has("nvim")
    " tnoremap <esc> <C-\><C-n>
    tnoremap jkl <C-\><C-n>
    tnoremap lkj <C-\><C-n>
    tnoremap <C-v>jk <esc>

    " highlight normal mode cursor and termina cursor
    "highlight! link TermCursor Cursor
    highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif
