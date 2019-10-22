# lc2200.vim

Vim syntax highlighting for LC-2200 assembly. You know, in case that's something
you would want.

## Motivation

...

## Installation

Use your favorite plugin manager. Personally, I like
[vim-plug](https://github.com/junegunn/vim-plug), but any plugin manager will
do. Or, if you're on Vim 8 and you're really hardcore, you can use Vim's
built-in package management.

## Usage

By default, `lc2200.vim` doesn't detect any file extensions; the most
common extension for LC-2200 assembly is `.asm`, but this is a rather common
one. To enable detection for different kinds of filetypes, before the plugin is
loaded, just set the `g:lc2200_filetypes` variable to the list of extensions you
would like to recognize as LC-2200, like so:

```viml
let g:lc2200_filetypes = ['asm']
```

Alternatively, you can do the filetype detection yourself in your `.vimrc` or an
`ftdetect` file:

```viml
autocmd! BufNewFile,BufRead *.asm setfiletype lc2200
```

