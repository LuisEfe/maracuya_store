using Bussiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Backend_maracuya_store.Controllers
{
    public class UsuariosController : ApiController
    {
        public UsuariosBussiness usuariosBussiness = new UsuariosBussiness(Properties.Settings.Default.Conexion);
    }
}
