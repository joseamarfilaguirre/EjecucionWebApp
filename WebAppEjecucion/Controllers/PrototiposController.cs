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
    public class PrototiposController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: Prototipos
        public ActionResult Index()
        {
            return View(db.Prototipos.ToList());
        }

        // GET: Prototipos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Prototipos prototipos = db.Prototipos.Find(id);
            if (prototipos == null)
            {
                return HttpNotFound();
            }
            return View(prototipos);
        }

        // GET: Prototipos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Prototipos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdPrototipo,Prototipo")] Prototipos prototipos)
        {
            if (ModelState.IsValid)
            {
                db.Prototipos.Add(prototipos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(prototipos);
        }

        // GET: Prototipos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Prototipos prototipos = db.Prototipos.Find(id);
            if (prototipos == null)
            {
                return HttpNotFound();
            }
            return View(prototipos);
        }

        // POST: Prototipos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdPrototipo,Prototipo")] Prototipos prototipos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(prototipos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(prototipos);
        }

        // GET: Prototipos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Prototipos prototipos = db.Prototipos.Find(id);
            if (prototipos == null)
            {
                return HttpNotFound();
            }
            return View(prototipos);
        }

        // POST: Prototipos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Prototipos prototipos = db.Prototipos.Find(id);
            db.Prototipos.Remove(prototipos);
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
