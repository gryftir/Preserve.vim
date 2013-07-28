function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

"examples:
" strip trailing whitespace with mapping  nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
" fix indentation from command line :call Preserve("normal gg=G")

"my current mappings, comment out if you don't want to use them
"fix indentation
nmap <silent> <Leader>G :call Preserve("normal gg=G")<CR>
" Removes trailing whitespace
nmap <silent> <Leader>w :call Preserve("%s/\\s\\+$//e")<CR>


