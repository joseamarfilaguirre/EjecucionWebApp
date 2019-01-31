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
    public class EntregasController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: Entregas
        public ActionResult Index(int? id)
        {
            var entregas = db.Entregas.Where(x => x.IdObra == id).Include(e => e.Obra);
            ViewBag.idobra = id;
            return View(entregas.ToList());
        }

        // GET: Entregas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entregas entregas = db.Entregas.Find(id);
            if (entregas == null)
            {
                return HttpNotFound();
            }
            return View(entregas);
        }

        // GET: Entregas/Create
        public ActionResult Create(int? id)
        {
            ViewBag.id = id;
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == id), "IdObra", "Obra1");
            return View();
        }

        // POST: Entregas/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdEntrega,FechaEntrega,CantEntregada,IdObra")] Entregas entregas)
        {
            if (ModelState.IsValid)
            {
                db.Entregas.Add(entregas);
                db.SaveChanges();
                return RedirectToAction("Index", new { id = entregas.IdObra });
            }
            ViewBag.id = entregas.IdObra;
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == entregas.IdObra), "IdObra", "Obra1");
            return View(entregas);
        }

        // GET: Entregas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entregas entregas = db.Entregas.Find(id);
            if (entregas == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == entregas.IdObra), "IdObra", "Obra1");
            return View(entregas);
        }

        // POST: Entregas/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdEntrega,FechaEntrega,CantEntregada,IdObra")] Entregas entregas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(entregas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", new { id = entregas.IdObra });
            }
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == entregas.IdObra), "IdObra", "Obra1");
            return View(entregas);
        }

        // GET: Entregas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entregas entregas = db.Entregas.Find(id);
            if (entregas == null)
            {
                return HttpNotFound();
            }
            return View(entregas);
        }

        // POST: Entregas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Entregas entregas = db.Entregas.Find(id);
            int? idrela = entregas.IdObra;
            db.Entregas.Remove(entregas);
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
