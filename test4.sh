echo "enter the file name"; read filename
echo "$filename"
read -p  "enter the path" path 
echo  "$path"
if  [ -f ${path}/${filename} ] 
then
cd ${path}
rm ${filename}
echo "file removed"
else
tar -cvf $filename.tar ${path} 
echo "no file exist and archived the directory"
fi
