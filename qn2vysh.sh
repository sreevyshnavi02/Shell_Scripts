#!bin/sh

read -p "Enter file name: " file
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

posn=0    #to store the occurence number
num=0

echo "_________________________________________"
echo "File contents: "
cat $file 
echo "_________________________________________"

echo "After modification: "
while read -r line
do
	for word in $line
	do
		if [[ "$word" == "$a" ]]
		then
			#echo " "
			#echo "FOUND A MATCH"
			posn=$(($posn+1))
			#echo "position = $posn"
			num=$(($posn%2))
			#echo "value of num = $num"
			if [[ $num -eq 0 ]]   #even
			then
				#echo "value of num = $num"
				echo -n "$c "
			else
				echo -n "$b "
			fi
			
		else
			#echo "NOT A MATCH"
			echo -n "$word "
		fi
		
	done
	echo " "
done < $file

