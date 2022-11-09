using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal
{
    public class UsuariosDal: Dapper
    {
        public UsuariosDal(string ConexionString)
        {
            Conexion = ConexionString;
        }

    }
}
