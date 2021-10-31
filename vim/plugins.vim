filetype off                  " required

call plug#begin('~/.vim/plugged')

" Colorschemes && IDE improvments
Plug 'morhetz/gruvbox'
Plug 'haishanh/night-owl.vim'
Plug 'fennerm/my-nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

" Syntax
Plug 'vim-syntastic/syntastic'
Plug 'jwalton512/vim-blade'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'

" Navigation
Plug 'preservim/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Version Control
Plug 'tpope/vim-fugitive'

call plug#end()

filetype plugin indent on    " required
