using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public partial class RelacionSeguimeintoPersona
    {
        public int IdRelaseguimientoPersona { set; get; }
        public int IdRolSeguimiento { set; get; }
        public int IdSeguimiento { set; get; }
        public int idPersona { set; get; }
    }
}
