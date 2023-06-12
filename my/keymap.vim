" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" ack搜索时不打开第一个搜索文件
map <Leader>fw :Ack! <Space>
" AckFile不打开第一个搜索文件
map <Leader>ff :AckFile!<Space>
" 定义快捷键 关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键
nmap <Leader>w :w<CR>
" 删除光标所在单词
nmap e daw
" close TAB
nmap tabc :tabc <CR>
" go to previous table
map gp :tabp <CR>
" 定义快捷键 跳转到光标所在关键词的定义处
" here are multiple matches, show me a list of all the matching tags 
nmap <Leader>gt g<C-]>
" 定义快捷键 跳回原关键词 与 ;gr 配合使用
nmap <Leader>gr <C-T>
" 向下翻半屏
nmap <Leader>u <C-U>
" 向上翻半屏
nmap <Leader>d <C-D>
" 快速移动到行首，行尾
map <Leader>1 ^
map <Leader>2 $
" 补全提示
""nmap <Leader>p <C-P>
" 快速切换C H源文件
nmap <Leader>a :A<CR>

"快速切换到上一个文件
" nmap <Leader>j :bn<CR>
" nmap <Leader>k :bp<CR>

" 设置快捷键gs遍历各分割窗口。快捷键速记法：goto the next spilt window
nnoremap <Leader>gg <C-W><C-W>

" 向左
nnoremap <leader>h <C-W><C-H>
" 向右
nnoremap <leader>l <C-W><C-L>
" 向上
nnoremap <Leader>k <C-W><C-K>
" 向下
nnoremap <Leader>j <C-W><C-J>
" 去除高亮
"nmap <Leader>h :noh<CR>
" 打开文件
nmap <Leader>e :e<Space>
" 不关闭文件推出
nmap <Leader>z <C-Z>
" 水平分隔
nmap <Leader>s :Sex<CR>
" 竖直分隔
nmap <Leader>v :Vex<CR>
" 全局替换
nmap <Leader>r :%s/fileName-/fileName+/g
" align 表格对齐
nmap <Leader>t :Tab /
" 打tag
" --c++-kinds=+p  : Adds prototypes in the database for C/C++ files.
"--fields=+iaS   : Adds inheritance (i), access (a) and function
"                  signatures (S) information.
"--extra=+q      : Adds context to the tag name. Note: Without this
"                  option, the script cannot get class members.
nmap<leader>tg :!ctags -R --fields=+aS --extra=+q<CR>
" java jdk 补全
map! <C-O> <C-X><C-O>
" 使用NERDTree插件查看工程文件。设置快捷键
nnoremap <silent> <Leader>n  :NERDTreeToggle <CR> 
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 设置忽略的文件
let NERDTreeIgnore=['\.vim$', '\~$', '\.o$', '\.d$', '\.a$', '\.out$', '\.tgz$']

" 使用TlistToggle查看文件函数列表。设置快捷键：<F12>
nnoremap  <Leader>m  :TlistToggle <CR> 
" 粘贴到系统剪切板
map <Leader>y "*y

" 使用ctrlc, v就可以实现vim之间的复制粘贴
vnoremap <C-c> :w! ~/tmp/clipboard.txt <CR>
inoremap <C-v> <Esc>:r ~/tmp/clipboard.txt <CR>
" 编译快捷键
autocmd filetype python nnoremap <F1> :w <bar> exec '!python '.shellescape('%')<CR> autocmd filetype c nnoremap <F1> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F1> :w <bar> exec '!g++ --std=c++11 -pthread '.shellescape('%').' -o ./bin/'.shellescape('%:r').' && ./bin/'.shellescape('%:r')<CR>
" autocmd filetype dot nnoremap <F1> :w <bar> exec '!dot -Tsvg '.shellescape('%').' > ./svg/'.shellescape('%:r').' && open ./bin/'.shellescape('%:r')<CR>
autocmd filetype dot nnoremap <F1> :w <bar> exec '!dot -Tsvg sqlparse.dot > sqlparse.svg'<CR>
autocmd Filetype java nnoremap <F1> :w <bar> exec '!javac '.shellescape('%'). ' -d ./bin'<CR>
autocmd filetype java nnoremap <F2> :w <bar> exec '!java -cp ./bin '.shellescape('%:r')<CR>


" shortcut for markdown
" 创建时间快捷键for markdown
nmap tm :call SetTime() <CR>
func SetTime()
        call append(line("."), "\# ".strftime('%a %d %b %Y'))
endfunc

nmap tb :call SetTable() <CR>
func SetTable()
        call append(line("."), "\| | | ")
        call append(line(".")+1, "\|---|---|")
        call append(line(".")+2, "\| | |")
endfunc

nmap pc :call SetPic() <CR>
func SetPic()
        call append(line("."), "\<img src='' width=600 alt=''> </img></div>")
endfunc

nmap pi :call SetPic1() <CR>
func SetPic1()
        call append(line("."), "\![]()")
endfunc

nmap vi :call SetVideo() <CR>
func SetVideo()
        call append(line("."), "\<video src='1.mp4' controls='controls' width='640' height='320' autoplay='autoplay'> Your browser does not support the video tag.</video></div>")
endfunc

nmap cl :call SetCollor() <CR>
func SetCollor()
        call append(line("."), "<span  style='color: #f16707;'> </span>")
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 解决超长行移动的困难
" 重新定义<UP> <DOWN> 
nmap <UP> gk
imap <UP> <ESC>gka

nmap <DOWN> gj
imap <DOWN> <ESC>gja

" for quick save in normal mode
map <silent> <F2> :write<CR>

if has_key(g:plugs, 'nerdtree')
map <silent> <F3> :NERDTree<CR>
endif

if has_key(g:plugs, 'nerdtree')
nnoremap <silent> <F4> :Tlist<CR>
endif

" let F5 insert current time to current location.
map <F5> i<C-R>=strftime("%H:%M %Y-%m-%d")<ESC><ESC>

" Let F8 made dictionary automatically complete keywords.
map! <F8> <C-X><C-K>

" switch between windows
map <silent> <F12> <C-W>w
"
" for quick save in edit mode
imap <F2> <ESC><F2>a

" Don't use Ex mode, use Q for formatting
map Q gq

if executable('DashSearch')
" integrate dash.app into vim
    let g:dash_map = { 'bash' : 'sh', 'php' : 'php', 'c' : 'c', 'vim' : 'vim', 'css' : 'css', 'javascrip' : 'javascript', 'sql' : 'mysql' }
    " 使用Dash.app查询光标所在处的关键词
    nmap <silent> <leader>d <Plug>DashSearch
endif
if executable('DashGlobalSearch')
    nmap <silent> <leader>D <Plug>DashGlobalSearch
endif
