" Use the Source Code Pro font
" http://blogs.adobe.com/typblography/2012/09/source-code-pro.html
set guifont="Source Code Pro"

" No scrollbar
set guioptions-=l
set guioptions-=r
set guioptions-=b

" Dark background
set bg=dark
if &background == "dark"
  hi normal guibg=black
  " set transp=13
endif
