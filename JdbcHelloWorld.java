import java.sql.*;
/*from  w  w  w.  j  a va2  s.  c  om*/
public class JdbcHelloWorld {
  static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
  static final String DB_URL = "jdbc:mysql://localhost/jdbcHelloWorld";
  static final String USER = "jdbcHelloWorld";
  static final String PASS = "jdbcHelloWorld";

  public static void main(String[] args) {
    Connection conn = null;
    Statement stmt = null;
    try {
      Class.forName(JDBC_DRIVER);
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      stmt = conn.createStatement();
      String sql = "SELECT id, firstName, lastName, age FROM people";
      ResultSet rs = stmt.executeQuery(sql);
      while (rs.next()) {
        int id = rs.getInt("ID");
        int age = rs.getInt("age");
        String first = rs.getString("firstName");
        String last = rs.getString("lastName");

        System.out.print("ID: " + id);
        System.out.print(", Age: " + age);
        System.out.print(", First: " + first);
        System.out.println(", Last: " + last);
      }
      rs.close();
      stmt.close();
      conn.close();
    } catch (SQLException se) {
      se.printStackTrace();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      try {
        if (stmt != null)
          stmt.close();
        if (conn != null)
          conn.close();
      } catch (SQLException se) {
        se.printStackTrace();
      }
    }
  }
}
