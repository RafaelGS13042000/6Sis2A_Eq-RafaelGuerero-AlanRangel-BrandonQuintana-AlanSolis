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
        //registrar nuevo usuario 

    public static int Registrar_Usuario(Usuario a) {
        int Estatus = 0;
        
        try{
            //coneccion 
            Connection con = acciones_usuario.getConnection();
            String q="insert into ***(valores)"
                     + "values()";
            //obtener elementos 
            PreparedStatement ps = con.prepareStatement(q);
            //obtener los elementos de la tabla get y set
            ps.setString(1, a.getNom_clie());
            ps.setString(2, a.getDirec());
            ps.setString(3, a.getTele_clien());
            ps.setString(4, a.getCorre_clien());
            ps.setString(5, a.getClave());
            
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
    //actualizar usuario
    public static int Actualizar_Usuario(Usuario a) {
        int Estatus = 0;
        
        try{
            //coneccion 
            Connection con = acciones_usuario.getConnection();
            String q="Update tabla set atributo = ?,"
                    +""
                    +"";
            //obtener elementos 
            PreparedStatement ps = con.prepareStatement(q);
            //obtener los elementos de la tabla get y set
            ps.setString(1, a.getNom_clie());
            ps.setString(2, a.getDirec());
            ps.setString(3, a.getTele_clien());
            ps.setString(4, a.getCorre_clien());
            ps.setString(5, a.getClave());
            
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
        //eliminar usuario
    public static int Eliminar_Usuario(Usuario a) {
        int Estatus = 0;
        
        try{
            //coneccion 
            Connection con = acciones_usuario.getConnection();
            String q="delete tabla set atributo = ?,"
                    +""
                    +"";
            //obtener elementos 
            PreparedStatement ps = con.prepareStatement(q);
            //obtener los elementos de la tabla get y set
            ps.setString(1, a.getNom_clie());
            ps.setString(2, a.getDirec());
            ps.setString(3, a.getTele_clien());
            ps.setString(4, a.getCorre_clien());
            ps.setString(5, a.getClave());
            
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
}

