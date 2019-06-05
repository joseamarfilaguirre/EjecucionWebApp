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
    public class relaSeguimientoPersonasController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: relaSeguimientoPersonas
        public ActionResult Index(int? Id)
        {
            var relaSeguimientoPersona = db.relaSeguimientoPersona.Include(r => r.Personas).Include(r => r.rolSeguimiento).Include(r => r.Seguimiento).Where(x=>x.IdSeguimiento==Id);
            ViewBag.idSeguimiento = Id;
            return View(relaSeguimientoPersona.ToList());
        }

        // GET: relaSeguimientoPersonas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaSeguimientoPersona relaSeguimientoPersona = db.relaSeguimientoPersona.Find(id);
            if (relaSeguimientoPersona == null)
            {
                return HttpNotFound();
            }
            return View(relaSeguimientoPersona);
        }

        // GET: relaSeguimientoPersonas/Create
        public ActionResult Create(int? Id)
        {
            ViewBag.id = Id;
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "ApellidoNombre");
            ViewBag.IdRolSeguimiento = new SelectList(db.rolSeguimiento, "IdRolSeguimiento", "RolSeguimiento1");
            //ViewBag.IdSeguimiento = new SelectList(db.Seguimiento.Where(x=>x.IdSeguimiento==Id), "IdSeguimiento", "FechaSeguimiento");
            return View();
        }

        // POST: relaSeguimientoPersonas/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdRelaseguimientoPersona,IdRolSeguimiento,IdSeguimiento,IdPersona")] relaSeguimientoPersona relaSeguimientoPersona)
        {
            if (ModelState.IsValid)
            {
                db.relaSeguimientoPersona.Add(relaSeguimientoPersona);
                db.SaveChanges();
                return RedirectToAction("Index", new { id = relaSeguimientoPersona.IdSeguimiento });
            }
            ViewBag.id = relaSeguimientoPersona.IdSeguimiento;
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "ApellidoNombre");
            ViewBag.IdRolSeguimiento = new SelectList(db.rolSeguimiento, "IdRolSeguimiento", "RolSeguimiento1");
            //ViewBag.IdSeguimiento = new SelectList(db.Seguimiento.Where(x => x.IdSeguimiento == relaSeguimientoPersona.IdSeguimiento), "IdSeguimiento", "FechaSeguimiento");
            return View(relaSeguimientoPersona);
        }

        // GET: relaSeguimientoPersonas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaSeguimientoPersona relaSeguimientoPersona = db.relaSeguimientoPersona.Find(id);
            if (relaSeguimientoPersona == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "ApellidoNombre",relaSeguimientoPersona.IdPersona);
            ViewBag.IdRolSeguimiento = new SelectList(db.rolSeguimiento, "IdRolSeguimiento", "RolSeguimiento1",relaSeguimientoPersona.IdRolSeguimiento);
            ViewBag.IdSeguimiento = new SelectList(db.Seguimiento.Where(x => x.IdSeguimiento == relaSeguimientoPersona.IdSeguimiento), "IdSeguimiento", "FechaSeguimiento");
            return View(relaSeguimientoPersona);
        }

        // POST: relaSeguimientoPersonas/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdRelaseguimientoPersona,IdRolSeguimiento,IdSeguimiento,IdPersona")] relaSeguimientoPersona relaSeguimientoPersona)
        {
            if (ModelState.IsValid)
            {
                db.Entry(relaSeguimientoPersona).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", new { id = relaSeguimientoPersona.IdSeguimiento });
            }
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "ApellidoNombre");
            ViewBag.IdRolSeguimiento = new SelectList(db.rolSeguimiento, "IdRolSeguimiento", "RolSeguimiento1");
            ViewBag.IdSeguimiento = new SelectList(db.Seguimiento.Where(x => x.IdSeguimiento == relaSeguimientoPersona.IdSeguimiento), "IdSeguimiento", "FechaSeguimiento");
            return View(relaSeguimientoPersona);
        }

        // GET: relaSeguimientoPersonas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaSeguimientoPersona relaSeguimientoPersona = db.relaSeguimientoPersona.Find(id);
            if (relaSeguimientoPersona == null)
            {
                return HttpNotFound();
            }
            return View(relaSeguimientoPersona);
        }

        // POST: relaSeguimientoPersonas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            relaSeguimientoPersona relaSeguimientoPersona = db.relaSeguimientoPersona.Find(id);
            int idSeguimiento = relaSeguimientoPersona.IdSeguimiento;
            db.relaSeguimientoPersona.Remove(relaSeguimientoPersona);
            db.SaveChanges();
            return RedirectToAction("Index", new { id = idSeguimiento });
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
