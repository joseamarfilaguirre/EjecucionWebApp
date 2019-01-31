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
    public class EstadoObrasController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: EstadoObras
        public ActionResult Index()
        {
            return View(db.EstadoObra.ToList());
        }

        // GET: EstadoObras/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EstadoObra estadoObra = db.EstadoObra.Find(id);
            if (estadoObra == null)
            {
                return HttpNotFound();
            }
            return View(estadoObra);
        }

        // GET: EstadoObras/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: EstadoObras/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdEstadoObra,EstadoObra1")] EstadoObra estadoObra)
        {
            if (ModelState.IsValid)
            {
                db.EstadoObra.Add(estadoObra);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(estadoObra);
        }

        // GET: EstadoObras/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EstadoObra estadoObra = db.EstadoObra.Find(id);
            if (estadoObra == null)
            {
                return HttpNotFound();
            }
            return View(estadoObra);
        }

        // POST: EstadoObras/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdEstadoObra,EstadoObra1")] EstadoObra estadoObra)
        {
            if (ModelState.IsValid)
            {
                db.Entry(estadoObra).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(estadoObra);
        }

        // GET: EstadoObras/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EstadoObra estadoObra = db.EstadoObra.Find(id);
            if (estadoObra == null)
            {
                return HttpNotFound();
            }
            return View(estadoObra);
        }

        // POST: EstadoObras/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            EstadoObra estadoObra = db.EstadoObra.Find(id);
            db.EstadoObra.Remove(estadoObra);
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
