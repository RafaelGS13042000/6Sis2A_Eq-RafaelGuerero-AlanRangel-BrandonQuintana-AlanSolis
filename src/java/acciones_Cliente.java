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
public class acciones_Cliente {
     public static Connection getConnection(){
        String url, user, password;
        //Establecemos la ruta donde esta la bd
        url = "jdbc:mysql:3306/localhost/";
        user = "root";
        password = "12345";
        
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
   // registrar nueva cita 
      public static int Registrar_NuevaC(Cliente a) {
        int Estatus = 0;
        
        try{
            //coneccion 
            Connection con = acciones_usuario.getConnection();
            String q="insert into ***(valores)"
                     + "values()";
            //obtener elementos 
            PreparedStatement ps = con.prepareStatement(q);
            //obtener los elementos de la tabla get y set
            ps.setString(1, a.getFech_cit());
            ps.setString(2, a.getPag_ser());
            ps.setString(3, a.getPag_ser());
            ps.setString(4, a.getNom_sor());
            
            
            //ejecutar la query
            Estatus = ps.executeUpdate();
            
            //cerrar conexion
            con.close();
            
            System.out.println("Registro Exitoso");
            
        }catch(Exception e){
            System.out.println("No se encontro la tabla");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        return Estatus;
    }
      // registrar actualizar 
      public static int Eliminar_C(Cliente a) {
        int Estatus = 0;
        
        try{
            //coneccion 
            Connection con = acciones_usuario.getConnection();
            String q="delete into ***(valores)"
                     + "values()";
            //obtener elementos 
            PreparedStatement ps = con.prepareStatement(q);
            //obtener los elementos de la tabla get y set
            //ps.setString(2, a.getId_cita());
            ps.setString(2, a.getFech_cit());
            ps.setString(3, a.getPag_ser());
            ps.setString(4, a.getNom_sor());
            
            
            //ejecutar la query
            Estatus = ps.executeUpdate();
            
            //cerrar conexion
            con.close();
            
            System.out.println("Registro Exitoso");
            
        }catch(Exception e){
            System.out.println("No se encontro la tabla");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        return Estatus;
    }
      // realizar pago
      public static int Realizar_Pago(Cliente a) {
        int Estatus = 0;
        
        try{
            //coneccion 
            Connection con = acciones_usuario.getConnection();
            String q="insert into ***(valores)"
                     + "values()";
            //obtener elementos 
            PreparedStatement ps = con.prepareStatement(q);
            //obtener los elementos de la tabla get y set
            
            ps.setString(2, a.getPag_ser());
            ps.setString(3, a.getFech_cit());
            
            
            //ejecutar la query
            Estatus = ps.executeUpdate();
            
            //cerrar conexion
            con.close();
            
            System.out.println("Registro Exitoso");
            
        }catch(Exception e){
            System.out.println("No se encontro la tabla");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        return Estatus;
    }

    static void Eliminar_C(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
