#val=`(wc -l <$file)`
#if [[ $val -lt 1 ]]
#then
#	echo "hi"
#else
#	echo "lol"
#fi

for file in `ls *.txt`
do
	val=`(wc -l <$file)` #get the line count, and dont save file name into variable
	#echo "no space $val is a num" 
	if [[ $val -lt 1 ]]
	then
         	echo "removing $file"
		rm -rf $file
	elif [[ $val -lt 10 ]]
	then
		echo "$file has less that 10 lines, therefore now short"
		mv $file short_$file
	elif [[ $val -le 20 ]]
	then
		echo "$file has between 10 and 20 (inclusive) lines, therefore now medium "
		mv $file medium_$file
	else 
		echo "$file has more than 20 lines, therefore now long "
		mv $file long_$file 
	fi #this took me forever because i wasn't closing the if statement
	


done
