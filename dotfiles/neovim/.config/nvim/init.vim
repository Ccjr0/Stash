" === INIT.VIM ===

"===========
" SETTINGS |
"===========
syntax enable
syntax on

set hidden

"" --- Smart wrap
set linebreak

"" --- Save confirmation
set confirm

set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4
set expandtab

"" --- Case insensitive search, smartcase
set ignorecase
set smartcase

set encoding=utf-8

"" --- Display line numbers
set number

"" --- Set split directions
set splitbelow splitright

set clipboard=unnamedplus
set iskeyword+=-

"" --- Disable vim swap creation
set noswapfile

"" --- Disable automatic comment insertion on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"" --- Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"" --- When shortcuts files are updated, renew zsh and vifm configs with new material:
" autocmd BufWritePost * %s/\s\+%//e

"" --- Run xrdb whenever Xdefaults or Xresources are updated
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

"=======
" MAPS |
"=======
"" --- Set the leader key
let mapleader = ";"

"" --- Easier splits
" nnoremap <C-s> <C-w>s
" nnoremap <C-x> <C-w>v

"" --- Clear search query
nnoremap <silent> \ :noh<Enter>

"" --- Workaround to delete word on Ctrl+BS in insert mode
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

"" --- Easier movement keys (splits)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" --- Easier movement keys (normal)
nnoremap K gk
nnoremap J gj
nnoremap H h
nnoremap L l

"" --- Easier movement keys (visual)
vnoremap K gk
vnoremap J gj
vnoremap H h
vnoremap L l

"" --- Global search/replace
nnoremap <C-s> :%s//g<Left><Left>

"" --- New tab
nnoremap <silent> <C-t> :tabnew<CR>

"" --- Disable operation
noremap R <nop>
noremap f <nop>
noremap F <nop>
nnoremap <C-z> <nop>

"" --- Smart-splits plugin bindings
nnoremap <silent> <C-A-h> :SmartResizeLeft<Enter>
nnoremap <silent> <C-A-j> :SmartResizeDown<Enter>
nnoremap <silent> <C-A-k> :SmartResizeUp<Enter>
nnoremap <silent> <C-A-l> :SmartResizeRight<Enter>

" nnoremap <silent> <C-h> :SmartCursorMoveLeft<Enter>
" nnoremap <silent> <C-j> :SmartCursorMoveDown<Enter>
" nnoremap <silent> <C-k> :SmartCursorMoveUp<Enter>
" nnoremap <silent> <C-l> :SmartCursorMoveRight<Enter>

"===========
" VIM-PLUG |
"===========
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'mfussenegger/nvim-dap'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'mcchrish/nnn.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mrjones2014/smart-splits.nvim'
" Plug neoclide/coc.nvim', {'branch': 'release'}
" Plug 'preservim/nerdtree'
" Plug 'tpope/vim-surround'
" Plug 'easymotion/vim-easymotion'
" Plug 'junegunn/goyo.vim'
" Plug 'vifm/vifm.vim'

call plug#end()

"==============
" STATUS LINE |
"==============
" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\

"==========
" AIRLINE |
"==========
let g:airline_theme='distinguished'


highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
