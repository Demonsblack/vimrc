set showmatch
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set number
autocmd BufNewFile * normal G

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

autocmd BufNewFile *.cpp,*.c,*.py ":call SetTitle"
func SetTitle()
	if &filetype == 'sh'
		call setline(1,"################################################")
		call append(line("."),"\# File Name:   ".expand("%"))
		call append(line(".")+1,"\# Author: Lee Zhuohua")
		call append(line(".")+2,"\# Created time: ".strftime("c"))
		call append(line(".")+3,"\#########################################")
		call append(line(".")+4,"\#!/bin/bash")
	if &fileType == 'c'
		call setline(1,"################################################")
		call append(line("."),"\# File Name:   ".expand("%"))
		call append(line(".")+1,"\# Author: Lee Zhuohua")
		call append(line(".")+2,"\# Created time: ".strftime("c"))
		call append(line(".")+3,"\#########################################")
		call append("line(.)","#include <stdio.h>")

	if &fileType == 'py'
		call setline(1,"################################################")
		call append(line("."),"\# File Name:   ".expand("%"))
		call append(line(".")+1,"\# Author: Lee Zhuohua")
		call append(line(".")+2,"\# Created time: ".strftime("c"))
		call append(line(".")+3,"\#########################################")
		endif
endfunc
		
