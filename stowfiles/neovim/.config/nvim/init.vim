" init.vim

""""""""""""""
"  SETTINGS  "
""""""""""""""
set hidden
set confirm
set mouse=a
set iskeyword+=-
set noswapfile
set termguicolors
set number
set linebreak
set cursorline
set noshowmode
set scrolloff=8
set sidescrolloff=8
set ignorecase
set smartcase
set splitbelow splitright
set clipboard=unnamedplus
set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set signcolumn=yes
set laststatus=2
set undofile
set nocompatible

""""""""""""""
"  COMMANDS  "
""""""""""""""
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are updated
autocmd BufWritePost *Xresources,*Xdefaults,*.xrdb !xrdb $HOME/.Xresources

" Disable automatic comment insertion on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" When shortcuts files are updated, renew zsh and vifm configs with new material
" autocmd BufWritePost * %s/\s\+%//e

""""""""""""""""""""
"  BASIC MAPPINGS  "
""""""""""""""""""""
let mapleader = ";"

"" --- Easier movement keys (normal)
nnoremap gj L
nnoremap gk H
nnoremap gh h
nnoremap gl l
nnoremap J gj
nnoremap K gk
nnoremap L l
nnoremap H h

"" --- Easier movement keys (visual)
vnoremap gj L
vnoremap gk H
vnoremap J gj
vnoremap K gk
vnoremap L l
vnoremap H h

"" --- Easier movement keys (block)
xnoremap J gj
xnoremap K gk
xnoremap L l
xnoremap H h

"" --- Stay in indent mode (visual)
vnoremap < <gv
vnoremap > >gv

"" --- Split movements
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

"" --- Search/replace shortcuts
nnoremap <C-\> :%s//g<Left><Left>
vnoremap <C-\> :s//g<Left><Left>

"" --- Tabs
nnoremap <silent> <C-t> :tabnew<CR>

"" --- Quit current window
nnoremap <silent> <C-q> :quit<CR>

"" --- Close current window
nnoremap <silent> <C-c> :close<CR>

"" --- Clear search query
nnoremap <silent> <C-_> :noh<CR>

"" --- Disable operations
nnoremap <C-z> <nop>
nnoremap M <nop>

"" --- Check spelling
nnoremap gs :setlocal spell! spelllang=en_us<CR>

"""""""""""""
"  PLUGINS  "
"""""""""""""
"" --- Plugins to install
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-webdevicons'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'junegunn/goyo.vim'
" Plug 'Shougo/vimfiler'
" Plug 'Yggdroot/indentLine'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" Plug 'nvim-lua/plenary.nvim'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'mfussenegger/nvim-dap'

call plug#end()

"""""""""""""""""""""
"  PLUGIN SETTINGS  "
"""""""""""""""""""""
"" --- Startify
map <silent> <leader>s :Startify<CR>

"" --- Vimwiki
let g:vimwiki_list = [{'path': '$HOME/Documents/vimwiki'},
            \ {'path': '$HOME/Gwiki/vimwiki'}]

" let g:vimwiki_list = [{'path': '$HOME/Documents/vimwiki/',
"                       \ 'syntax': 'markdown', 'ext': '.md'}]

"" --- Lf
let g:lf_map_keys = 0
map <leader>f :Lf<CR>

let g:lf_replace_netrw = 1 " Open lf when vim opens a directory

let g:vimwiki_global_ext = 0

"" --- Floaterm
map <leader>t :FloatermNew<CR>

"" --- Gitgutter
let g:gitgutter_map_keys = 0

"" --- Hexokinase
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'
let g:Hexokinase_highlighters = ['backgroundfull']

"" --- Goyo
map <silent> <leader>g :Goyo<CR>
let g:goyo_width = 160

"" --- Lightline
let g:lightline = {
      \ 'colorscheme': 'apprentice',
      \ }

"" --- Colorscheme
set background=dark
colorscheme apprentice
set termguicolors

highlight VertSplit guifg=#444444 guibg=#262626 gui=NONE cterm=NONE
highlight Comment guifg=#6c6c6c guibg=NONE gui=italic cterm=NONE
highlight Title guifg=#87af87 guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=NONE

hi SpellBad guifg=#262626 guibg=#af5f5f guisp=#af5f5f gui=bold cterm=bold
hi SpellCap guifg=#262626 guibg=#5fafaf guisp=#5fafaf gui=bold cterm=bold
hi SpellLocal guifg=#262626 guibg=#5f875f guisp=#5f875f gui=bold cterm=bold
hi SpellRare guifg=#262626 guibg=#ff8700 guisp=#ff8700 gui=bold cterm=bold
