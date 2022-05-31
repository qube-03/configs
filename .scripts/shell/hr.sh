#!/bin/bash
#creates a line break, similar to the <hr> HTML tag
COLS=$(tput cols)
echo ''
for i in $(seq 1 $COLS); 
do printf '=' 
done 
echo '
'
