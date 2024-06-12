" encoding
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8

" search
set incsearch
set nohlsearch
set ignorecase

" indent
set expandtab
set smarttab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start

set number
set relativenumber
set cursorline
set nowrap
set scrolloff=5
set splitright
set splitbelow
set list
set listchars=tab:\ ➜
set background=dark

set wildmenu
set wildoptions=pum
set wildignore=.git,*.o,*.pyc,*.pyo,*.swp

" Install vim-plug and plugins if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug
call plug#begin()

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim-code-dark
Plug 'tomasiser/vim-code-dark'

" vim-gitgutter
Plug 'airblade/vim-gitgutter'

" auto-pairs
Plug 'jiangmiao/auto-pairs'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" syntastic
Plug 'scrooloose/syntastic'

" vim-auto-save
Plug '907th/vim-auto-save'

" vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" vim-easy-align
Plug 'junegunn/vim-easy-align'

" coc.nvim
if executable('node')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

" vim-surround
Plug 'tpope/vim-surround'

" vim-commentary
Plug 'tpope/vim-commentary'

" vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

" fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vim-oscyank
Plug 'ojroques/vim-oscyank'

" vim-lastplace
Plug 'farmergreg/vim-lastplace'

" vim-easymotion
Plug 'easymotion/vim-easymotion'

" editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" undotree
Plug 'mbbill/undotree'

call plug#end()

" leader prefix
let g:mapleader = " "

" vim-airline
silent! let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', '%l/%L'])

" vim-airline-theme
let g:airline_theme = 'codedark'

" vim-code-dark
syntax enable
let g:codedark_modern = 1
let g:codedark_term256 = 1
silent! colorscheme codedark

" vim-gitgutter
let g:gitgutter_map_keys = 0
nnoremap <silent> g[ <Plug>(GitGutterNextHunk)
nnoremap <silent> g] <Plug>(GitGutterPrevHunk)

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-auto-save
let g:auto_save = 1

" vim-easy-align
xmap <leader>ea <Plug>(EasyAlign)
nmap <leader>ea <Plug>(EasyAlign)

" fzf
nnoremap <silent> <leader>ff <cmd>Files<cr>
nnoremap <silent> <leader>fl <cmd>Lines<cr>
nnoremap <silent> <leader>fbl <cmd>BLines<cr>
nnoremap <silent> <leader>ft <cmd>Tags<cr>
nnoremap <silent> <leader>fbt <cmd>BTags<cr>
nnoremap <silent> <leader>fh <cmd>History<cr>

" vim-oscyank
let g:oscyank_term = "default"
nnoremap <silent> <leader>y <cmd>OSCYankVisual<cr>

" vim-lastplace
let g:lastplace_ignore = "gitcommit,gitrebase,hgcommit,svn,xxd"
let g:lastplace_ignore_buftype = "help,nofile,quickfix"
let g:lastplace_open_folds = 0

" vim-easymotion
nnoremap <silent> f <Plug>(easymotion-sn)

" undotree
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_DiffpanelHeight = 10
let g:undotree_SplitWidth = 24
nnoremap <silent> <leader>u <cmd>UndotreeToggle<cr>
