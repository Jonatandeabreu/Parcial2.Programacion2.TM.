package Modelo;

public class Personal {

    int id;
    String nombre;
    String direccion;
    String tlf;
    String fecha;
    String cargo;
    String z_i;

    public Personal() {
    }

    public Personal(String nombre, String direccion, String tlf, String fecha, String cargo, String z_i) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.tlf = tlf;
        this.fecha = fecha;
        this.cargo = cargo;
        this.z_i = z_i;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTlf() {
        return tlf;
    }

    public void setTlf(String tlf) {
        this.tlf = tlf;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getZ_i() {
        return z_i;
    }

    public void setZ_i(String z_i) {
        this.z_i = z_i;
    }

}
