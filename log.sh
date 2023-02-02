# !/bin/bash

# LASTFILE="7_01-10-2023.txt"
# for FILE in *;
# do 
#     file=$FILE
#     num=$(echo ${file%%_*} | xargs)
#     re='^[0-9]+$'
#     if ! [[ $num =~ $re ]] ; then
#         continue
#     fi

#     echo "";
#     echo "";
#     echo "";

#     SHORTLASTFILE=$(echo $LASTFILE | sed 's/[0-9]*_//')
#     SHORTFILE=$(echo $FILE | sed 's/[0-9]*_//')
#     if [[ "$SHORTLASTFILE" == "$SHORTFILE" ]]; then
#         perl -e 'print "-" x `tput cols`,"\n"' 
#         perl -e 'print "=" x `tput cols`,"\n"' 
#     else
#         perl -e 'print "-" x `tput cols`,"\n"' 
#         perl -e 'print "=" x `tput cols`,"\n"' 
#         perl -e 'print " " x (int(`tput cols`/2) - 9),""' 
#         echo "$FILE"
#         perl -e 'print "=" x `tput cols`,"\n"' 
#         perl -e 'print "-" x `tput cols`,"\n"' 
#     fi
    
#     echo "";
#     cat $FILE;
#     LASTFILE=$FILE
# done
# echo "\n\n";

python3 print.py