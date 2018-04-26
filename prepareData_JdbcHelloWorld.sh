function prepMysql() {
  echo "creating mysql database jdbcHelloWorld with table people (if doesn't already exist)"
  mysql < mysql/prepareJdbcHelloWorld_mysql.sql
 }
function prepPostgres() {
  echo "creating postgres database jdbcHelloWorld with table people"
  cat postgres/createDB_jdbcHelloWorld.sql | psql
  cat postgres/createTable_jdbcHelloWorld.sql | PGPASSWORD=jdbcHelloWorld psql -U jdbcHelloWorld jdbcHelloWorld
 }
if [ $1 -a $1 == "mysql" ]; then
  prepMysql
 elif [ $1 -a $1 == "postgres" ]; then
  prepPostgres
 else
  prepMysql
  prepPostgres
 fi

