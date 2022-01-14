#!/bin/bash

# Interactive multihash script for Linux

# multihash.sh written by Christian Heinrichs <christian.heinrichs@mykolab.ch>
# Last update 14 January 2022

while true
    do
        read -p "Enter the file location or !exit to quit: " fileloc

        if [ $fileloc != "!exit" ]
            then
                printf "\nMD5 sum: "; md5sum $fileloc;
                printf "SHA1 sum: "; sha1sum $fileloc;
                printf "SHA256 sum: "; sha256sum $fileloc;
                printf "SHA384 sum: "; sha384sum $fileloc;
                printf "SHA512 sum: "; sha512sum $fileloc; printf "\n";

                printf "Done.\n\n"
        else
            exit 0
        fi
    done
