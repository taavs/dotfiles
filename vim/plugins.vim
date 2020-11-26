filetype off                  " required
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Colorschemes && IDE improvments
Plugin 'morhetz/gruvbox'
Plugin 'haishanh/night-owl.vim'
Plugin 'fennerm/my-nord-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-startify'

" Syntax
Plugin 'neoclide/coc.nvim'
Plugin 'vim-syntastic/syntastic'
Plugin 'jwalton512/vim-blade'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'posva/vim-vue'

" Navigation
Plugin 'preservim/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegr'
Plugin 'reservim/nerdtree'

" Version Control
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
