:color desert
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" In order to actually search within the visual selection, you will need to use the \%V atom, or use the markers defined by the visual selection with the \%>'< and \%<'> atoms. This is best done by leaving the visual selection with <Esc> before entering your search. You may want to consider a mapping to automatically leave visual selection and enter the appropriate atoms. For example:
vnoremap <M-/> <Esc>/\%V

execute pathogen#infect()
syntax on
filetype plugin indent on

" for slime to send command across panes
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}


" set ignore case and smart case (need both to be effective for latter one.) 
set ignorecase
set smartcase

" set auto read file if any change
set autoread

" display linenm and relative linenm with regard to cursor, do easy to do
" something like 8j and 5dd. 
" set relativenumber
set number

" default to start with search highlight
set hlsearch


" The following map uses the above technique so that pressing F8 will
" highlight all occurrences of the current word:
:nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
" Or, press return to temporarily get out of the highlighted search.
:nnoremap <CR> :nohlsearch<CR><CR>

"  to get the following coding style,
"
"  No tabs in the source file.
"  All tab characters are 2 space characters.
set tabstop=2 shiftwidth=2 expandtab smarttab





" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
Plug 'vim-python/python-syntax'
Plug 'python-mode/python-mode', { 'branch': 'develop' }

"
" Initialize plugin system
call plug#end()



" enable all Python syntax highlighting features
"let python_highlight_all = 1

" python-mode config
let g:pymode_python = 'python3'
"let g:pymode_indent = []
let g:pymode = 1
let g:pymode_options = 1
let g:pymode_motion = 1
let g:pymode_run = 0
let g:pymode_run_bind = '<leader>r'
" 2) Set the 'virtualenv' as my anaconda path. It's not a virtualenv per sé
" but i don't use the system python path.
let g:pymode_virtualenv_path = "/gnshealthcare/shared/yyang/anaconda3"
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_autoimport = 1
let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime']
let g:pymode_rope_autoimport_import_after_complete = 0
