

#!/bin/bash
#
#
#PR Prtice

String comparisons (inside [ ... ]):

    = : equal (e.g., [ "$a" = "$b" ])
    != : not equal (e.g., [ "$a" != "$b" ])
    -z s : string is empty (length 0)
    -n s : string is not empty
    s : non-empty string test (e.g., [ "$s" ])

Integer comparisons (inside [ ... ]):

    -eq : equal
    -ne : not equal
    -lt : less than
    -le : less than or equal
    -gt : greater than
    -ge : greater than or equal

File/Path tests (inside [ ... ]):

    -e path : exists (file/dir)
    -f path : regular file
    -d path : directory
    -L path : symbolic link
    -r path : readable
    -w path : writable
    -x path : executable
    -s path : non-empty file
    -u path : setuid
    -g path : setgid
    -k path : sticky bit


