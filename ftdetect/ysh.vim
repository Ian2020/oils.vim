function DetectYshShebang()
    if did_filetype()
        return
    endif

    if getline(1) =~ '^#!\s\+/usr/bin/env\s\+ysh\>'
        setfiletype ysh
    endif
endfunction

au BufRead,BufNewFile *.ysh setfiletype ysh
" Look for the ysh shebang in scripts without a .ysh extension
au BufRead * call DetectYshShebang()
