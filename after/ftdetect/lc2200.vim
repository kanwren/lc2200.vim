if !exists('g:lc2200_filetypes')
    let g:lc2200_filetypes = []
endif

for ft in g:lc2200_filetypes
    execute "autocmd! BufRead,BufNewFile *." . ft . " set filetype=lc2200"
endfor
