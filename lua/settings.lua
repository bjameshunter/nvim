local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>tv", ":!terraform validate<CR>", opts)
-- Equivalent of 'inoremap jk <ESC>'
keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })

vim.cmd [[
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
]]
