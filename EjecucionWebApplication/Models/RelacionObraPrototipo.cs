using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public partial class RelacionObraPrototipo
    {
        public int IdrelaObraPrototipo { set; get; }
        public int Cantidad { set; get; }
        public int IdObra { set; get; }
        public int IdPrototipo { set; get; }
        public int CantidadParaSorteo { set; get; }
    }
}
