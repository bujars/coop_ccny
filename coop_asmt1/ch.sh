for file in `ls *.txt`
do	
	i=1;
	mv $file file$i.txt 
	echo moving $file to file$i.txt
	i=i+1;
done
