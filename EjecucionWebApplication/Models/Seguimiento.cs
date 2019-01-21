using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public class Seguimiento
    {
        public int IdSeguimiento { set; get; }
        public DateTime FechaSeguimeinto { set; get; }
        public int IdObra { set; get; }
        public int idEstadoObra { set; get; }
    }
}
