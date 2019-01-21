using EjecucionWebApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Services
{
    public class RelaObraPrototipoService
    {
        public RelacionObraPrototipo ObtenerItem(int idItem) {
            return new RelacionObraPrototipo();
        }
        public List<RelacionObraPrototipo> ListarItems() {
            return new List<RelacionObraPrototipo>();
        }
        public Boolean AgregarItem(int IdRelObraProt) {
            return true;
        }
        public Boolean ActualizarItem(RelacionObraPrototipo item)
        {
            return true;
        }
        public Boolean EliminarItem(int IdRelObraProt)
        {
            return true;
        }
    }
}