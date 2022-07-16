echo "$1"
read f 
echo "$2"
read s

if [ -f $f ]
then
	echo " The occurrences are : "
	echo 
	wc $s $f
	
else
	echo "Not exists"
	
fi
Footer




