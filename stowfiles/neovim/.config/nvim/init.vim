" init.vim

" === SETTINGS ===

syntax on
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
set scrolloff=6
set sidescrolloff=6
set ignorecase
set smartcase
set splitbelow splitright
set clipboard+=unnamedplus
set shiftwidth=4
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set signcolumn=yes
set laststatus=2
set undofile
set conceallevel=2
filetype plugin on

" === BASIC MAPPINGS ===

let mapleader = ";"

" Easier movement keys (normal)

nnoremap gh h
nnoremap gj L
nnoremap gk H
nnoremap gl l
nnoremap gm M
nnoremap H h
nnoremap J gj
nnoremap K gk
nnoremap L l

" Easier movement keys (visual)

vnoremap gj L
vnoremap gk H
vnoremap gm M
vnoremap H h
vnoremap J gj
vnoremap K gk
vnoremap L l

" Easier movement keys (block)

xnoremap H h
xnoremap J gj
xnoremap K gk
xnoremap L l

" Stay in indent mode (visual)

vnoremap < <gv
vnoremap > >gv

" Paste black hole register

vnoremap p "_dP

" Split movements

nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" noremap <silent> <A-S-j> :vertical resize -3<CR>
" noremap <silent> <A-S-k> :vertical resize +3<CR>

" Search/replace shortcuts

nnoremap <C-s> :%s//g<Left><Left>
vnoremap <C-s> :s//g<Left><Left>

" Tabs

nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <A-k> :tabn<CR>
nnoremap <silent> <A-j> :tabp<CR>

" Quit current window

nnoremap <silent> <C-q> :quit<CR>

" Close current window

nnoremap <silent> <C-c> :close<CR>

" Clear search query

nnoremap <silent> <C-/> :noh<CR>

" Disable operations

nnoremap <C-z> <nop>

" Check spelling

nnoremap gs :setlocal spell! spelllang=en_us<CR>

" === PLUGINS ===

" Plugins to install

call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify'
Plug 'mrjones2014/smart-splits.nvim'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" Plug 'nvim-lua/plenary.nvim'
" Plug 'terryma/vim-multiple-cursors'

call plug#end()

" === PLUGIN CONFIG ===

" Lightline

let g:lightline = {
      \ 'colorscheme': 'base16',
      \ }

" Gitgutter

let g:gitgutter_map_keys = 0

" Startify

map <silent> <leader>s :Startify<CR>

" Smart-Splits

nnoremap <silent> <A-S-k> :SmartResizeUp <CR>
nnoremap <silent> <A-S-j> :SmartResizeDown <CR>
nnoremap <silent> <A-S-h> :SmartResizeLeft <CR>
nnoremap <silent> <A-S-l> :SmartResizeRight <CR>

" Lf

let g:lf_map_keys = 0
map <leader>f :Lf<CR>

let g:lf_replace_netrw = 1 " Open lf when vim opens a directory

" Floaterm

let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

map <leader>T :FloatermNew<CR>

" Colorizer

let g:colorizer_colornames = 0

augroup auto_colorize
autocmd!
autocmd FileType * :ColorHighlight
augroup END

" Goyo

map <silent> <leader>g :Goyo<CR>
let g:goyo_width = '60%'
let g:goyo_height = '90%'

function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

" Vimwiki

let g:vimwiki_global_ext = 0

nnoremap <leader>ww <nop>
let g:vimwiki_list = [{'path': '$HOME/Documents/notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_hl_headers = 1

let g:vimwiki_key_mappings =
    \ {
    \   'all_maps': 1,
    \   'global': 1,
    \   'headers': 1,
    \   'text_objs': 1,
    \   'table_format': 1,
    \   'table_mappings': 1,
    \   'lists': 1,
    \   'links': 1,
    \   'html': 0,
    \   'mouse': 0,
    \ }

" Colorscheme

set background=dark
set termguicolors

colorscheme base16

" === COMMANDS ===

autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Automatically deletes all trailing whitespace on save

autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are updated

autocmd BufWritePost *Xresources,*Xdefaults,*.xrdb !xrdb $HOME/.Xresources

" When shortcuts files are updated, renew zsh and vifm configs with new material

" autocmd BufWritePost * %s/\s\+%//e

" Clear cmd line message with timer

function! s:empty_message(timer)
  if mode() ==# 'n'
    echon ''
  endif
endfunction

augroup cmd_msg_cls
    autocmd!
    autocmd CmdlineLeave :  call timer_start(500, funcref('s:empty_message'))
augroup END

" Disable auto-comment on new line

autocmd BufNewFile,BufRead * setlocal formatoptions-=ro

