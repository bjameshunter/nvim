" Good source for nvim setup
" https://github.com/tcuthbert/dotfiles/blob/master/nvim/init.vim#L121
execute pathogen#infect()
" call plug#begin('~/.config/nvim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" call plug#end()
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" let g:deoplete#enable_at_startup = 1
" map 'jk' to the escape key to get out of insert
inoremap jk <ESC>
" I guess this changes the key before shortcuts to <space> instead of \
let mapleader = "\<Space>"
set encoding=utf-8
"
" Douglas Black
" Colors {{{
" syntax enable           " enable syntax processing
colorscheme torte
set termguicolors
" }}}
" Misc {{{
set ttyfast                     " faster redraw
set backspace=indent,eol,start
" }}}

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set cursorline
set modelines=1
filetype indent plugin on
set autoindent
nmap <F7> :tabp <CR>
nmap <F8> :tabn <CR>

" setting tab widths
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype js setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescript.tsx setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype es6 setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" get rid of preview screen for autocomplete
" set completeopt-=preview

" javascript syntax
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" set foldmethod=syntax
let g:javascript_plugin_flow = 1
let g:typescript_indent_disable = 1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
" let g:python_host_prog = 'python2'
" autocmd QuickFixCmdPost [^l]* nested cwindow
" autocmd QuickFixCmdPost    l* nested lwindow
" autocmd FileType typescript JsPreTmpl html;
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
