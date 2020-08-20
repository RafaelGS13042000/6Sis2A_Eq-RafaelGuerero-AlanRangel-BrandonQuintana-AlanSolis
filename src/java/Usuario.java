/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rafag
 */
import java.sql. * ;
public class Usuario {
   
   private int id_clie;
   private String nom_clie,direc,tele_clien,corre_clien,clave;

   public Usuario verificarUsuario(String user, String clave){
        //incializar las variables u objetos
        Usuario u = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        try{
           
            con = Conexion.getConnection();
            String q = "Select * from Usuario where corre_clien = ? AND Clave = ?";
            ps = con.prepareStatement(q);
            //paso los parametros de usuario y clave
            ps.setString(1, user);
            ps.setString(2, clave);
            //realizo la consulta
            rs = ps.executeQuery();
            //busco al usuario dentro de la tabla
            while(rs.next()){
                //el objeto de usuario
                u = new Usuario();
                u.setId_clie(rs.getInt("id_clie"));
                u.setNom_clie(rs.getString("nom_clie"));
                u.setDirec(rs.getString("direc"));
                u.setTele_clien(rs.getString("tele_clien"));
                u.setCorre_clien(rs.getString("corre_clien"));
                u.setClave(rs.getString("Clave"));
                break;
               
            }
       
        }catch(SQLException e){
            System.out.println("Error al conectar con la tabla");
            System.out.println(e.getMessage());
            System.out.println(e.getSQLState());
            u = null;
       
        }finally{
            try{
                rs.close();
                ps.close();
                con.close();
           
            }catch(Exception e){
           
            }
       
        }
        return u;
             
    }
   
   
   
   
    public int getId_clie() {
        return id_clie;
    }

    public void setId_clie(int id_clie) {
        this.id_clie = id_clie;
    }

    public String getNom_clie() {
        return nom_clie;
    }

    public void setNom_clie(String nom_clie) {
        this.nom_clie = nom_clie;
    }

    public String getDirec() {
        return direc;
    }

    public void setDirec(String direc) {
        this.direc = direc;
    }

    public String getTele_clien() {
        return tele_clien;
    }

    public void setTele_clien(String tele_clien) {
        this.tele_clien = tele_clien;
    }

    public String getCorre_clien() {
        return corre_clien;
    }

    public void setCorre_clien(String corre_clien) {
        this.corre_clien = corre_clien;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
   
}
