#ubuntu: apt install libmysql-java #apt-cache search jdbc |grep mysql
CLASSPATH="$CLASSPATH:/usr/share/java/postgresql.jar" #dpkg -L libpostgresql-jdbc-java |grep jar
export CLASSPATH
javac JdbcHelloWorld.java
java JdbcHelloWorld
