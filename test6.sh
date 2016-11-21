clear
nano $1
nano $2
us=$(cat $1| wc -l)
ps=$(cat $2| wc -l)
echo "$us"
echo "$ps"
if [ "$us" -eq "$ps" ]
then
#for((i=1;i<=$us;i++))
#do
#f2=$(sed -n '$ip' $2)
#f1=$(sed -n '$ip' $1)
#sudo useradd $f1
#echo $f1:$f2 | chpasswd
#echo "created new users"
#sudo useradd $f1
#sudo echo -e "password"|passwd $f2
#sudo useradd -m -p "$passwd" "$usrname"
#done
#i=1;
#while [ $i -lt $us ]
#do
#f2=$(sed -n '$ip' $2)
#f1=$(sed -n '$ip' $1)
#sudo useradd $f1
#echo $f1:$f2 | chpasswd
#i= 'expr $i + 1'
#echo "created new users"
#passwd=$(sed -n '$ip' $2) usrname=$(sed -n '$ip' $1)
#sudo useradd -m -p $passwd $usrname
#done
paste $1 $2 | while IFS="$(printf '\t')" read -r u p
do
sudo useradd $u
echo $u:$p | chpasswd
echo "created new users"
done
else 
echo "not matching no of user name and passwd"
fi
