#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#2e3440/g' \
         -e 's/rgb(100%,100%,100%)/#ffffff/g' \
    -e 's/rgb(50%,0%,0%)/#2e3440/g' \
     -e 's/rgb(0%,50%,0%)/#5e81ac/g' \
 -e 's/rgb(0%,50.196078%,0%)/#5e81ac/g' \
     -e 's/rgb(50%,0%,50%)/#2e3440/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#2e3440/g' \
     -e 's/rgb(0%,0%,50%)/#ffffff/g' \
	"$@"
