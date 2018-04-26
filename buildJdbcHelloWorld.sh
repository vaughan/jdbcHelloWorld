#prepareData_JdbcHelloworld.sh needs to be run first
if [ $1 -a $1 == "mysql" ]; then
  echo 'including CLASSPATH for mysql'
  CLASSPATH=".:/usr/share/java/mysql.jar" #dpkg -L libmysql-java |grep jar
 elif [ $1 -a $1 == "postgres" ]; then
  echo 'including CLASSPATH for postgres'
  CLASSPATH=".:/usr/share/java/postgresql.jar" #dpkg -L libpostgresql-jdbc-java |grep jar
 else
  echo 'including CLASSPATH for mysql and postgres'
  CLASSPATH=".:/usr/share/java/postgresql.jar:/usr/share/java/mysql.jar"
 fi

export CLASSPATH

echo compiling...
javac JdbcHelloWorld.java
echo running...
java JdbcHelloWorld $1
