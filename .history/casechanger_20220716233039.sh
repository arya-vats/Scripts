echo "$1"
read f 



if [ -f $f ]
then

sed 's/\([A-Z0-9]\{1,\}\)/_\L\1/g'\
| sed 's/\([^A-Z_]\)\([A-Z0-9]\)/\1_\2/g' <$f

else
echo "not present"
fi







