" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non closing tags self closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" Yell at me, I like 4 space tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Syntax highlighting is good
syntax on

" Backspace should be normal
set backspace=2

" Normal soft-wrap
set whichwrap+=<,>,h,l,[,]

" Move down lines faster!
map <C-Left> 5h
map <C-Down> 5j
map <C-Up> 5k
map <C-Right> 5l

imap <C-Left> <esc>5hi
imap <C-Down> <esc>5ji
imap <C-Up> <esc>5ki
imap <C-Right> <esc>5li


" Autoindent should be default
set ai

" Who would want an I-beam cursor in a terminal?
set guicursor=

" Filetype plugin should be loaded
filetype plugin indent on

set cindent
autocmd FileType python setlocal smartindent shiftwidth=4 ts=4 cinwords=if,elif,else,for,while,try,except,finally,def,class
