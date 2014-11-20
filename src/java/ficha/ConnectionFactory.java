/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ficha;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Thassiane
 */
public class ConnectionFactory {
          public static Connection getConnection(){
       try {
          DriverManager.registerDriver(new com.mysql.jdbc.Driver());
           return DriverManager.getConnection("jdbc:mysql://150.164.102.160/daw-aluno11", "daw-aluno11","daw11");
//           return DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql352784", "sql352784", "uC5!rZ3!");
       } catch (SQLException ex) {
            throw new RuntimeException(ex);
       }
   }
}
