" change tabstop to space stop and set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 设置高亮当前行
set cursorline

" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
set laststatus=2 " 永远显示状态栏
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:Powerline_symbols = 'fancy'

set display=lastline
set number

set ruler  " show the cursor position all the time
set showcmd  " display incomplete commands

let g:molokai_original = 1
"colorscheme monokai
set t_Co=256
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme molokai

set fenc=" "
"显示匹配
set showmatch
"括号匹配
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
set selectmode=mouse,key
set selection=exclusive
set mouse=n "可视模式下使用鼠标，set mouse=a这个命令导致在vim下复制粘贴不好用
set ai "vim中复制粘贴保存格式
set ignorecase "设置默认大小写不敏感查找
set smartcase "如果有大小写字母，则切换到大小写敏感查找
set tags=tags;/ "告诉在每个目录下如果找不到tags就到上一层目录去找
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set ruler           " 显示标尺"
autocmd InsertEnter * se cul    " 用浅色高亮当前行"
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示

" :colorscheme desert     " 设置主题
" vim-commentary style set 注释针对不同语言的注释方法
autocmd FileType cpp set commentstring=//\ %s
autocmd FileType php set commentstring=//\ %s
" set modeline
set modeline
" 搜索关键词高亮
set hlsearch
" 开启语义分析
syntax enable
syntax on

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
  set ttimeoutlen=10
  augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
  augroup END
endif
