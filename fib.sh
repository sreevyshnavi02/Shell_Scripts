#!bin/sh

echo "FIBONACCI SEQUENCE GENERATION"
echo " "
read -p "How many elements would you like to view? " n
#declare -a sequence

sequence[0]=1
sequence[1]=1

for (( i=2; i<$n; i++ ))
do
    #echo "sequence[i-1] = ${sequence[$i-1]}"
    #echo "sequence[i-2] = ${sequence[$i-2]}"
    p=${sequence[$i-1]}
    q=${sequence[$i-2]}

    sequence[$i]=`expr $p + $q`
done

echo "FIBONACCI SEQUENCE: "
for (( j=0; j<$n; j++ ))
do
    echo "  ${sequence[$j]}"
done