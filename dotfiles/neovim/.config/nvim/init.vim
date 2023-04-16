"" init.vim

"===========
" SETTINGS |
"===========
set nocompatible

"" --- Syntax settings
syntax enable
syntax on

set hidden
set confirm ""  Save/quit confirmation
set encoding=utf-8 "" Set encoding

"" --- Visual settings
set termguicolors
set number "" Display line numbers
set linebreak "" Smart wrap
set cursorline "" Show cursor line
set scrolloff=4
set sidescrolloff=4

"" --- Indentation settings
set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4
set expandtab

set ignorecase "" Case insensitive search
set smartcase "" Smartcase search

set splitbelow splitright "" Set split directions

"" --- Set clipboard settings
set clipboard=unnamedplus
set iskeyword+=-

set noswapfile "" Disable vim swapfile creation
set undofile "" Enable persistent undo

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

"" --- Easier close
nnoremap <silent> <C-c> <C-w>c

"" --- Clear search query
nnoremap <silent> <C-_> :noh<CR>

"" --- Easier movement keys (splits)
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

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

"" --- Stay in indent mode
vnoremap < <gv
vnoremap > >gv

"" --- Keep yank
vnoremap p _dP

"" --- Search/replace shortcuts
nnoremap <C-s> :%s//g<Left><Left>
vnoremap <C-s> :s//g<Left><Left>

"" --- New tab
nnoremap <silent> <C-t> :tabnew<CR>

"" --- Disable operation
nnoremap <C-z> <nop>
nnoremap <C-q> <nop>

"" --- Smart-splits bindings
nnoremap <silent> <C-A-h> :SmartResizeLeft<CR>
nnoremap <silent> <C-A-j> :SmartResizeDown<CR>
nnoremap <silent> <C-A-k> :SmartResizeUp<CR>
nnoremap <silent> <C-A-l> :SmartResizeRight<CR>

nnoremap <silent> <C-h> :SmartCursorMoveLeft<CR>
nnoremap <silent> <C-j> :SmartCursorMoveDown<CR>
nnoremap <silent> <C-k> :SmartCursorMoveUp<CR>
nnoremap <silent> <C-l> :SmartCursorMoveRight<CR>

"===========
" VIM-PLUG |
"===========
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'mcchrish/nnn.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mrjones2014/smart-splits.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mfussenegger/nvim-dap'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" Plug 'nvim-lua/plenary.nvim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'preservim/nerdtree'
" Plug 'easymotion/vim-easymotion'
" Plug 'junegunn/goyo.vim'
" Plug 'vifm/vifm.vim'
" Plug 'haorenW1025/floatLf-nvim'

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

"==========
" VIMWIKI |
"==========
let g:vimwiki_list = [{'path': '$HOME/Documents/vimwiki/'}]

"==========
" NNN.VIM |
"==========
let $NNN_TRASH=1

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
