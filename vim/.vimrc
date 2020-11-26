  set nocompatible              					         " be iMproved, required

so ~/.vim/plugins.vim

execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

let g:loaded_airline = 0
syntax enable
set backspace=indent,eol,start                                          "Make backspace behave like every other editor.
let mapleader = ',' 						    	"The default is \, but a comma is much better.
set nonumber								"turn off line numbers. number to turn on
set complete=.,w,b,u							"Set our disired autocompletion
cnoremap help vert help

set foldmethod=syntax							"Make folds work based on syntax
set clipboard=unnamedplus						"Share system clipboard

"--------------NVim------------------------"
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"-------------Visuals-----------------------"
set background=dark

colorscheme night-owl

set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L 
set guioptions-=r 
set guioptions-=R 
set nowrap
set encoding=utf-8
set relativenumber
set number

set vb t_vb=                                                            "Disable error sounds
"-------------Search------------------------"
set hlsearch								"Highlight all matched terms.
set incsearch								"Incrementally highlight, as we type.

"-------------Split Management--------------"
set splitbelow 								"Make splits default to below...
set splitright								"And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Mappings----------------------"
"GIT MAPPINGS
"Open status
nmap <Leader>gs :Gstatus<cr>
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/.vimrc<cr>

"Make it easy to manage your plugins.
nmap <Leader>pl :tabedit ~/.vim/plugins.vim<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <Leader><Leader>a :NERDTreeToggle<cr>
"Make NERDTree open in current buffer
nmap <Leader><Leader>r :NERDTreeFind<cr>

"Toggle display of invisble characters.
nmap <Leader>l :set list!<cr>

nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"Ctags helper
nmap <Leader>f :tag<space>

"Set jj to esc"
inoremap jj <Esc>

"Set close buffer to Leader q"
nmap <Leader>q :bd<cr>

"Set open new tab"
nmap <Leader>t :tabnew<cr>

"Set write buffer to Leader w"
nmap <Leader>w :w<cr>

"Paste with ident"
set pastetoggle=<F2>

"Search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"Reload tags file
nmap <Leader>rt :! ctags -R --exclude="vendor" --exclude="node_modules" --exclude=".git"
"-------------Plugins----------------------"
"
"/ CtrlP
let g:ctrlp_show_hidden = 1                                               "Display dotfiles
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Display TagBar
nmap <F8> :TagbarToggle<CR>

"/ Prevents NerdTree from hijacking browsing from Netrw
let NERDTreeHijackNetrw   = 0

"AirlineVim - fallback unicode symbols config
"let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"Vim-Startify
let g:startify_custom_header = [
\ '                                       ',
\ '    ░█▀▄░▄▀▀▄░▀█▀░█▀▀░░▀░░█░░█▀▀░█▀▀   ', 
\ '    ░█░█░█░░█░░█░░█▀░░░█▀░█░░█▀▀░▀▀▄   ',
\ '    ░▀▀░░░▀▀░░░▀░░▀░░░▀▀▀░▀▀░▀▀▀░▀▀▀   ',
\ '     ---------- tavs 2020 ----------   ']

"Vim Stntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Importar class no topo
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

"Rainbow brackets
let g:rainbow_active=1

"Vim fugitive
"Set diff to vertical
set diffopt+=vertical

"COC Vim
"Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
