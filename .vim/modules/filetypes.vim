if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.zcml     setfiletype xml
  au! BufRead,BufNewFile *.rst      setfiletype rst
  au! BufRead,BufNewFile *.txt      setfiletype rst
  au! BufRead,BufNewFile *.md       setfiletype markdown
augroup END

autocmd FileType html  set tabstop=2|set shiftwidth=2
autocmd FileType xhtml set tabstop=2|set shiftwidth=2
autocmd FileType xml   set tabstop=2|set shiftwidth=2
