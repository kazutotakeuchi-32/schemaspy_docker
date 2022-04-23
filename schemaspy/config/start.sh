#!bin/sh
# set -e


echo "Waiting for mysql"

until mysql -h db -u root -ppassword &> /dev/null
do
 #エラー出力な場合は"."を出力
 >&2 echo -n "."
sleep 1
done

>&2 echo "MySQL is up - executing command"
eval "java -jar schemaspy.jar -vizjs"

