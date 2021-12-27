if [[ "$1" = "-h" || $# -eq 0 ]]; then
    echo ""
    echo "extract all .7z files inside the designated directory."
    echo ""
    echo "  Usage: ./extract.sh /path/to/dir/"
    echo ""
else
    total_line=$(ls | grep 7z | wc -l)
    ((i=1))
    for FILE in "$1"/*; do
        if [[ $FILE == *.7z ]]; then
            printf "\nunzipping file (%s/%s)...\n" $i $total_line
            fn=$( echo "$FILE" | sed -E 's/.*(GF3.*7z).*/\1/g' )
    	    dir_name=$( echo "$FILE" | sed -E 's/(.*GF3.*)\.7z.*/\1/g' )
            7za x $FILE -o$dir_name
            # echo $dir_name
            ((i=i+1))
        fi
    done
fi
