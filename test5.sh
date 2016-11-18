ps -e>abcd.txt
awk '{print$1}' abcd.txt > abcde.txt
rm abcd.txt

