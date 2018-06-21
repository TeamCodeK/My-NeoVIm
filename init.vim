syntax on
set number
set ai
set tabstop=4
set shiftwidth=4
set cursorline
set expandtab
set clipboard=unnamedplus
set background=dark
colorscheme PaperColor
highlight ColorColumn ctermbg=darkBlue

if has('mouse')
    set mouse=a
endif

call plug#begin() 
 Plug 'scrooloose/nerdtree'
 Plug 'valloric/youcompleteme'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'pangloss/vim-javascript'
 Plug 'rstacruz/sparkup'
call plug#end()

function RelativeNumber() 
    if (&relativenumber == 1)
        set norelativenumber
    else 
        set relativenumber
    endif
endfunc

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:sparkupExecuteMapping = '<c-l>'

map <C-t> :NERDTreeToggle<CR>
map <C-r> :call RelativeNumber()<CR>

au BufNewFile,BufRead *.ejs set filetype=html


