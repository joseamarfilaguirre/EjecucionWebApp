using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebAppEjecucion.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using WebAppEjecucion.Models.ViewModels;

namespace WebAppEjecucion.Controllers
{
    //[Authorize(Roles = "EmpleadoIPV")]
    [AccessDeniedAuthorize(Roles = "EmpleadoIPV,Administrador,Certificador")]
    public class ObrasController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: Obras
        public ActionResult Index(int pagina = 1)
        {
            var cantidadRegistrosPorPagina = 5; // parámetro


            var autenticado = User.Identity.IsAuthenticated;
            var id = User.Identity.GetUserId();
            if (autenticado)
            {
                //var obra = db.Obra
                //    .Include(o => o.DptoProvincia)
                //    .Include(o => o.Programa);
                //var personas = db.Personas.Where(predicado).OrderBy(x => x.Id)
                //    .Skip((pagina - 1) * cantidadRegistrosPorPagina)
                //    .Take(cantidadRegistrosPorPagina).ToList();
                //var totalDeRegistros = db.Personas.Where(predicado).Count();

                var obra = db.Obra
                 .Include(o => o.DptoProvincia)
                 .Include(o => o.Programa).OrderBy(x=>x.IdObra)
                 .Skip((pagina - 1) * cantidadRegistrosPorPagina)
                    .Take(cantidadRegistrosPorPagina).ToList();
                var totalDeRegistros = db.Obra.Count();
                var modelo = new ObrasViewModel();
                modelo.Obras = obra;
                modelo.PaginaActual = pagina;
                modelo.TotalDeRegistros = totalDeRegistros;
                modelo.RegistrosPorPagina = cantidadRegistrosPorPagina;
                return View(modelo);
            }
            else
            {

                var modelo = new ObrasViewModel();
                modelo.Obras = new List<Obra>();
                modelo.PaginaActual = pagina;
                modelo.TotalDeRegistros = 0;
                modelo.RegistrosPorPagina = cantidadRegistrosPorPagina;
                return View(modelo);
            }
            
        }

        // GET: Obras/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Obra obra = db.Obra.Find(id);
            if (obra == null)
            {
                return HttpNotFound();
            }
            try
            {
                ViewBag.ObraPadre = db.Obra.Where(o => o.IdObra == obra.IdObraPadre).ToList()[0].Obra1;
            }
            catch
            {
                ViewBag.ObraPadre = "No tiene";
            }
            return View(obra);
        }

        // GET: Obras/Create
        [AccessDeniedAuthorize(Roles = "Administrador,Certificador,JefeCertificaciones,JefeTecnico,Inspector")]
        public ActionResult Create()
        {
            ViewBag.IdDptoProvincia = new SelectList(db.DptoProvincia, "IdDptoProvincia", "DptoProvincia1");
           // var item = new { IdObra = "", Obra1 = "Seleccione Obra" };
            var obrasp = new SelectList(db.Obra, "IdObra", "Obra1");
            ViewBag.IdObraPadre = obrasp; 

            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1");
            return View();
        }

        // POST: Obras/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdObra,expMatriz,Obra1,ACCU,IdDptoProvincia,IdPrograma,IdObraPadre,cantParaSorteo,montoOriginal,licitacionResolucion,MontoContratoPesos,FechaOferta")] Obra obra)
        {
            if (ModelState.IsValid)
            {
                db.Obra.Add(obra);
                db.SaveChanges();
                return RedirectToAction("Index",new {id = obra.IdObra});
            }

            ViewBag.IdDptoProvincia = new SelectList(db.DptoProvincia, "IdDptoProvincia", "DptoProvincia1", obra.IdDptoProvincia);
            //ViewBag.IdEmpConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", obra.IdEmpConstructora);
            ViewBag.IdObraPadre = new SelectList(db.Obra, "IdObra", "Obra1",obra.IdObraPadre);
            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1", obra.IdPrograma);
            return View(obra);
        }

        // GET: Obras/Edit/5
        [AccessDeniedAuthorize(Roles = "Administrador,Certificador,JefeCertificaciones,JefeTecnico,Inspector")]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Obra obra = db.Obra.Find(id);
            if (obra == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdDptoProvincia = new SelectList(db.DptoProvincia, "IdDptoProvincia", "DptoProvincia1", obra.IdDptoProvincia);
            //ViewBag.IdEmpConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", obra.IdEmpConstructora);
            ViewBag.IdObraPadre = new SelectList(db.Obra, "IdObra", "Obra1", obra.IdObraPadre);
            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1", obra.IdPrograma);
            return View(obra);
        }

        // POST: Obras/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdObra,expMatriz,Obra1,ACCU,IdDptoProvincia,IdPrograma,IdObraPadre,cantParaSorteo,montoOriginal,licitacionResolucion,MontoContratoPesos,FechaOferta,Checkeado")] Obra obra)
        {
            if (ModelState.IsValid)
            {
                db.Entry(obra).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdDptoProvincia = new SelectList(db.DptoProvincia, "IdDptoProvincia", "DptoProvincia1", obra.IdDptoProvincia);
            //ViewBag.IdEmpConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", obra.IdEmpConstructora);
           // ViewBag.IdObraPadre = new SelectList(db.Obra, "IdObra", "Obra1", obra.IdObraPadre);
            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1", obra.IdPrograma);
            return View(obra);
        }

        // GET: Obras/Delete/5
        [AccessDeniedAuthorize(Roles = "Administrador,Certificador,JefeCertificaciones,JefeTecnico")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Obra obra = db.Obra.Find(id);
            if (obra == null)
            {
                return HttpNotFound();
            }
            return View(obra);
        }

        // POST: Obras/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Obra obra = db.Obra.Find(id);
            db.Obra.Remove(obra);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
