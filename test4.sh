#echo "enter the file name"; read filename
#echo "$filename"
#read -p  "enter the path" path 
#echo  "$path"
if  [ -f $2/$1 ] 
then
cd $2
rm $1
echo "file removed"
else
tar -cvf $1.tar $2 
echo "no file exist and archived the directory"
fi
