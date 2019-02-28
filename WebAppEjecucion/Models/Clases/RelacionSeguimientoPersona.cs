using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppEjecucion.Models.Clases
{
    public class RelacionSeguimientoPersona
    {
        public String Obra { get; set; }
        public DateTime FechaSeguimiento { get; set; }
        public string EstadoObra { get; set; }
        public string Inspector { get; set; }
        public int IdSeguimiento { get; set;}

        //public string Sobreestante { get; set; }
    }
}