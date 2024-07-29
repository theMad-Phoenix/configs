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

set cursorline
highlight CursorLine ctermbg=234 guibg=#1c1c1c
highlight LineNr ctermfg=grey guifg=grey

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
