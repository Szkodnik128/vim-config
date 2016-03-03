" VIM settings "
set nocompatible

" PLUGIN MANAGEMENT "
call pathogen#infect() 

" GENERAL "
set novb
set mouse=a
set number
set nowrap
set encoding=utf-8
set laststatus=2
set t_Co=256
set bs=2
set fileencodings=ucs-bom,utf-8,default,cp1250,latin1
set shell=/bin/sh

" APPEARANCE "
syntax on
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let g:Powerline_symbols = 'fancy'
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme badwolf
if &diff
	colorscheme gruvbox
	set background=dark
endif
if has("gui_running")
	set go-=T
	set go-=r
	set go-=L
endif

" filetype specific "
filetype plugin indent on

" plugin behaviour "
let g:SuperTabDefaultCompletionType = "context"
let g:errormarker_errorgroup = "Error"

" nerd tree"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <F2> :NERDTreeToggle<CR>

" key mappings "
nnoremap <F7> :GundoToggle<CR>
nnoremap <F5> :silent make<CR>:redraw!<CR>

" split screen "
nnoremap <C-down> <C-W><C-J>
nnoremap <C-up> <C-W><C-K>
nnoremap <C-right> <C-W><C-L>
nnoremap <C-left> <C-W><C-H>
set splitright

" clang "
let g:ycm_confirm_extra_conf = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

" autoload plugins "
augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
