using Dal;


namespace Bussiness
{
    public class UsuariosBussiness
    {
        public UsuariosDal Dal;

        public UsuariosBussiness(string Conexion)
        {
            Dal = new UsuariosDal(Conexion);
        }
    }
}
