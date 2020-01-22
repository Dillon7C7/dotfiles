""" BASIC SETUP:

" turn off vi-compatible mode and make vim more useful
set nocompatible

" enable syntax highlighting
syntax enable

" enable filetype detection and loading of existing plugins for said files
filetype plugin on

" precede each line with its line number
set number

""" FINDNG FILES:

" search relative to the dir of the current file or current dir, recursively
set path=.,,**

" display all matching files when we tab complete
set wildmenu

""" TAG JUMPING:

" create the `tags` file (requires ctags binary)
" - use ^] to jump to tag under cursor
" - use g^] for ambiguous tags
" - use ^t to jump back up the tag stack
command! MakeTags !ctags -R .

""" AUTOCOMPLETE: (:help ins-completion)

" - ^x^n for JUST this file
" - ^x^f for filenames (works with our set path)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
"
" - use ^n and ^p to go back and forth in the suggestion list

""" FILE BROWSING: (netrw over NERDTree)

let g:netrw_banner=0         " disable banner
let g:netrw_liststyle=3      " tree view, `i` to cycle
let g:netrw_browse_split=4   " open files in prev window (use `o` or `v` for splits, `t` for tabs)
let g:netrw_winsize=75       " when opening in splits, use 75% of the window
let g:netrw_alto=1           " use below splitting when opening files
let g:netrw_altv=1           " use right splitting when opening files
""let g:netrw_list_hide=netrw_gitignore#Hide() "??? TODO
