using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public class Obra
    {
        public int IdObra { set; get; }
        public string ExpMatriz { set; get; }
        public string ObraNombre { set; get; }
        public string ACCU { set; get; }
        public int IdDptoProvincia { set; get; }
        public int IdPrograma { set; get; }
        public int IdEmpConstructora { set; get; }
        public int? CantParaSorteo { set; get; }
        public float MontoOriginal { set; get; }
        public string LicitacionResolucion { set; get; }
        public int PlazoOriginal { set; get; }
        public DateTime FechaFinalizacion { set; get; }
        public float MontoContratoPesos { set; get; }
        public float MontoContratoUVI { set; get; }
        public DateTime FechaOferta { set; get; }
        public DateTime FechaInicio { set; get; }
    }

}