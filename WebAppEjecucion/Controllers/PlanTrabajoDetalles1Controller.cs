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
    public class PlanTrabajoDetalles1Controller : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: PlanTrabajoDetalles1
        public ActionResult Index()
        {
            var planTrabajoDetalle = db.PlanTrabajoDetalle.Include(p => p.PlanTrabajo);
            return View(planTrabajoDetalle.ToList());
        }

        // GET: PlanTrabajoDetalles1/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PlanTrabajoDetalle planTrabajoDetalle = db.PlanTrabajoDetalle.Find(id);
            if (planTrabajoDetalle == null)
            {
                return HttpNotFound();
            }
            return View(planTrabajoDetalle);
        }

        // GET: PlanTrabajoDetalles1/Create
        public ActionResult Create()
        {
            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo, "IdPlanTrabajo", "IdPlanTrabajo");
            return View();
        }

        // POST: PlanTrabajoDetalles1/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(PlanTrabajoDetalle planTrabajoDetalle)
        {
            if (ModelState.IsValid)
            {
                db.PlanTrabajoDetalle.Add(planTrabajoDetalle);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo, "IdPlanTrabajo", "IdPlanTrabajo", planTrabajoDetalle.IdPlanTrabajo);
            return View(planTrabajoDetalle);
        }

        // GET: PlanTrabajoDetalles1/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PlanTrabajoDetalle planTrabajoDetalle = db.PlanTrabajoDetalle.Find(id);
            if (planTrabajoDetalle == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo, "IdPlanTrabajo", "IdPlanTrabajo", planTrabajoDetalle.IdPlanTrabajo);
            return View(planTrabajoDetalle);
        }

        // POST: PlanTrabajoDetalles1/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdPlanTrabajoDet,IdPlanTrabajo,FechaAvance,porcentajePrevisto,porcentajeReal,porcentajeAtraso")] PlanTrabajoDetalle planTrabajoDetalle)
        {
            if (ModelState.IsValid)
            {
                db.Entry(planTrabajoDetalle).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo, "IdPlanTrabajo", "IdPlanTrabajo", planTrabajoDetalle.IdPlanTrabajo);
            return View(planTrabajoDetalle);
        }

        // GET: PlanTrabajoDetalles1/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PlanTrabajoDetalle planTrabajoDetalle = db.PlanTrabajoDetalle.Find(id);
            if (planTrabajoDetalle == null)
            {
                return HttpNotFound();
            }
            return View(planTrabajoDetalle);
        }

        // POST: PlanTrabajoDetalles1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PlanTrabajoDetalle planTrabajoDetalle = db.PlanTrabajoDetalle.Find(id);
            db.PlanTrabajoDetalle.Remove(planTrabajoDetalle);
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
