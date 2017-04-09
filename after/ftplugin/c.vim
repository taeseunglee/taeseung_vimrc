" Vim filetype plugin file for GNU-C coding style
" Language:	C
" Maintainer:	Dean Scarff <p00ya @AT users.sf .DOT net>
" Last Change:	2005 Feb 09

" USAGE: Copy to an ftplugin directory, see |ftplugin-overrule|.

" Overrules any previous ftplugin, and flags to not load further ftplugins
let b:did_ftplugin = 1

" Set various width parameters
setlocal sw=2 ts=8 tw=78

"setlocal cinoptions=>2s,e-s,n-s,f0,{s,^-s,:s,=s,g0,+.5s,p2s,t0,(0 cindent

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql

" Set 'comments' to format dashed lists in comments.
setlocal comments=sO:*\ -,mO:\ \ \ ,exO:*/,s1:/*,mb:\ ,ex:*/

set cpo-=C

" Win32 can filter files in the browse dialog
if has("gui_win32") && !exists("b:browsefilter")
  let b:browsefilter = "C Source Files (*.c)\t*.c\n" .
  \ "C Header Files (*.h)\t*.h\n" .
  \ "All Files (*.*)\t*.*\n"
endif

" GNU Coding Standards: https://gcc.gnu.org/wiki/FormattingCodeForGCC
setlocal cindent
setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal textwidth=79
setlocal fo-=ro fo+=cql
setlocal autoindent
