package interfaces;

import java.util.List;
import model.Persona;

public interface CRUD {
    public List listar();/*estos son los metodos que me ayudarán a poder implementarlo en el modelo DAO y poder persistir los datos*/
    public Persona list(int id);
    public boolean add(Persona per);
    public boolean edit(Persona per);
    public boolean eliminar(int id);
}
