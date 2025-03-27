set syntax=on

colorscheme koehler

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

set list
set listchars=tab:>-,trail:·,space:·

set number
set enc=utf-8
set showmatch
set noswapfile
set clipboard=unnamedplus

set cursorline cursorcolumn
highlight CursorLine ctermbg=234 guibg=#1c1c1c
highlight Cursorcolumn ctermbg=234 guibg=#1c1c1c
highlight LineNr ctermfg=grey guifg=grey
if exists('$TMUX')
  " 在 tmux 中使用 escape sequences 改变光标样式
  let &t_SI = "\e[6 q"  " 插入模式：竖线
  let &t_SR = "\e[4 q"  " 替换模式：下划线
  let &t_EI = "\e[2 q"  " 其他模式：块状
else
  " 直接在支持的终端中使用
  let &t_SI = "\e[5 q"
  let &t_SR = "\e[4 q"
  let &t_EI = "\e[2 q"
endif

set timeoutlen=300  " 键映射超时时间（减少可能导致其他映射问题）
set ttimeoutlen=20  " 终端转义序列超时时间（专门用于 escape 处理）

highlight Comment ctermfg=lightblue guifg=lightblue
highlight Normal ctermfg=grey guifg=grey

set showcmd

set laststatus=2
set statusline=%#PStatusLine#
set statusline+=%f                           " 文件名
set statusline+=%h                           " 帮助文件标志
set statusline+=%m                           " 修改标志
set statusline+=%r                           " 只读标志
set statusline+=%=                           " 分隔符，将左对齐和右对齐的部分分开
set statusline+=%#PStatusLineMode#%{mode()}  " 模式
set statusline+=%#PStatusLine#
set statusline+=\ %y                         " 文件类型
set statusline+=\ [%{&fileencoding}]         " 文件编码
set statusline+=\ %l/%L,%c                   " 当前行号和列号
set statusline+=\ %P                         " 文件百分比
highlight PStatusLine ctermfg=black ctermbg=yellow guifg=black guibg=yellow
highlight PStatusLineMode ctermfg=black ctermbg=cyan guifg=black guibg=cyan
