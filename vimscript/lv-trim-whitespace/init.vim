" Prevent whitespace from being at EOL :)
function! s:trim_trailing_whitespace() abort
  let l:view = winsaveview()
  keeppatterns %substitute/\m\s\+$//e
  call winrestview(l:view)
endfunction

augroup trim_trailing_whitespace
  autocmd!
  autocmd BufWritePre * call <SID>trim_trailing_whitespace()
  autocmd BufReadPre * call <SID>trim_trailing_whitespace()
augroup END
