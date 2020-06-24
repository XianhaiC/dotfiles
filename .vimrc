execute pathogen#infect()

syntax on
filetype plugin indent on

" set indents to be 2 spaces
set tabstop=4 softtabstop=4
set shiftwidth=2
set expandtab
set smarttab

" indenting
set smartindent
set autoindent
set cindent

" undo history
set undodir=~/.vim/undodir
set undofile

set rnu
set incsearch

" enter pasting mode
set pastetoggle=<F3>

" disable scratchpad
set completeopt-=preview

" autowrap certain files
au BufRead,BufNewFile *.tex setlocal textwidth=80

highlight OverLength ctermbg=red ctermfg=white guibg=red
match OverLength /\%81v.\+/



" The following alternative may be less obtrusive.
highlight ExtraWhitespace ctermbg=red guibg=red
2match ExtraWhitespace /\s\+$/

" vim-airline

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


" buffers as tabs

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <leader>j :bnext<CR>

" Move to the previous buffer
nmap <leader>k :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>


" NERD commenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" vim-latex-live-preview

let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0

" remaps
map <C-n> :NERDTreeToggle<CR>
map <C-h> :UndotreeToggle<CR>

" vimplug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'calviken/vim-gdscript3'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()
