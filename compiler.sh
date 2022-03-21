sf (){
	vim $a.c
echo "___Press 1 if you wrote your code___"
read b 
if [ "$b" = "1" ]; then
com	
fi
return 0
}
com (){
	gcc $a.c -o $a
	c=$?
	if [ "$c" = "1" ]; then
	echo "Plz fix the error and try again"
	echo "___________________________________"
	echo "_____opening your editor in 5s_____"
	sleep 5
	sf
	else
		break
	fi
	
}
echo "Enter the file name: "
read a 
touch $a.c
sf
echo "___Your Output file___"
./$a 
echo "___exiting___"
echo "Hii from Anubhab"