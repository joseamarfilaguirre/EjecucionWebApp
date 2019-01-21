using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public class EstadoObra
    {
        public int IdEstadoObra { set; get; }

        public string EstadoObraDesc { set; get;}

        public int IdSeguimiento { set; get; }
    }
}