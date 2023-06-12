./gradlew clean
rm -fr bin
mysql -uhello2 -h127.0.0.1 --port=3306  -pHelloWorld99$90 hello < ./cleanMeta.sql
./gradlew --no-daemon run --port 8080
