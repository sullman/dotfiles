" Listen very carefully, I will say this only once
if exists("did_custom_filetypes")
  finish
endif
let did_custom_filetypes = 1

augroup filetypedetect
  au BufNewFile,BufReadPost *.brs setf brs
  au BufNewFile,BufReadPost *.j setf objj
augroup END

" HTML (.shtml and .stm for server side)
au BufNewFile,BufRead *.html call s:MyFThtml()

" Distinguish between HTML, XHTML and Django
" Unlike the builtin check, we allow XHTML Django templates.
func! s:MyFThtml()
  let html_type = "html"
  let n = 1
  while n < 10 && n < line("$")
    if getline(n) =~ '\<DTD\s\+XHTML\s'
      let html_type = "xhtml"
    endif
    if getline(n) =~ '{%\s*\(extends\|block\|load\|comment\)\>'
      setf htmldjango
      return
    endif
    let n = n + 1
  endwhile
  exe "setf " . html_type
endfunc

" Check for Django text templates
au BufNewFile,BufRead *.txt call s:MyFTtxt()

func! s:MyFTtxt()
  let n = 1
  while n < 10 && n < line("$")
    if getline(n) =~ '{%\s*\(extends\|block\|load\|comment\)\>'
      setf django
      return
    endif
    let n = n + 1
  endwhile
endfunc
