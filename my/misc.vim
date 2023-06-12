" 设置自动刷新缓存，当需要重新读取缓存时只需要执行:checktime
set autoread

" 搜索时忽略大小写
set ignorecase

" vim 7.3新特性：持久撤销 配置
" 重启后撤销历史可用 persistent undo 
set undofile
set undodir=$VIMFILES/\_undodir " 必须手工预先创建，vim不会自动帮你创建
set undolevels=1000 "maximum number of changes that can be undone

set encoding=utf8
let &termencoding=&encoding
set fileencoding=utf-8
set fileencodings=utf8,gbk,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set linebreak
let s:w_mywin=0

" fix The legacy SnipMate parser is deprecated. Please see :h SnipMate-deprecate.
let g:snipMate = { 'snippet_version' : 1 }

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50  " keep 50 lines of command line history
set incsearch  " do incremental searching

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

" disable auto backup
set nobackup

" set root directory of DICTIONARY, whose value by default is
" NULL to Linux
" /cygdrive/c to cygwin
" C: to Win32
" let g:DIC_ROOT_DIR="C:\\dict"
"
" set default 'dictionary' path
" execute ":set dictionary+=".g:DIC_ROOT_DIR."\\words"
" more and more place including such keyword
set iskeyword+=-

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
