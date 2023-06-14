./gradlew clean
rm -fr bin
mysql -uroot -h127.0.0.1 --port=6603  hello < ./cleanMeta.sql
./gradlew --no-daemon run --port 8080