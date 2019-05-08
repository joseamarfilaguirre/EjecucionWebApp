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
    public class PlanTrabajoDetallesController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: PlanTrabajoDetalles
        //public ActionResult Index()
        //{
        //    var planTrabajoDetalle = db.PlanTrabajoDetalle.Include(p => p.PlanTrabajo);
        //    return View(planTrabajoDetalle.ToList());
        //}

        // GET: PlanTrabajoDetalles/Details/5
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

        // GET: PlanTrabajoDetalles/Create
        public ActionResult Create(int id)
        {
            ViewBag.idPlan = id;
            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo.Where(o=>o.IdPlanTrabajo == id), "IdPlanTrabajo", "FechaInicio",id);
            return View();
        }

        // POST: PlanTrabajoDetalles/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdPlanTrabajoDet,IdPlanTrabajo,FechaAvance,porcentajePrevisto,porcentajeReal")] PlanTrabajoDetalle planTrabajoDetalle)
        {
            if (ModelState.IsValid)
            {
                db.PlanTrabajoDetalle.Add(planTrabajoDetalle);
                db.SaveChanges();
                return RedirectToAction("Details", "PlanTrabajo", new { id = planTrabajoDetalle.IdPlanTrabajo });
            }

            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo, "IdPlanTrabajo", "IdPlanTrabajo", planTrabajoDetalle.IdPlanTrabajo);
            return View(planTrabajoDetalle);
        }

        // GET: PlanTrabajoDetalles/Edit/5
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
            ViewBag.idPlan = planTrabajoDetalle.IdPlanTrabajo;
            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo.Where(p=>p.IdPlanTrabajo == planTrabajoDetalle.IdPlanTrabajo), "IdPlanTrabajo", "FechaInicio", planTrabajoDetalle.IdPlanTrabajo);
            return View(planTrabajoDetalle);
        }

        // POST: PlanTrabajoDetalles/Edit/5
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
                return RedirectToAction("Details","PlanTrabajo",new { id = planTrabajoDetalle.IdPlanTrabajo });
            }
            ViewBag.IdPlanTrabajo = new SelectList(db.PlanTrabajo, "IdPlanTrabajo", "IdPlanTrabajo", planTrabajoDetalle.IdPlanTrabajo);
            return View(planTrabajoDetalle);
        }

        // GET: PlanTrabajoDetalles/Delete/5
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

        // POST: PlanTrabajoDetalles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PlanTrabajoDetalle planTrabajoDetalle = db.PlanTrabajoDetalle.Find(id);
            int idPlan = planTrabajoDetalle.IdPlanTrabajo;
            db.PlanTrabajoDetalle.Remove(planTrabajoDetalle);
            db.SaveChanges();
            return RedirectToAction("Details", "PlanTrabajo", new { id = idPlan });
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
