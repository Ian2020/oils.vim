function DetectYshFile()
    if did_filetype()
        return
    endif

    if getline(1) =~ '^#!.*/usr/bin/env\s\+\<ysh\>'
        setfiletype ysh
    endif
endfunction

au BufRead,BufNewFile *.ysh set filetype=ysh
au BufRead * call DetectYshFile()
