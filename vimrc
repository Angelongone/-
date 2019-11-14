set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
"Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}


"""""""""""""""""""""nerdtree树""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'


""""""""""""""""""""状态栏增强"""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


Plugin 'liuchengxu/space-vim-dark'

""""""""""""""""""""代码不全"""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""自动匹配括号""""""""""""""""""""""""""""""""""""""
Plugin 'jiangmiao/auto-pairs'


" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后



inoremap jj <esc>
set nu
set sm
set ai
set hlsearch
syntax on
set ic
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

 """"""""""""""" 将空格键当作快捷键 """"""""""""""""""
let mapleader=" "
map <leader>wq :wq<CR>
map <leader>q :q<CR>
map <leader>w :w<CR>
map <leader>u :sp<CR>
map <leader>r :vsp<CR>
  
""""""""""""""""""""""" 树"""""""""""""""""""""""
map ff :NERDTreeMirror<CR>
map ff :NERDTreeToggle<CR>
  
  
""""""""""""""""""""""""状态栏""""""""""""""
let g:airline#extensions#tabline#enabled = 1

"""""""""""""代码补全""""""""""""""""""""""""""""
""""java代码补全""""
"blog.csdn.net/wangran51/article/details/7248945
"setlocal omnifunc=javacomplete#Complete
"autocmd FileType java set omnifunc=javacomplete#Complete   
""自动补全
autocmd FileType java set completefunc=javacomplete#CompleteParamsInf
"参数提醒
"
""inoremap <buffer><C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer><C-S-Space> <C-X><C-U><C-p>


"autocmd FileType java,javascript,jsp inoremap <buffer>. .<C-X><C-O><C-P>
"Ctrl+X Ctrl+U 提示功能

""""""""""""""""""""""""""""""


filetype plugin on


let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'

let g:pydiction_menu_height = 3




"""""""""""""""""主题配色"""""""""""""""""""""""""""""""""""" 
colorscheme  space-vim-dark
hi Comment cterm=italic

colorscheme space-vim-dark
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

colorscheme space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59noremap 
