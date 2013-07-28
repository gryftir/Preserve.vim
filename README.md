Preserve.vim
============

Preserve function plus a few suggested uses
<Leader>G :call Preserve("normal gg=G")<CR>
Removes trailing whitespace
<Leader>w :call Preserve("%s/\\s\\+$//e")<CR>
