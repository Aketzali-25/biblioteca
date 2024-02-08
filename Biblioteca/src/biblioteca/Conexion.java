/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package biblioteca;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Aket Luna
 */
public class Conexion {
     private static Connection con;
    private  static final String driver = "com.mysql.jdbc.Driver";
    private static final String user = "root";
    private static final String pass ="";
    private static final String url = "jdbc:mysql://localhost/libreria";
    
    public static void conectar() throws ClassNotFoundException {
        con=null;
        try{
            Class.forName(driver);
            con=(Connection) DriverManager.getConnection(url,user,pass);
            if(con!=null){
                System.out.print("Conexion exitosa !! ");
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("Error"+e);
            
        }
    }
}
