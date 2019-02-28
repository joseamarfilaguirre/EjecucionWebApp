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
    public class relaObraCertificadoesController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: relaObraCertificadoes
        public ActionResult Index(int id)
        {
            ViewBag.idObra = id;
            var relaObraCertificado = db.relaObraCertificado.Include(r => r.Obra).Include(r => r.TipoCertificado).Where(x=>x.IdObra==id);
            return View(relaObraCertificado.ToList());
        }

        // GET: relaObraCertificadoes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaObraCertificado relaObraCertificado = db.relaObraCertificado.Find(id);
            if (relaObraCertificado == null)
            {
                return HttpNotFound();
            }
            return View(relaObraCertificado);
        }

        // GET: relaObraCertificadoes/Create
        public ActionResult Create(int id)
        {
            ViewBag.id = id;
            ViewBag.IdObra = new SelectList(db.Obra.Where(x=>x.IdObra==id), "IdObra", "Obra1");
            ViewBag.idTipoCertificado = new SelectList(db.TipoCertificado, "IdTipoCertificado", "TipoCertificado1");
            return View();
        }

        // POST: relaObraCertificadoes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdrelaObraCertificado,FechaPresentacion,IdObra,Certificado,idTipoCertificado")] relaObraCertificado relaObraCertificado)
        {
            if (ModelState.IsValid)
            {
                db.relaObraCertificado.Add(relaObraCertificado);
                db.SaveChanges();
                return RedirectToAction("Index", new { id = relaObraCertificado.IdObra });
            }

            ViewBag.IdObra = new SelectList(db.Obra.Where(x=>x.IdObra==relaObraCertificado.IdObra), "IdObra", "Obra1", relaObraCertificado.IdObra);
            ViewBag.idTipoCertificado = new SelectList(db.TipoCertificado, "IdTipoCertificado", "TipoCertificado1", relaObraCertificado.idTipoCertificado);
            return View(relaObraCertificado);
        }

        // GET: relaObraCertificadoes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaObraCertificado relaObraCertificado = db.relaObraCertificado.Find(id);
            if (relaObraCertificado == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdObra = new SelectList(db.Obra.Where(X=>X.IdObra==relaObraCertificado.IdObra), "IdObra", "Obra1", relaObraCertificado.IdObra);
            ViewBag.idTipoCertificado = new SelectList(db.TipoCertificado, "IdTipoCertificado", "TipoCertificado1", relaObraCertificado.idTipoCertificado);
            return View(relaObraCertificado);
        }

        // POST: relaObraCertificadoes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdrelaObraCertificado,FechaPresentacion,IdObra,Certificado,idTipoCertificado")] relaObraCertificado relaObraCertificado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(relaObraCertificado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", new { id = relaObraCertificado.IdObra });
            }
            ViewBag.IdObra = new SelectList(db.Obra.Where(x=>x.IdObra==relaObraCertificado.IdObra), "IdObra", "expMatriz", relaObraCertificado.IdObra);
            ViewBag.idTipoCertificado = new SelectList(db.TipoCertificado, "IdTipoCertificado", "TipoCertificado1", relaObraCertificado.idTipoCertificado);
            return View(relaObraCertificado);
        }

        // GET: relaObraCertificadoes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            relaObraCertificado relaObraCertificado = db.relaObraCertificado.Find(id);
            if (relaObraCertificado == null)
            {
                return HttpNotFound();
            }
            return View(relaObraCertificado);
        }

        // POST: relaObraCertificadoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            relaObraCertificado relaObraCertificado = db.relaObraCertificado.Find(id);
            int idObra = relaObraCertificado.IdObra;
            db.relaObraCertificado.Remove(relaObraCertificado);
            db.SaveChanges();
            return RedirectToAction("Index", new { id = idObra });
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
