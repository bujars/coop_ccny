read -p "your age:" agevar

if [ $agevar -gt 18 ]
then
	echo "you are adult"
else
	echo "you are too young"


for var in `ls *.txt` 
do
	echo $var
done


while [ $agevar -le 18 ]
do 
	echo $agevar
	agevar=`expr $agevar+1`
done

new_f(){
	echo $1, $2, `expr $1 + $2`
}
new_f 20 30


fi 
