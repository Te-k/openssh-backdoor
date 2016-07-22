#!/bin/bash
all=( Q W E R T Y U I O P A S D F G H J K L Z X C V B N M q w e r t y u i o p a s d f g h j k l z x c v b n m 0 1 2 3 4 5 6 7 8 9 )
for i in `seq 1 $1`; do
rand=$(($RANDOM%59))
echo -n "${all[$rand]}"
done
echo

