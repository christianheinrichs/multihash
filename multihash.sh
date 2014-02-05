#!/bin/bash

# Interactive multihash script

# multihash.sh written by netcyphe <netcyphe@openmailbox.org> - 02/05/2014

while true
    do
        read -p "Enter the file location or #exit to quit: " mydec

        if [ $mydec != "#exit" ]
            then
                printf "MD5 sum: "; md5sum $mydec;
                printf "SHA1 sum: "; sha1sum $mydec;
                printf "SHA256 sum: "; sha256sum $mydec;
                printf "SHA512 sum: "; sha512sum $mydec; printf "\n";

                printf "Done.\n"
        else
            exit 0
        fi
    done
