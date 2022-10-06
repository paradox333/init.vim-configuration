set number
call plug#begin()

"Temas
"Plug 'dikiaap/minimalist'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Mofiqul/dracula.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'yggdroot/indentline'
Plug 'xiyaowong/nvim-transparent'


"Typing
Plug 'jiangmiao/auto-pairs'

"Test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

call plug#end()

set t_Co=256
syntax on

"set background=dark
colorscheme dracula 

"let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let mapleader=" "
let g:transparent_enabled = v:true

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>a :q!<CR>

nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Kite
let g:kite_supported_languages = ['python', 'javascript']

" Press jk to return to normal mode when in insert mode
inoremap jk <ESC>
inoremap <ESC> <NOP>

" Press ii to return to normal mode when in visual mode
vnoremap ii <ESC>
vnoremap <ESC> <NOP>

" Press nm when in Command mode, to go back to normal mode
cnoremap nm <ESC>

