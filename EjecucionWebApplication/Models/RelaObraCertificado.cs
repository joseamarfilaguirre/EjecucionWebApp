using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public class RelaObraCertificado
    {
        public int IdrelaObraCertificado { set; get; }
        public DateTime FechaPresentacion { set; get; }
        public int IdCertificado { set; get; }
        public int IdObra { set; get; }

    }
}