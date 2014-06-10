set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" file explorer
Plugin 'scrooloose/nerdtree'

" taglist
Plugin 'vim-scripts/taglist.vim'

" cscope autoload and key map
Plugin 'mzlogin/cscope_macros.vim'

" markdown
Plugin 'tpope/vim-markdown'

" Python
Plugin 'vim-scripts/Pydiction'

" C++
Plugin 'vim-scripts/OmniCppComplete'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"设置tab=4
set shiftwidth=4
set sts=4
set tabstop=4

"tab->空格
set expandtab

"启动gVIM时最大化
au GUIEnter * simalt ~x

"显示行号
set nu

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,big5,latin-1   "ucs-bom,兼容记事本保存的带有前3字节EFBBBF标识的UTF-8编码文件

" menu和底部提示乱码的问题
source $VIMRUNTIME/delmenu.vim   
source $VIMRUNTIME/menu.vim  
language messages zh_US.utf-8 

"设置配色方案
colorscheme desert 

" Ctags
set tags=tags;
set autochdir

" no back up
set nobackup
set nowritebackup

" highlight
syntax on

" search
set hlsearch
set incsearch

" NERDTree settings
let NERDTreeWinPos=1

" move across lines
set backspace=indent,eol,start
set ww+=b,<,>

" split window switch key map
nmap , \
nmap <Leader>l <C-w>l
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h

" folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99

" no indent for case, default, public, private and protected
set cino+=:0,g0

" Python auto-complete
let g:pydiction_location = '~/vimfiles/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height = 10

" C++ auto-complete
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let OmniCpp_ShowPrototypeInAbbr = 1 
let OmniCpp_MayCompleteScope = 1 
" autoclose complete window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest
