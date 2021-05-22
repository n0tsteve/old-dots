set t_Co=256
set nu
set relativenumber
set incsearch
set noshowmode
set laststatus=2
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%#warningmsg#
set cursorline
set termguicolors
set background=dark

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'atomic'
let g:airline_skip_empty_sections = 1

map <F6> :NERDTreeToggle<CR>
map <F7> :tabnew<CR>
map <F8> :tabprevious<CR>
map <F9> :tabnext<CR>

call plug#begin('~/.local/share/nvim/plugged/')
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'owozsh/amora'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'mhinz/vim-startify'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mg979/vim-visual-multi'
Plug 'ycm-core/YouCompleteMe'
Plug 'dylanaraps/wal.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme amora
hi Normal guibg=NONE ctermbg=none
