
package Conexion;


public class Comprobar {
    public static void main(String[] args){
        Conexion con = new Conexion();
        if(con.getConnection()!=null){
            System.out.println("BIEN");
        }else{
            System.out.println("error");
        }
    }
}
