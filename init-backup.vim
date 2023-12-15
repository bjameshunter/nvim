call plug#begin()
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'saadparwaiz1/cmp_luasnip' 
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

  " (Optional) Multi-entry selection UI.
  Plug 'junegunn/fzf'
  Plug 'preservim/nerdtree'
  Plug 'vim-syntastic/syntastic'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-sensible'
  Plug 'hashivim/vim-terraform'
  Plug 'morhetz/gruvbox'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'wbthomason/packer.nvim'
call plug#end()

lua require'init'

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

autocmd BufWritePre *.tfvars lua vim.lsp.buf.format()
autocmd BufWritePre *.tf lua vim.lsp.buf.format()

silent! autocmd! filetypedetect BufRead,BufNewFile *.tf
autocmd BufRead,BufNewFile *.hcl set filetype=hcl
autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl
autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform
autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json

" tab completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

let g:python3_host_prog = '/opt/homebrew/bin/python3'
let g:loaded_python_provider = 0
" map 'jk' to the escape key to get out of insert
inoremap jk <ESC>
" I guess this changes the key before shortcuts to <space> instead of \
let mapleader = "\<Space>"
set encoding=utf-8

let g:gruvbox_italic=1
colorscheme gruvbox
set termguicolors

set ttyfast                     " faster redraw
set backspace=indent,eol,start

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
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype js setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype typescript.tsx setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype es6 setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" get rid of preview screen for autocomplete
set completeopt-=preview

set statusline+=%#warningmsg#
set statusline+=%*

set number
