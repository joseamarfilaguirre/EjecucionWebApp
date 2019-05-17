using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebAppEjecucion.Models;

namespace WebAppEjecucion.Controllers
{
    public class PlanTrabajoController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: PlanTrabajo
        public ActionResult Index(int? id)
        {
            var planTrabajo = db.PlanTrabajo.Where(x => x.IdObra == id).Include(p => p.EmpresaConstructora).Include(p => p.Obra);
            ViewBag.idobra = id;
            return View(planTrabajo.ToList());
        }

        // GET: PlanTrabajo/Details/5
        public ActionResult Details(int? id)
        {
            var plan = db.PlanTrabajoDetalle.Where(x => x.IdPlanTrabajo == id).OrderBy(x=>x.numeroPeriodo);
            //    var filteredData = db.Products.Local
            //.Where(x => x.Name.Contains(this.FilterTextBox.Text));
            //    this.productBindingSource.DataSource = filteredData;
            DataTable datosgrafico = new DataTable();
            datosgrafico.Columns.Add(new DataColumn("Fecha", typeof(string)));
            datosgrafico.Columns.Add(new DataColumn("Porcentaje Real", typeof(string)));
            datosgrafico.Columns.Add(new DataColumn("Porcentaje Presupuestado", typeof(string)));
            foreach (PlanTrabajoDetalle elemento in plan.ToList())
            {
                datosgrafico.Rows.Add(new Object[]
              {
                   elemento.FechaAvance.ToString("MM/yyyy"),
                   elemento.porcentajeReal.ToString(),
                   elemento.porcentajePrevisto.ToString()
              });
            }
            string stringDatos = "[[" + "`Fecha`," + "`Porcentaje Real`," + "`Porcentaje Presupuestado`]";
            foreach (DataRow fila in datosgrafico.Rows)
            {
                stringDatos = stringDatos + ",[";
                stringDatos = stringDatos + "`" + fila[0] + "`" + "," + fila[1].ToString().Replace(",",".") + "," + fila[2].ToString().Replace(",", ".");
                stringDatos = stringDatos + "]";
            }
            stringDatos = stringDatos + "]";
            ViewBag.datosCharts = stringDatos;
            ViewBag.idobra = id;
            ViewBag.Plandetalle = plan.ToList();
            //return View(plan.ToList()
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PlanTrabajo planTrabajo = db.PlanTrabajo.Find(id);
            if (planTrabajo == null)
            {
                return HttpNotFound();
            }
            return View(planTrabajo);
        }

        // GET: PlanTrabajo/Create
        public ActionResult Create(int? id)
        {
            ViewBag.id = id;
            ViewBag.IdEmpresaConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1");
            ViewBag.IdObra = new SelectList(db.Obra.Where(x => x.IdObra == id), "IdObra", "Obra1");
            return View();
        }

        // POST: PlanTrabajo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdPlanTrabajo,IdObra,IdEmpresaConstructora,plazoOriginal,FechaInicio,FechaFinalizacion,montoContrato,estado")] PlanTrabajo planTrabajo)
        {
            if (ModelState.IsValid)
            {
                db.PlanTrabajo.Add(planTrabajo);
                db.SaveChanges();
                return RedirectToAction("Index", new { id = planTrabajo.IdObra});
            }

            ViewBag.IdEmpresaConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", planTrabajo.IdEmpresaConstructora);
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "expMatriz", planTrabajo.IdObra);
            return View(planTrabajo);
        }

        // GET: PlanTrabajo/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PlanTrabajo planTrabajo = db.PlanTrabajo.Find(id);
            if (planTrabajo == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdEmpresaConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", planTrabajo.IdEmpresaConstructora);
            ViewBag.IdObra = new SelectList(db.Obra.Where(o=>o.IdObra==planTrabajo.IdObra), "IdObra", "expMatriz");
            return View(planTrabajo);
        }

        // POST: PlanTrabajo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdPlanTrabajo,IdObra,IdEmpresaConstructora,plazoOriginal,FechaInicio,FechaFinalizacion,montoContrato,estado")] PlanTrabajo planTrabajo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(planTrabajo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", new { id = planTrabajo.IdObra });
            }
            ViewBag.IdEmpresaConstructora = new SelectList(db.EmpresaConstructora, "IdEmpConstructora", "EmpresaConstructora1", planTrabajo.IdEmpresaConstructora);
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "expMatriz", planTrabajo.IdObra);
            return View(planTrabajo);
        }

        // GET: PlanTrabajo/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PlanTrabajo planTrabajo = db.PlanTrabajo.Find(id);
            if (planTrabajo == null)
            {
                return HttpNotFound();
            }
            return View(planTrabajo);
        }

        // POST: PlanTrabajo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PlanTrabajo planTrabajo = db.PlanTrabajo.Find(id);
            db.PlanTrabajo.Remove(planTrabajo);
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
