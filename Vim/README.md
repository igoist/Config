# How I transfer to Vim

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

**Step01: Common module**

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
  <summary>Use <code>fd</code> to mock <code><Esc></code></summary>

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

...


