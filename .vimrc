call pathogen#infect()

syntax enable
set tabstop=2
set number
set backspace=2
set expandtab
set smartcase

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype html set ts=2 sts=2 sw=2

if has ("autocmd")
        filetype indent on
endif

filetype plugin indent on

set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
        au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
        au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -

if &term =~ '^screen'
        " tmux will send xterm-style keys when its xterm-keys option is on
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
endif
