execute pathogen#infect()
syntax on
filetype plugin indent on
 
set hlsearch
set number
set showmatch
set incsearch
set hidden
set textwidth=0 tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set ruler
set wrap
set dir=/tmp//
set scrolloff=5
set foldmethod=manual
set foldlevelstart=20
set ignorecase
set smartcase
 
" solarized config
 syntax enable
 set background=dark
 let g:solarized_visibility = "high"
 let g:solarized_contrast = "high"

" nerdcommenter config
 map <silent> <LocalLeader>cc :NERDComSexyComment<CR>
 map <silent> <LocalLeader>cu :NERDComUncommentLine<CR>

" nerdtree config
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0

" ctrlp -- Ctags nao esta funcionando
" map <silent> <LocalLeader>ff :CtrlP<CR>
" map <silent> <LocalLeader>fb :CtrlPBuffer<CR>
" map <silent> <LocalLeader>rt :!`brew --prefix`/bin/ctags -R --exclude=".git\|log\|tmp\|db\|" --extra=+f<CR>

" ag - the silver searcher
 map <LocalLeader>aw :Ag '<C-R><C-W>'
" Use ag over grep
 set grepprg=ag\ --nogroup\ --nocolor
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
 let g:ctrlp_user_command = 'ag %s -l --nocolor -g "'
" ag is fast enough that CtrlP doesn't need to cache
 let g:ctrlp_use_caching = 0"

" vim tabs
 noremap <silent> <LocalLeader>[ :tabp<CR>
 noremap <silent> <LocalLeader>] :tabn<CR>
 noremap <silent> <LocalLeader><CR> :tabe<CR>

" Vimux
 map <Leader>rl :wa<CR> :VimuxRunLastCommand<CR>

" clean empty spaces
 nnoremap <silent> <LocalLeader>ww :%s/\s\+$//<CR>:let @/=''<CR><C-o>

" Jasmine Tests
 map <LocalLeader>rt :wa \|! jasmine-node spec --noColor <CR>

 " Installed Plugins:
 " ag
 " ctrlp.vim
 " delimitMate
 " nerdcommenter
 " nerdtree
 " tlib_vim
 " vim-addon-mw-utils
 " vim-airline
 " vim-colors-solarized
 " vim-endwise
 " vim-fugitive
 " vim-indent-guides
 " vim-jasmine
 " vim-javascript
 " vim-javascript-syntax
 " vim-rails
 " vim-ruby
 " vim-sensible
 " vim-snipmate
 " vim-surround
 " vimux
 
 " Not installed yet (might be useful in the future):
 " " matchit.zip

 " " tabular
 " " vimux-ruby-test
