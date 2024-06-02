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

"" --- Clear cmd line message with timer
function! s:empty_message(timer)
  if mode() ==# 'n'
    echon ''
  endif
endfunction

augroup cmd_msg_cls
    autocmd!
    autocmd CmdlineLeave :  call timer_start(1000, funcref('s:empty_message'))
augroup END

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
nnoremap <silent> <C-x> :wincmd x<CR>

noremap <silent> <A-S-k> :vertical resize +3<CR>
noremap <silent> <A-S-j> :vertical resize -3<CR>

"" --- Search/replace shortcuts
nnoremap <C-\> :%s//g<Left><Left>
vnoremap <C-\> :s//g<Left><Left>

"" --- Tabs
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <A-k> :tabn<CR>
nnoremap <silent> <A-j> :tabp<CR>

"" --- Quit current window
nnoremap <silent> <C-q> :quit<CR>

"" --- Close current window
nnoremap <silent> <C-c> :close<CR>

"" --- Clear search query
nnoremap <silent> <C-_> :noh<CR>

"" --- Disable operations
nnoremap <C-z> <nop>

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
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-webdevicons'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'junegunn/goyo.vim'

" Plug 'Shougo/vimfiler'
" Plug 'Yggdroot/indentLine'
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" Plug 'nvim-lua/plenary.nvim'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'mfussenegger/nvim-dap'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'

call plug#end()

"""""""""""""""""""""
"  PLUGIN SETTINGS  "
"""""""""""""""""""""
"" --- Startify
map <silent> <leader>s :Startify<CR>

"" --- Lightline
let g:lightline = {
      \ 'colorscheme': 'apprentice',
      \ }

"" --- Vimwiki
let g:vimwiki_list = [{'path': '$HOME/Documents/vimwiki'},
            \ {'path': '$HOME/Documents/Gwiki/vimwiki'}]

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
let g:goyo_width = '65%'
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

"" --- Colorscheme
set background=dark
set termguicolors

function! s:tweak_apprentice()
hi VertSplit guifg=#444444 guibg=#262626 gui=NONE cterm=NONE
hi Comment guifg=#6c6c6c guibg=NONE gui=italic cterm=NONE
hi Title guifg=#87af87 guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=NONE

hi SpellBad guifg=#262626 guibg=#af5f5f guisp=#af5f5f gui=bold cterm=bold
hi SpellCap guifg=#262626 guibg=#5fafaf guisp=#5fafaf gui=bold cterm=bold
hi SpellLocal guifg=#262626 guibg=#5f875f guisp=#5f875f gui=bold cterm=bold
hi SpellRare guifg=#262626 guibg=#ff8700 guisp=#ff8700 gui=bold cterm=bold
endfunction

autocmd! ColorScheme apprentice call s:tweak_apprentice()

colorscheme apprentice

