" Initialize vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  if v:shell_error
    " just in case of github access failure
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    if v:shell_error
      exit
    else
      silent !touch ~/.vim/autoload/plug.vim.ready
    endif
  else
    silent !touch ~/.vim/autoload/plug.vim.ready
  endif
endif

if !empty(glob('~/.vim/autoload/plug.vim.ready'))
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    if !v:shell_error
      silent !rm -f "$HOME/.vim/autoload/plug.vim.ready"
    endif
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

Plug 'gmarik/vundle'

" My Plugs here:
" original repos on github
Plug 'mattn/calendar-vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'tomtom/tlib_vim' 
Plug 'chrisbra/unicode.vim' 
Plug 'altercation/vim-colors-solarized'
Plug 'mattn/emmet-vim'
Plug 'myhere/vim-nodejs-complete'
" Plug 'rodjek/vim-puppet'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-dispatch'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'powerline/powerline'
Plug 'rizzatti/dash.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
Plug 'MarcWeber/vim-addon-mw-utils'

" It only works on vim >= 8.1 and neovim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-fugitive'

" themes
Plug 'tomasr/molokai'

" vim-scripts repos
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/ditaa'
Plug 'vim-scripts/load_template'
Plug 'vim-scripts/perl-support.vim'
Plug 'vim-scripts/sessionman.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/vcscommand.vim'
" a.vim 一些快速命令可以在源文件和头文件之间快速切换。
Plug 'vim-scripts/a.vim'
" 这是一个非常有用的插件，在使用多个缓冲区时能够以类似选项卡的方式查看缓冲区状态是非常令人愉快的。
Plug 'vim-scripts/minibufexpl.vim'

" Bro
Plug 'mephux/bro.vim'

" vim-markdown-toc
Plug 'mzlogin/vim-markdown-toc'

" https://github.com/plasticboy/vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

" https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'

" https://github.com/rhysd/vim-grammarous
" Plug 'rhysd/vim-grammarous'

" https://github.com/junegunn/fzf
Plug 'junegunn/fzf'

"Plug 'tweekmonster/django-plus'

" Align GitHub-Flavored Markdown Tables in Vim
Plug 'junegunn/vim-easy-align'

" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'


" vim 8.1.1615+ only!!!
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'ludovicchabant/vim-gutentags'

" Vim 8.2+ only!!!
Plug 'skywind3000/vim-quickui'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-dict'
Plug 'skywind3000/vim-auto-popmenu'

" Initialize plugin system
call plug#end()


