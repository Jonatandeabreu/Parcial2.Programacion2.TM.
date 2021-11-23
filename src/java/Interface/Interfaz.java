package Interface;

import Modelo.Personal;
import Modelo.Usuario;
import java.util.List;

public interface Interfaz {

    public List listar();

    public boolean add(Personal per);

    public boolean eliminar(int id);

    public int validar(Usuario per);
    
}
