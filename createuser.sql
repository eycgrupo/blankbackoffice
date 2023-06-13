CREATE DATABASE hello;
CREATE USER "hello2"@"172.17.0.1" IDENTIFIED WITH mysql_native_password BY 'HelloWorld99$90';
GRANT ALL PRIVILEGES ON hello.* TO 'hello2'@'172.17.0.1';