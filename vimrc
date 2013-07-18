set shell=/bin/sh

execute pathogen#infect()

func GitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command -nargs=? G call GitGrep(<f-args>)


set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:EasyMotion_leader_key = '<Leader>'

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set showtabline=1
set splitbelow
set splitright
set number

nnoremap <C-Up> gT
nnoremap <C-Down> gt

" vim:fdm=marker

" Editor basics {{{
" Behave like Vim instead of Vi
set nocompatible

" Show a status line
set laststatus=2

" Show the current cursor position
set ruler

" Enable syntax highlighting
syn on
" }}}
" Mouse {{{
" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
" }}}
" Disable arrow keys {{{
"noremap  <Up>     <NOP>
"inoremap <Down>   <NOP>
"inoremap <Left>   <NOP>
"inoremap <Right>  <NOP>
"noremap  <Up>     <NOP>
"noremap  <Down>   <NOP>
"noremap  <Left>   <NOP>
"noremap  <Right>  <NOP>
"" }}}
