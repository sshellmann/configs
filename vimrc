colorscheme desert
set background=dark
set expandtab
set ts=4
set sw=4
set sts=4
set ai
set nowrap
set clipboard=unnamed
set hlsearch
set nopaste

if has('folding')
    set foldenable " Enable code folding
    set foldmethod=marker " Fold on marker
    set foldmarker={{{,}}} " Keep foldmarkers default
    set foldopen-=search " Do not open folds when searching
    set foldopen-=undo " Do not open folds when undoing changes
    set foldlevel=999 " High default so folds are shown to start
    set foldcolumn=0 " Don't show a fold column
	autocmd BufNewFile,BufRead *.js* set foldmethod=marker foldmarker={,}
endif
let g:is_bash=1
filetype plugin indent on
highlight DiffChange ctermfg=black ctermbg=6
set encoding=utf-8
set fileencoding=utf-8

nnoremap m :lnext<Enter>
nnoremap , :lprev<Enter>
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript'],'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
"nnoremap <C-d> :SyntasticCheck jsxhint<Enter>
nnoremap <C-\><C-k> :SyntasticToggleMode<Enter>
nnoremap <C-k> :Errors<Enter>:lcl<Enter>:lr<Enter>

autocmd FileType python set et ts=4 sw=4 sts=4 ai
set fml=0
nnoremap <C-g> :setf log<Enter>

map <C-a> <Home>
map <C-e> <End>
