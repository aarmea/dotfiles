" Use the Solarized color scheme
Bundle 'altercation/vim-colors-solarized'
set background=dark
colorscheme solarized

" Use the Source Code Pro font
" http://blogs.adobe.com/typblography/2012/09/source-code-pro.html
set guifont="Source Code Pro"

if has("win32") || has("win16")
  " Windows GVim doesn't seem to like quoted font names.
  set guifont=Source_Code_Pro
  " Fix too much space between lines in Source Code Pro on Windows.
  set lsp=-1
endif

" No scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=b

" No toolbar
set guioptions-=T
