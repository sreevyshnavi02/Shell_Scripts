#!bin/sh

read -p "Enter a string: " string
length=${#string}
echo " "
echo "length of the given string = $length"
count=0
lower=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upper=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

echo "MODIFIED STRING: "

for((i=0; i<length; i++))
do
	#echo "inside for loop"
	#echo "string[i] = ${string:$i:1}"
	for((j=0; j<26; j++))
	do
		#echo "inside for loop"
		#echo "lower[j] = ${lower[j]}"
		if [[ "${lower[j]}" == "${string:$i:1}" ]]
		then
			#echo "lower case letter"
			count=$(($count+1))
			#echo "value of count = $count"
			echo -n "${upper[j]}"
			x=1
		elif [[ "${upper[j]}" == "${string:$i:1}" ]]
		then
			#echo "upper case letter"
			count=$(($count+1))
			#echo "value of count = $count"
			echo -n "${upper[j]}"
			x=1
		fi
	done
	if [[ $x==0 ]]
	then
		continue
	fi
done
echo " "
echo "Number of printable characters(letters) = $count"
