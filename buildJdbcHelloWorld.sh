#ubuntu: apt install libmysql-java #apt-cache search jdbc |grep mysql
CLASSPATH=".:/usr/share/java/mysql.jar" #dpkg -L libmysql-java |grep *.jar
export CLASSPATH
javac JdbcHelloWorld.java
java JdbcHelloWorld
