set nocompatible                " choose no compatibility with legacy vi
"Patched ctags to be aware of namespaces 
"Download  source code: wget "https://github.com/shawncplus/phpcomplete.vim/blob/master/misc/ctags-better-php-parser.tar.bz2?raw=true" -O ctags-better-php-parser.tar.bz2
"Extract: tar xvjf ctags-better-php-parser.tar.bz2
"Configure: ./configure    --         make
"Install ctags sudo   make install 


"Using ctags  ctags -R --fields=+aimS --languages=php

"TODO
"" Setting up Vundle - the vim plugin bundler
"" Stolen ;) from http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
"let iCanHazVundle=1
"let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
"if !filereadable(vundle_readme)
"    echo "Installing Vundle.."
"    echo ""
"    silent !mkdir -p ~/.vim/bundle
"    silent !clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"    let iCanHazVundle=0
"endif



if has('vim_starting')
  set nocompatible               " Be iMproved
   " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))


syntax on
filetype plugin indent on

" let Vundle manage Vundle
" required! 
NeoBundleFetch 'Shougo/neobundle.vim'

" My NeoBundles here:
"
" original repos on github

NeoBundle 'Shougo/unite.vim'
" TextMate Snippets
NeoBundle 'msanders/snipmate.vim'
" Insert use statements automatically
NeoBundle 'arnaud-lb/vim-php-namespace'
" Symfony stuff
NeoBundle 'docteurklein/vim-symfony'
" PHPUnit support
NeoBundle 'docteurklein/vim-phpunit'
" PHP5.4 support
NeoBundle 'shawncplus/php.vim'
NeoBundle 'tobyS/vmustache'
" NERDTree
NeoBundle 'scrooloose/nerdtree'
" Twig support
NeoBundle 'evidens/vim-twig'
" HTML snippets
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Surround with parentheses, brackets, quotes, tags...
NeoBundle 'tpope/vim-surround'
" Groovy support
NeoBundle 'vim-scripts/groovy.vim'
" Sintax checking
NeoBundle 'scrooloose/syntastic'
" Full path finder
NeoBundle 'kien/ctrlp.vim'
" Better statusline
"NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'Lokaltog/powerline'
" Git support
NeoBundle 'tpope/vim-fugitive'
" color for the theaming
NeoBundle 'altercation/vim-colors-solarized'
" forldin for php
"NeoBundle 'vim-scripts/phpfolding.vim'
" git diff in 
NeoBundle 'airblade/vim-gitgutter'
"xdbebug client
NeoBundle 'joonty/vdebug.git'
"PhpDoc
NeoBundle 'tobyS/pdv'
"PIV
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'avakhov/vim-yaml'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'stephpy/vim-php-cs-fixer'
NeoBundle 'shawncplus/phpcomplete.vim'

NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'thanthese/Tortoise-Typing'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" vim-scripts repos
" NeoBundle 'L9'
" NeoBundle 'FuzzyFinder'

" Jinja vim
NeoBundle 'Jinja'

" non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleSearch(!) foo - search(or refresh cache first) for foo
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" 
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after NeoBundle command are not allowed..

"if iCanHazVundle == 0
"    echo "Installing NeoBundles, please ignore key map error messages"
"    echo ""
"    :NeoBundleInstall
"endif
"" Setting up Vundle - the vim plugin bundler end


set number                      " Show line numbers
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set hidden                      " no need save to change buffer
filetype plugin indent on       " load file type plugins + indentation


"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


" phpunit compilation
com! -nargs=* Phpunit make -c app <q-args> | cw

" php man pages
" press K on a phpfunction to see the magic
" You need install doc.php.net/pman through
" pear install doc.php.net/pman
set keywordprg=pman

" Set title on X window
set title

" Global
set hidden ruler wmnu               " Hide buffer instead of abandoning when unloading

set wildmenu                        " Enhanced command line completion
set wildmode=list:longest           " Complete files like a shell
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc,*.pyo,*app/cache/**,*app/logs/**,*/zend/**,*/bootstrap.*.*

set showcmd                         " Display incomplete commands
set showmode                        " Display the mode you're in

set number                          " Show line numbers
set ruler                           " Show cursor position

"set cursorline                      " Highlight current line.

set incsearch                       " Highlight matches as you type
set hlsearch                        " Highlight matches
set ignorecase                      " set case insensitivity
set smartcase                       " unless there's a capital letter
set wrap                            " Turn on line wrapping
set scrolloff=3                     " Show 3 lines of context around the cursor

set visualbell                      " No beeping
set shortmess+=filmnrxoOtT          " abbrev. of messages (avoids 'hit enter')

set nobackup                        " Don't make a backup before overwriting a file
set nowritebackup                   " And again
set noswapfile                      " Use an SCM instead of swap files

set laststatus=2                    " Show the status line all the time

set backspace=indent,eol,start      " http://vim.wikia.com/wiki/Backspace_and_delete_problems

set expandtab
set copyindent                      " copy the previous indentation on autoindenting
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                       " set show matching parenthesis
set autoindent

set undolevels=1000                 " use many levels of undo

if version >= 730
    set noundofile                  " Don't keep a persistent undofile
endif

" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
" F2 = toggle paste mode
nnoremap <F2> :set invpaste paste?<Enter>
imap <F2> <C-O><F2>
set pastetoggle=<F2>

" make the view port scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap <C-p> 3<C-p>

" resize splitted views faster
nnoremap <C-w>< 5<C-w><
nnoremap <C-w>> 5<C-w>>

" remap the marker char
nnoremap ' `
nnoremap ` '

" command and search pattern history
set history=10000

" redifinition of map leader
let mapleader = ","

" make plugins smoother
set lazyredraw

" always replace all occurences of a line
set gdefault

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4

" convenient mapping to swith tab/indent settings
nmap <leader>2 :set tabstop=2<cr>:set shiftwidth=2<cr>:set softtabstop=2<cr>
nmap <leader>4 :set tabstop=4<cr>:set shiftwidth=4<cr>:set softtabstop=4<cr>

" sudo to write
command W w !sudo tee % > /dev/null

" pull word under cursor into LHS of a substitute (for quick search and replace)
nmap <leader>zs :%s/<C-r>=expand("<cword>")<CR>/

" pull word under cursor into Ack for a global search
map <leader>za :Ack "<C-r>=expand("<cword>")<CR>"

" start a substitute
map <leader>s :%s/

" ack
nmap <leader>a :Ack<space>

" Clear search highlight
map <silent> <leader>/ :let @/=""<CR>:echo "Cleared search register."<cr>

syntax on

filetype on
filetype plugin on
filetype indent on

" Color scheme
let &t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" GitGutter
let g:gitgutter_sign_column_always = 1
" See: https://github.com/airblade/vim-gitgutter#faq
highlight clear SignColumn
highlight GitGutterAdd      guifg=#009900 guibg=NONE ctermfg=2 ctermbg=235
highlight GitGutterChange   guifg=#bbbb00 guibg=NONE ctermfg=3 ctermbg=235
highlight GitGutterDelete   guifg=#ff2222 guibg=NONE ctermfg=1 ctermbg=235

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Ctags
set nocp
set tags=tags,vendor.tags
map <silent><leader><Left> <C-T>
map <silent><leader><Right> <C-]>
map <silent><leader><Up> <C-W>]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" When editing a file, always jump to the last known cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" allow extended digraphs
set encoding=utf-8

" disable folding
set nofoldenable

" My information
iab xdate <C-R>=strftime("%d/%m/%Y %H:%M:%S")
iab xname <C-R> Ruben Cordeiro
iab xsigp <C-R> Ruben Cordeiro <seti.gallego@gmail.com>
iab xsigw <C-R> Ruben Cordeiro <seti.gallego@gmail.com>

" snipMate
let g:snips_author = 'Ruben Cordeiro <seti.gallego@gmail.com>'

" invisible character
nmap <leader>l :set list!<CR>
set listchars=nbsp:¤,tab:>-,trail:¤,extends:>,precedes:<,eol:¬,trail:·

" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Does not work under version 7.1.6
if version >= 716
    autocmd BufWinLeave * call clearmatches()
endif

" automatically remove trailing whitespace before write
function! StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    if line("'Z") != line(".")
        echo "Stripped whitespace\n"
    endif
    normal `Z
endfunction
autocmd BufWritePre *.md,*.markdown,*.mkd,*.pp*.php*.tao,*.yml,*.xml,*.js,*.html,*.css,*.java,*.c,*.cpp,*.vim :call StripTrailingWhitespace()

" tab mappings
map <leader>tp :tabprevious<cr>
map <leader>tn :tabnext<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove<cr>
map <leader>tr :tabrewind<cr>
map <leader>te :tabedit<cr>

map <leader>nt :NERDTreeTabsToggle<cr>



nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

noremap <Leader>u :call PhpInsertUse()<CR>
" create directory if not exists
au BufWrite * :call <SID>MkdirsIfNotExists(expand('<afile>:h'))
function! <SID>MkdirsIfNotExists(directory)
    if(!isdirectory(a:directory))
        call system('mkdir -p '.shellescape(a:directory))
    endif
endfunction

" do not auto insert comment chars on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Gist
let g:gist_clip_command     = 'pbcopy'
let g:gist_detect_filetype  = 1
let g:gist_post_private     = 1

" ctrlp
let g:ctrlp_map                 = '<leader>f'
let g:ctrlp_clear_cache_on_exit = 0

" Twig
au BufNewFile,BufRead *.twig set filetype=twig
autocmd BufEnter *.html.twig nmap <buffer><leader>c :bf<CR>

" behat
let feature_filetype='behat'

" make
map <leader>m :make<cr>
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
map <leader>d :call pdv#DocumentWithSnip()<CR>

if has("autocmd")
  " Enable file type detection
  filetype on
   
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
   
  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
   
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

let g:php_cs_fixer_level = "all" 
let g:php_cs_fixer_verbose = 1
let php_folding = 1

augroup vimrc
      au BufReadPre * setlocal foldmethod=indent
        au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
au BufRead,BufNewFile *.tao set filetype=php
NeoBundleCheck
let g:vdebug_options = {  
\'path_maps': {
\"/vagrant/app/src" :"/home/rcondeiro/work/carlsberg-uk/app/src",
\"/var/www/martsons/src" :"/home/rcondeiro/work/marstons-taverns/src"
\},  
\'server': '0.0.0.0'
\}

