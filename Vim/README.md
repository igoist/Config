# How I transfer to Vim

*To record the steps that how a young jser could start to use Vim*


**Step01: Common module**

```vimscript
set nocompatible  " be iMproved, required
filetype off  " required
set exrc


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==== plugin manager
Plugin 'VundleVim/Vundle.vim'

...

call vundle#end()
filetype plugin indent on
```

Use Vundle and the codes like above to load most common plugins

* vundle -- Plugin manager
* nerdtree -- File tree
* gruvbox -- Theme Plugin
* vim-airline & vim airline-themes -- Status bar on bottom, and it's themes

No much to say.


**Step02: Basic settings like color, guifont, indent...**

```
" ==== Colors and other basic settings
colorscheme gruvbox
" set guifont=Menlo\ 12
set guifont=Menlo\ for\ Powerline\ 12
" set guifont=Source\ Code\ Pro\ for\ Powerline
set fillchars+=vert:\ 
syntax enable
set background=dark
" set ruler
" set hidden
" set number
set laststatus=2
set smartindent
" set st sw=2 et
set shiftwidth=2
set tabstop=2
set expandtab
autocmd FileType js,jsx,css,scss,html,json  set shiftwidth=2 | set expandtab
" let &colorcolumn = '80'
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set lines=999 columns=999
```

I want to emphasize that at least on Mac <code>set guifont=...</code> seems to have the lower priority than the terminal, and no matter how I set it...

And other basic settings like colorscheme(theme), fillchars, hlsearch, background, the indentation related...


**Step03: Basic key map**

<details>
  <summary>Use <code>fd</code> to mock <code>Esc</code></summary>

```
imap fd <Esc>
```
</details>

<details>
  <summary>swtich windows</summary>

```
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
```
</details>

<details>
  <summary>update(save) files</summary>

```
" nmap <C-s> :w<CR>
nmap <C-s> :update<CR>
vmap <C-s> <C-C>:update<CR>
imap <C-s> <C-O>:update<CR>
```
</details>

<details>
  <summary>indent</summary>

```
vnoremap > ><CR>gv
vnoremap < <<CR>gv
```
</detials>


**Step04: Common plugin settings**

<details>
  <summary>airline and it's theme</summary>

```
" airline {{{
  " if !exists('g:airline_symbols')
  "   let g:airline_symbols = {}
  " endif
  " let g:airline_left_sep = ''
  " let g:airline_left_alt_sep = '❯'
  " let g:airline_right_sep = '◀'
  " let g:airline_right_alt_sep = '❮'
  " let g:airline_symbols.linenr = '¶'
  " let g:airline_symbols.branch = '⎇'
  " 是否打开tabline
  " let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme = 'drak'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = ' '
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
  let g:airline_powerline_fonts = 1
" }}}
```
</details>

*Remember, in order to use the airline_symbols, you need to install power at first, and set the <code>let g:airline_powerline_fonts = 1</code>*

<details>
  <summary>nerdtree</summary>

```
" ==== NERDTREE
let NERDTreeIgnore = ['\.git', '\.sass-cache', 'node_modules', '__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']
let NERDTreeShowHidden = 1
" let g:NERDTreeWinPos = 'left'
let g:NERDTreeDirArrows = 0
map <C-t> :NERDTreeToggle<CR>
" map <Space-p-t> :NERDTreeToggle<CR>
```
</details>


**Step05: Syntastic & Eslint**

**Plugins you need:**

* scrooloose/syntastic -- Such a basic
* yajs.vim -- Diff with jelera/vim-javascript-syntax, go and see it's homepage
* mxw/vim-jsx -- For coding React, don't need to say much

**It seems to that we need this line to enable syntastic:**

```
syntax enable
```

**And below is the main settings:**


```
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_standard_generic = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
" let g:syntastic_javascript_eslint_exe = '[ -f $(npm bin)/eslint ] && $(npm bin)/eslint || eslint'
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_scss_checkers=['']
" autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
" remember :SyntasticCheck :SyntasticToggleMode
nmap <C-x> :SyntasticCheck<CR>
```

*Uh...Just go and see the syntatic's doc for most of these*

**As you can see, I just need to lint my .js(x) files with eslint, so please remember the lines below, use them together: **

```
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
" let g:syntastic_javascript_eslint_exe = '[ -f $(npm bin)/eslint ] && $(npm bin)/eslint || eslint'
```

**In addition, you should confirm that you have installed the eslint locally(or maybe globally), and set the .eslintrc(.json/.js/.yaml)**

**Please remember the <code>:SyntastickCheck</code> and the <code>:SyntasticToggleMode</code>**

**It's really stupid to automatically launch checkers for each .js(x) files, so finally I set the <code>nmap C-x :SyntasticCheck</code> to manually start the checker eslint**


**Step06: Emmet**

* mattn/emmet-vim

*Ah?! Don't you know Emmet?*

