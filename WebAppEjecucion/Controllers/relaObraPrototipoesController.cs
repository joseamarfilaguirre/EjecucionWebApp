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
    public class relaObraPrototipoesController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: relaObraPrototipoes
        public ActionResult Index()
        {
            var relaObraPrototipo = db.relaObraPrototipo.Include(r => r.Obra).Include(r => r.Prototipos);
            return View(relaObraPrototipo.ToList());
        }

        // GET: relaObraPrototipoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaObraPrototipo relaObraPrototipo = db.relaObraPrototipo.Find(id);
            if (relaObraPrototipo == null)
            {
                return HttpNotFound();
            }
            return View(relaObraPrototipo);
        }

        // GET: relaObraPrototipoes/Create
        public ActionResult Create()
        {
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1");
            ViewBag.IdPrototipo = new SelectList(db.Prototipos, "IdPrototipo", "Prototipo");
            return View();
        }

        // POST: relaObraPrototipoes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdrelaObraPrototipo,Cantidad,IdObra,IdPrototipo,CantidadParaSorteo")] relaObraPrototipo relaObraPrototipo)
        {
            if (ModelState.IsValid)
            {
                db.relaObraPrototipo.Add(relaObraPrototipo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1", relaObraPrototipo.IdObra);
            ViewBag.IdPrototipo = new SelectList(db.Prototipos, "IdPrototipo", "Prototipo", relaObraPrototipo.IdPrototipo);
            return View(relaObraPrototipo);
        }

        // GET: relaObraPrototipoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaObraPrototipo relaObraPrototipo = db.relaObraPrototipo.Find(id);
            if (relaObraPrototipo == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1", relaObraPrototipo.IdObra);
            ViewBag.IdPrototipo = new SelectList(db.Prototipos, "IdPrototipo", "Prototipo", relaObraPrototipo.IdPrototipo);
            return View(relaObraPrototipo);
        }

        // POST: relaObraPrototipoes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdrelaObraPrototipo,Cantidad,IdObra,IdPrototipo,CantidadParaSorteo")] relaObraPrototipo relaObraPrototipo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(relaObraPrototipo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1", relaObraPrototipo.IdObra);
            ViewBag.IdPrototipo = new SelectList(db.Prototipos, "IdPrototipo", "Prototipo", relaObraPrototipo.IdPrototipo);
            return View(relaObraPrototipo);
        }

        // GET: relaObraPrototipoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaObraPrototipo relaObraPrototipo = db.relaObraPrototipo.Find(id);
            if (relaObraPrototipo == null)
            {
                return HttpNotFound();
            }
            return View(relaObraPrototipo);
        }

        // POST: relaObraPrototipoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            relaObraPrototipo relaObraPrototipo = db.relaObraPrototipo.Find(id);
            db.relaObraPrototipo.Remove(relaObraPrototipo);
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
