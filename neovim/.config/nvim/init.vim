" ------------------
" --- INIT.VIM --- |
" ------------------

" ----------
" SETTINGS |
" ----------
syntax enable
syntax on

set hidden

" Smart wrap
set linebreak

" Save confirmation
set confirm

set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4
set expandtab

" Case insensitive search, smartcase
set ignorecase
set smartcase

set encoding=utf-8

" Display line numbers
set number

" Set split directions
set splitbelow splitright

set clipboard=unnamedplus
set iskeyword+=-

" Disable swap creation
set noswapfile

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" When shortcuts files are updated, renew zsh and vifm configs with new material:
" autocmd BufWritePost * %s/\s\+%//e

" Run xrdb whenever Xdefaults or Xresources are updated
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" ------
" MAPS |
" -----
" Set the leader key
let mapleader = ";"

" Easier splits
nnoremap <leader>s <C-w>s
nnoremap <leader>v <C-w>v

" Clear search query
nnoremap \ :noh<Enter>

" Easier movement keys (splits)
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" Easier movement keys (normal)
nnoremap K gk
nnoremap J gj
nnoremap H h
nnoremap L l

" Easier movement keys (visual)
vnoremap K gk
vnoremap J gj
vnoremap H h
vnoremap L l

" Global search/replace
nnoremap <C-s> :%s//g<Left><Left>

" New tab
nnoremap <silent> <C-t> :tabnew<CR>

" ---------
" PLUGINS |
" ---------
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'mfussenegger/nvim-dap'
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug neoclide/coc.nvim', {'branch': 'release'}
" Plug 'preservim/nerdtree'
" Plug 'easymotion/vim-easymotion'

call plug#end()

" -------------
" STATUS LINE |
" -------------
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
