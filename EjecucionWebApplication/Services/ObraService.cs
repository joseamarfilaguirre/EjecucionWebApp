using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EjecucionWebApplication.Models;

namespace EjecucionWebApplication.Services
{
    public class ObraService
    {
        public Obra ObtenerObra(int idObra)
        {
            return new Obra {
                IdObra = 1,
                ObraNombre = "Barrio Santa Barbara ",
                ACCU = "200",
                CantParaSorteo = 200,
                ExpMatriz = "501-62626",
                FechaFinalizacion = new DateTime(),
                FechaInicio = new DateTime(),
                FechaOferta = new DateTime(),
                IdDptoProvincia = 1,
                IdEmpConstructora= 1,
                IdPrograma=1,
                LicitacionResolucion = "dasdasdas",
                MontoContratoPesos = 150000,
                MontoContratoUVI = 3000,
                MontoOriginal= 15600566,
                PlazoOriginal = 600
            };
        }
        public void agregarObra(Obra obra) {
        }
        public void eliminarObra(int idObra)
        {
        }
        public void actualizarObra(Obra obra)
        {
        }
        public List<Obra> obtenerObras() {
            var obra1 = new Obra
            {
                IdObra = 1,
                ObraNombre = "Barrio Santa Barbara ",
                ACCU = "200",
                CantParaSorteo = 200,
                ExpMatriz = "501-62626",
                FechaFinalizacion = new DateTime(),
                FechaInicio = new DateTime(),
                FechaOferta = new DateTime(),
                IdDptoProvincia = 1,
                IdEmpConstructora = 1,
                IdPrograma = 1,
                LicitacionResolucion = "dasdasdas",
                MontoContratoPesos = 150000,
                MontoContratoUVI = 3000,
                MontoOriginal = 15600566,
                PlazoOriginal = 600
            };
            var obra2= new Obra
            {
                IdObra = 1,
                ObraNombre = "Barrio Santa Clara",
                ACCU = "100",
                CantParaSorteo = 100,
                ExpMatriz = "501-643434",
                FechaFinalizacion = new DateTime(),
                FechaInicio = new DateTime(),
                FechaOferta = new DateTime(),
                IdDptoProvincia = 1,
                IdEmpConstructora = 1,
                IdPrograma = 1,
                LicitacionResolucion = "dasdasdas",
                MontoContratoPesos = 14343440,
                MontoContratoUVI = 3000,
                MontoOriginal = 15600566,
                PlazoOriginal = 365
            };
            return new List<Obra> { obra1, obra2 };
        }
    }
}