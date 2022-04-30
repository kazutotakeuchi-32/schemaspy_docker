#!bin/sh
# set -e

if [ -e "/output/index.html"  ]; then
  echo "Output already exists"
   rm -r /output/*
else
    echo "index.html does not exist"
fi

until mysql -h db -u root -ppassword &> /dev/null
do
 #エラー出力な場合は"."を出力
 >&2 echo -n "."
sleep 1
done

>&2 echo "MySQL is up - executing command"
eval "java -jar schemaspy.jar -vizjs"

