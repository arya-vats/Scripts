echo "$1"
read f
if [ -f $f ]
then


sed -E 's/[ _-]([a-z])/\U\1/gi;s/^([A-Z])/\l\1/' <$f

else
echo "doesnot exist"
fi
