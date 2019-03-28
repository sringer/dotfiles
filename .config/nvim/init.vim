source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keybindings.vim
"""""""""""""""""""""""""""""""""""""""""""""""""
" Vim plug stuff
" Ensure vim-plug is installed:
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'rking/ag.vim'

nmap <leader><space> :Ag 
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" map nerdtree to ,n
nmap <leader>nt :NERDTreeToggle<cr>
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :FZF<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete reqs
"""""""""""""""""""""""""""""""""""""""""""""""""
"
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
"Plug 'mhartington/nvim-typescript', { 'for': 'typescript' }
" Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript', 'do': 'npm install -g tern' }
" Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'npm install' }
Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'
"let g:EditorConfig_core_mode = 'external_command'
Plug 'w0rp/ale'
" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = { 'javascript': ['eslint'] }

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

nmap <leader>lt :ALEToggle<cr>
nmap <leader>ln :ALENext<cr>
nmap <leader>lf :ALEFix<cr>
call plug#end()
