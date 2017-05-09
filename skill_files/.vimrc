"""""""""""""""""""
" 显示相关
"""""""""""""""""""
"set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示
"winpos 5 5 " 设定窗口位置
"set lines=40 columns=155 " 设定窗口大小
set nu " 显示行号
set go= " 不要图形按钮
"color asmanian2 " 设置背景主题
" set guifont=YaHei " 设置字体
syntax enable
syntax on " 语法高亮
highlight Comment ctermfg=darkcyan guifg=seagreen
highlight Constant guifg=deeppink ctermfg=magenta
highlight Special guifg=deeppink ctermfg=magenta
highlight Statement gui=NONE guifg=blue ctermfg=yellow
highlight PreProc guifg=red ctermfg=red
highlight Type gui=NONE guifg=blue ctermfg=green
autocmd InsertLeave * se nocul " 用浅色高亮当前行
autocmd InsertEnter * se cul " 用浅色高亮当前行
"set ruler " 显示标尺
set showcmd " 输入的命令显示出来，看的清楚些
"set cmdheight=1 " 命令行（在状态行下）的高度，设置为1
"set whichwrap+=<,>,h,l " 允许backspace和光标键跨越行边界(不建议)
"set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离
"set novisualbell " 不要闪烁(不明白)
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} "状态行显示的内容
set laststatus=1 " 启动显示状态行(1),总是显示状态行(2)
set nofoldenable " 不允许折叠
set foldmethod=syntax" 手动折叠
"set background=dark "背景使用黑色
set nocompatible "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限 
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=
"""""""""""""""""""""""""""""""
"键盘命令
"""""""""""""""""""""""""""""""
let mapleader=";"
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>
"nmap <leader>w :w!<cr>
"nmap <leader>f :find<cr>
" 映射全选+复制 ctrl+a
"map <C-A> ggVGY
"map! <C-A> <Esc>ggVGY
"map <F12> gg=G
" 选中状态下 Ctrl+c 复制
"vmap <C-c> "+y
"去空行
"nnoremap <F2> :g/^\s*$/d<CR>
"比较文件
"nnoremap <C-F2> :vert diffsplit
"新建标签
"map <M-F2> :tabnew<CR>
"列出当前目录文件
"map <F3> :tabnew .<CR>
"打开树状文件目录
"map <C-F3> \be 
"""""""""""""""""""""""

""""""""""""""""""""""""
""实用设置
""""""""""""""""""""""""
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全
set completeopt=preview,menu
"允许插件
filetype plugin on
"共享剪贴板
set clipboard+=unnamed
"从不备份
"set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler " 打开状态栏标尺
set cursorline " 突出显示当前行
" set cursorcolumn " 突出显示当前列
set magic " 设置魔术
"set guioptions-=T " 隐藏工具栏
"set guioptions-=m " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=2
" 统一缩进为2
set softtabstop=2
set shiftwidth=2
" 用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
"set smarttab
" 历史记录数
set history=1000
"禁止生成临时文件
"set nobackup
"set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
"set langmenu=zh_CN.UTF-8
"set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent

"自动补全
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i

function! ClosePair(char)
if getline('.')[col('.') - 1] == a:char
return "\<Right>"
else
return a:char
endif
endfunction
filetype plugin indent on
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

""""""""""""""""""""""""""""""""
" CTags的设定
""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name" " 按照名称排序
let Tlist_Use_Right_Window = 1 " 在右侧显示窗口
let Tlist_Compart_Format = 1 " 压缩方式
let Tlist_Exist_OnlyWindow = 1 " 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close = 0 " 不要关闭其他文件的tags
let Tlist_Enable_Fold_Column = 0 " 不要显示折叠树
autocmd FileType java set tags+=D:\tools\java\tags
"autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags
"let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
"设置tags
set tags=tags
"set autochdir
"""""""""""""""""""""""""
"其他东东
"""""""""""""""""""""""""
"默认打开Taglist
let Tlist_Auto_Open=1
""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

"BundleConfig
nmap <F5> :NERDTreeToggle<cr>

" YouCompleteMe
set completeopt=longest,menu
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
nnoremap <c-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=9999                " 从第3个键入字符就开始罗列匹配项
let g:ycm_key_invoke_completion='<C-Space>'

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

set tags+=/usr/include/tags

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

"syntastic
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
highlight SyntasticErrorSign guifg=white guibg=black" 修改高亮的背景色, 适应主题
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✗>'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠>'

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11'

set statusline+=%{SyntasticStatuslineFlag()}
function! ToggleErrors()
	let old_last_winnr = winnr('$')
	lclose
	if old_last_winnr == winnr('$')
		" Nothing was closed, open syntastic error location panel
		Errors
	endif
endfunction
nnoremap <leader>n : SyntasticReset<cr>
nnoremap <leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>

"let g:airline#extensions#whitespace#enabled = 0 "取消底部空格tab缩进混用提示

"Emmet
autocmd filetype *html* imap <c-_> <c-y>/
autocmd filetype *html* map <c-_> <c-y>/

"css
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\t', 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }

"js
let javascript_enable_domhtmlcss = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 书签
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""'"""
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" CtrlSF搜索  
" 默认程序为ACK而不是AG  
let g:ctrlsf_ackprg = 'ack'    
" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>

let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'



" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction

" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>


" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

" 替换Esc键位置
inoremap <c-t> <esc>
nnoremap <c-t> <esc>
vnoremap <c-t> <esc>

" 编辑时光标移动
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-k> <up>
inoremap <c-j> <down>
