read db1
echo $db1 >> db.txt

l=1
while read line || [ -n "$line" ] ; do
  echo "Line $l: $line"
  ((l+=1))

done < db.txt
