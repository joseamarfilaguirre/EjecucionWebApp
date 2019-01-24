using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebAppEjecucion.Models;

namespace WebAppEjecucion.Controllers
{
    public class ObrasController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: Obras
        public ActionResult Index()
        {
            var obra = db.Obra.Include(o => o.DptoProvincia).Include(o => o.EmpresaConstructora).Include(o => o.Programa);
            return View(obra.ToList());
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
            return View(obra);
        }

        // GET: Obras/Create
        public ActionResult Create()
        {
            ViewBag.IdDptoProvincia = new SelectList(db.DptoProvincia, "IdDptoProvincia", "DptoProvincia1");
            ViewBag.IdEmpConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1");
            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1");
            return View();
        }

        // POST: Obras/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdObra,expMatriz,Obra1,ACCU,IdDptoProvincia,IdPrograma,IdEmpConstructora,cantParaSorteo,montoOriginal,licitacionResolucion,plazoOriginal,fechaFinalizacion,MontoContratoPesos,MontoContratoUVI,FechaOferta,FechaInicio")] Obra obra)
        {
            if (ModelState.IsValid)
            {
                db.Obra.Add(obra);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdDptoProvincia = new SelectList(db.DptoProvincia, "IdDptoProvincia", "DptoProvincia1", obra.IdDptoProvincia);
            ViewBag.IdEmpConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", obra.IdEmpConstructora);
            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1", obra.IdPrograma);
            return View(obra);
        }

        // GET: Obras/Edit/5
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
            ViewBag.IdEmpConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", obra.IdEmpConstructora);
            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1", obra.IdPrograma);
            return View(obra);
        }

        // POST: Obras/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdObra,expMatriz,Obra1,ACCU,IdDptoProvincia,IdPrograma,IdEmpConstructora,cantParaSorteo,montoOriginal,licitacionResolucion,plazoOriginal,fechaFinalizacion,MontoContratoPesos,MontoContratoUVI,FechaOferta,FechaInicio")] Obra obra)
        {
            if (ModelState.IsValid)
            {
                db.Entry(obra).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdDptoProvincia = new SelectList(db.DptoProvincia, "IdDptoProvincia", "DptoProvincia1", obra.IdDptoProvincia);
            ViewBag.IdEmpConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", obra.IdEmpConstructora);
            ViewBag.IdPrograma = new SelectList(db.Programa, "IdPrograma", "Programa1", obra.IdPrograma);
            return View(obra);
        }

        // GET: Obras/Delete/5
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
