/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rafag
 */
import java.util.*;
import java.sql.*;
public class acciones_usuario {
    
    public static Connection getConnection(){
        String url, user, password;
        //Establecemos la ruta donde esta la bd
        url = "jdbc:mysql:3306/localhost/Alumnos";
        user = "root";
        password = "brandon1234";
        
        //creamos el objeto de conexion
        Connection con = null;
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            
            //Esteblecemos la conexion
            
            con = DriverManager.getConnection(url, user, password);
            //Responde si sí se conecto:
            System.out.println("Si se conecto la bd");
            
        }catch(Exception e){
           System.out.println("No se conecto la base de datos");
           System.out.println(e.getMessage());
           System.out.println(e.getStackTrace());
        }
        
        return con;
       
   }       



}
