CREATE DATABASE hello;
CREATE USER "hello2"@"localhost" IDENTIFIED WITH mysql_native_password BY 'HelloWorld99$90';
GRANT ALL PRIVILEGES ON hello.* TO 'hello2'@'localhost';