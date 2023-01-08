let &t_ZM = "\e[3m"

" setup truecolor support if availible
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" vim-plugs
call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'andymass/vim-matchup'
"Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'mattn/emmet-vim', {'for': ['javascript.jsx', 'html', 'css']}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-css-color'

" tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
"Plug 'tpope/vim-fugitive'

" syntax and friends
Plug 'mxw/vim-jsx', {'for' : 'javascript.jsx'}
Plug 'pangloss/vim-javascript', {'for' : ['javascript.jsx', 'javascript']}
Plug 'alvan/vim-closetag'
" Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'tomlion/vim-solidity'
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'

" colorschemes
Plug 'nerdypepper/agila.vim'
Plug 'nerdypepper/chestnut.vim'
Plug 'nerdypepper/vim-colors-plain', { 'branch': 'duotone' }
Plug 'kjwon15/vim-transparent'

" lsp modes
Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'

" echo warning/error under cursor in normal mode
let g:lsp_diagnostics_echo_cursor = 1
" prettier gutter signs
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}
" lets you see the hover information by pressing "K".
au FileType ocaml setlocal keywordprg=:LspHover
" use tag muscle memory to go to definition, press Ctrl+]
au FileType ocaml nnoremap <buffer> <C-]> :LspDefinition<CR>
" ensure whatever you use for completion knows about the LSP information.
au FileType ocaml setlocal omnifunc=lsp#complete


call plug#end()

" augroups

augroup plaintext
  autocmd!
  autocmd FileType text,markdown setlocal ts=2 sts=2 sw=2 expandtab textwidth=60
augroup END

augroup webdev
  autocmd!
  autocmd FileType less,css,html,js?,ts? setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType less,css,html nnoremap <Leader>s viB:sort<cr>
augroup END

" augroup highlight_follows_vim
" autocmd!
" autocmd WinEnter * set cursorline
" autocmd WinLeave * set nocursorline
" augroup END

augroup restorecursor
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   execute "normal! g`\"" |
        \ endif
augroup END

" general settings
set nobackup
set nowritebackup
set noswapfile " get rid of swapfiles everywhere
set dir=/tmp

syntax on

set omnifunc=syntaxcomplete#Complete
set completefunc=LanguageClient#complete
set nolist
filetype off
filetype plugin indent on
set laststatus=2
set nowrap
set noshowmode
"set listchars=tab:┊\ ,nbsp:␣,trail:·,extends:>,precedes:<
"set fillchars=vert:\│
set ignorecase
set smartcase
set sidescroll=40
set incsearch
set hlsearch
set undofile
set undodir=~/tmp
set path+=**
set backspace=indent,eol,start
set hidden
set wildmenu
set foldmethod=manual
set complete=.,w,b,i,u,t,
set background=light
"set mouse=a
set conceallevel=0
set nocursorline
set nonumber
set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m
set cmdheight=2
set shortmess+=c
set updatetime=300
set signcolumn=yes
set nu
set rnu
set pastetoggle=<F3>
set completeopt-=preview
let mapleader= " "

let g:netrw_browsex_viewer= "xdg-open"

"colorscheme trans
colorscheme coffee
" get rid of annoying tilde
highlight EndOfBuffer ctermfg=NONE ctermbg=NONE
if has('nvim')
  set fcs=eob:~
endif

" default indents
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

" language specific
autocmd FileType go setlocal noexpandtab

" Functions
function! GetTabber()  " a lil function that integrates well with Tabular.vim
  let c = nr2char(getchar())
  :execute 'Tabularize /' . c
endfunction

" Ugh
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q

" abbreviations
abclear
iab #i #include
iab #d #define
cab dst put =strftime('%d %a, %b %Y')<cr>
cab vg vimgrep


" plugin settings

" emmet
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-X>'

" gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added                     = '+'       " '┃'
let g:gitgutter_sign_modified                  = '~'       " '┃'
let g:gitgutter_sign_removed                   = '-'       " '┃'
let g:gitgutter_sign_removed_first_line        = '-'       " '┃'
let g:gitgutter_sign_modified_removed          = '~'       " '┃'

highlight GitGutterAdd    ctermfg=8
highlight GitGutterChange ctermfg=8
highlight GitGutterDelete ctermfg=8

" rust.vim
let g:rustfmt_autosave = 1

" fzf colors
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

" indentLine
let g:indentLine_setColors = 0
let g:indentLine_char      = '┆'

let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = "zathura"

" man pages
let g:ft_man_open_mode = 'tab'

" vim-matchup
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_matchparen_deferred_show_delay = 300
let g:matchup_matchparen_deferred_hide_delay = 400

" coc-nvim
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
hi CocHintSign ctermfg=7
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" NERD commenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" vim-latex-live-preview

let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0


" vim-closetag
" enable jsx
let g:closetag_filetypes = 'html,xhtml,jsx,javascript'

" remaps

" reload vimrc
nmap <leader>rr :so ~/.vimrc<CR>
" reload all buffers
nmap <leader>ee :bufdo! e<CR>
" indent buffer
nmap <leader>tt gg=G``zz
map <C-n> :NERDTreeToggle<CR>
map <C-h> :UndotreeToggle<CR>
map <C-b> :noh<CR>

" buffer key maps
:nnoremap <Leader>b :buffers<CR>:buffer<Space>

" undo history
set undodir=~/.vim/undodir
set undofile

" ycm
let g:ycm_auto_hover=''

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
map <C-f> :GFiles<CR>

" auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairs = {'(':')', '[':']', '{':'}'}

" vlime
let g:vlime_leader = ","
let g:vlime_compiler_policy = {"DEBUG": 3}
"let g:vlime_cl_use_terminal = 1

" leetcode
let g:leetcode_browser = "chrome"

""" language settings
