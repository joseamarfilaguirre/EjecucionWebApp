using EjecucionWebApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Services
{
    public class AvanceService
    {
        public Avance ObtenerAvance(int IdAvance) {
            return new Avance();
        }
        public List<Avance> ListarAvances() {
            return new List<Avance>();
        }
        public Boolean AgregarAvence(Avance avance) {
            return true;
        }
        public Boolean ActualizarAvance(Avance avance) {
            return true;
        }
        public Boolean EliminarAvance(int idAvance) {
            return true;
        }
    }
}