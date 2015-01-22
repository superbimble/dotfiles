filetype detect
filetype plugin on
filetype indent on

set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set colorcolumn=80
set cursorline
set encoding=utf8
set expandtab
set foldmethod=marker
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=nbsp:¬,eol:↳,tab:└─,extends:»,precedes:«,trail:•
set magic
set mat=2
set nocindent
set nocompatible
set noerrorbells
set novisualbell
set number
set pastetoggle=<F2>
set rtp+=~/.vim/bundle/vundle/
set shiftwidth=2
set showmatch
set smartcase
set smartindent
set so=7
set t_Co=256
set tabstop=2
set textwidth=0
set tm=500
set ttyfast
set undolevels=1000
set wildmenu
set wildmode=list:longest

" set backupdir=~/.vim/backup//,/tmp
" set directory=~/.vim/swap//,/tmp
" set undodir=~/.vim/undo//,/tmp
" set undofile
"
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'ervandew/supertab'
"Bundle 'garbas/vim-snipmate'
"Bundle 'groenewege/vim-less'
"Bundle 'joshtronic/php.vim'
"Bundle 'jQuery'
Bundle 'kien/ctrlp.vim'
"Bundle 'majutsushi/tagbar'
"Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'nanotech/jellybeans.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'nginx.vim'
"Bundle 'othree/html5.vim'
"Bundle 'pangloss/vim-javascript.git'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'scrooloose/syntastic'
"Bundle 'shawncplus/phpcomplete.vim'
"Bundle 'SearchComplete'

autocmd BufEnter * match ExtraWhitespace /\s\+$/
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile nginx.conf set filetype=nginx
autocmd ColorScheme * highlight ExtraWhitespace guibg=red
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType svn,*commit*,*issue* setlocal spell
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhiteSpace /\s\+$/

colorscheme jellybeans

" highlight Conditional ctermfg=2
" highlight Constant cterm=NONE ctermfg=2
highlight ExtraWhitespace ctermbg=red guibg=red
" highlight Function cterm=NONE ctermfg=2
" highlight link javaScriptBraces NONE
" highlight NonText ctermfg=237 guifg=#303030
" highlight Number cterm=NONE ctermfg=darkred
" highlight Search cterm=NONE ctermfg=NONE
" highlight SpecialKey ctermfg=red guifg=#303030
" highlight Statement cterm=NONE ctermfg=2
" highlight String cterm=NONE ctermfg=darkred

let mapleader = ','
" let g:airline_powerline_fonts = 1
" let g:airline_section_c = '%t'
" let g:airline_theme_patch_func = 'AirlineThemePatch'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#show_tab_nr = 0
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1

nmap <silent> ,/ :nohlsearch<CR>
nnoremap ; :

nnoremap <Leader>[ :tabprevious<CR>
nnoremap <Leader>] :tabnext<CR>

nnoremap <Leader>{ :tabfirst<CR>
nnoremap <Leader>} :tablast<CR>

nnoremap <Leader>f :set nolist<CR>
nnoremap <Leader>F :set list<CR>

nnoremap <Leader>3 :set nonumber<CR>
nnoremap <Leader># :set number<CR>

nnoremap <Leader>b :BundleUpdate<CR>:q<CR>
nnoremap <Leader>v :so ~/.vim/vimrc<CR>

nnoremap <Leader>ss / $<CR>
nnoremap <Leader>tt /\t$<CR>
"
" nnoremap <Leader>w :wa<CR>
" nnoremap <Leader>ww :wa!<CR>
" nnoremap <Leader>q :qa<CR>

syntax on
syntax sync fromstart

" vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
" vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

" Jumps to last cursor position except on commit messages
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'svn\|commit\|issue\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
      exe "normal! g`\""
      normal! zz
    endif
  endif
endfunction

" Search for selected text
" function! s:VSetSearch()
" 	let temp = @@
" 	norm! gvy
" 	let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
" 	let @@ = temp
" endfunction

" Force airline's color scheme
" function! AirlineThemePatch(palette)
" 	let a:palette.normal.airline_a = [ '#ffffff', '#268bd2', 255, 33 ]
" endfunction

