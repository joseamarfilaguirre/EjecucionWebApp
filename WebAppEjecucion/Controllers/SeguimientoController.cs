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
    public class SeguimientoController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: Seguimiento
        public ActionResult Index(int? id)
        {
            var seguimiento = db.Seguimiento.Where(x => x.IdObra == id).Include(s => s.Obra).Include(e=>e.EstadoObra);
            ViewBag.idobra = id;
            return View(seguimiento.ToList());
        }

        // GET: Seguimiento/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seguimiento seguimiento = db.Seguimiento.Find(id);
            if (seguimiento == null)
            {
                return HttpNotFound();
            }
            return View(seguimiento);
        }

        // GET: Seguimiento/Create
        public ActionResult Create(int? id)
        {
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == id), "IdObra", "Obra1");
            ViewBag.IdEstadoObra = new SelectList(db.EstadoObra, "IdEstadoObra", "EstadoObra1");
            ViewBag.id = id;
            return View();
        }

        // POST: Seguimiento/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdSeguimiento,FechaSeguimiento,IdObra,IdEstadoObra")] Seguimiento seguimiento)
        {
            if (ModelState.IsValid)
            {
                db.Seguimiento.Add(seguimiento);
                db.SaveChanges();
                return RedirectToAction("Index", new { id = seguimiento.IdObra });
            }

            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == seguimiento.IdObra), "IdObra", "Obra1");
            return View(seguimiento);
        }

        // GET: Seguimiento/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seguimiento seguimiento = db.Seguimiento.Find(id);
            if (seguimiento == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == seguimiento.IdObra), "IdObra", "Obra1");
            ViewBag.IdEstadoObra = new SelectList(db.EstadoObra, "IdEstadoObra", "EstadoObra1");
            return View(seguimiento);
        }

        // POST: Seguimiento/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdSeguimiento,FechaSeguimiento,IdObra,IdEstadoObra")] Seguimiento seguimiento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(seguimiento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", new { id = seguimiento.IdObra });
            }
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == seguimiento.IdObra), "IdObra", "Obra1");
            return View(seguimiento);
        }

        // GET: Seguimiento/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Seguimiento seguimiento = db.Seguimiento.Find(id);
            if (seguimiento == null)
            {
                return HttpNotFound();
            }
            return View(seguimiento);
        }

        // POST: Seguimiento/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Seguimiento seguimiento = db.Seguimiento.Find(id);
            int? idrela = seguimiento.IdObra;
            db.Seguimiento.Remove(seguimiento);
            db.SaveChanges();
            return RedirectToAction("Index", new { id = idrela });
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
