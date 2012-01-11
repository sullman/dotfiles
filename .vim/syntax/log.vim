if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword logDebug DEBUG contained
syn keyword logInfo INFO contained
syn keyword logWarn WARN contained
syn keyword logError ERROR contained
syn keyword logFatal FATAL contained
syn match logOperator /[\[\]\-]/ contained
syn keyword logTodo TODO SCHUYLER

syn match logDate /\w\{3,4} \d\+, \d\+ \d\d:\d\d:\d\d/ contained
syn match logThread /0x[0-9a-f]\{8}/ contained

syn region logProlog start=+^+ end=+-+ keepend contains=logOperator,logDebug,logInfo,logWarn,logError,logFatal,logDate,logThread

hi link logOperator Operator
hi link logProlog Comment
hi link logDate Comment
hi link logThread Constant
hi link logDebug Identifier
hi link logInfo Identifier
hi link logWarn Identifier
hi link logError Error
hi link logFatal Error
hi link logTodo Todo

let b:current_syntax = "log"
