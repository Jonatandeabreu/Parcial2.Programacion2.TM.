package Modelo;

public class Usuario {

    String nom;
    String pass;

    public Usuario() {
    }

    public Usuario(String nom, String pass) {
        this.nom = nom;
        this.pass = pass;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

}
