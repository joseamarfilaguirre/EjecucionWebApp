using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebAppEjecucion.Models;
using WebAppEjecucion.Models.ViewModels;

namespace WebAppEjecucion.Controllers
{
    public class EmpresaConstructorasController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: EmpresaConstructoras
        public ActionResult Index(int pagina = 1)
        {
            var cantidadRegistrosPorPagina = 5; // parámetro
            var empresas = db.EmpresaConstructora
                 .OrderBy(x => x.IdEmpConstructora)
                 .Skip((pagina - 1) * cantidadRegistrosPorPagina)
                    .Take(cantidadRegistrosPorPagina).ToList();
            var totalDeRegistros = db.EmpresaConstructora.Count();
            var modelo = new EmpresaViewModel();
            modelo.Empresas = empresas;
            modelo.PaginaActual = pagina;
            modelo.TotalDeRegistros = totalDeRegistros;
            modelo.RegistrosPorPagina = cantidadRegistrosPorPagina;
            return View(modelo);
           // return View(db.EmpresaConstructora.ToList());
        }

        // GET: EmpresaConstructoras/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmpresaConstructora empresaConstructora = db.EmpresaConstructora.Find(id);
            if (empresaConstructora == null)
            {
                return HttpNotFound();
            }
            return View(empresaConstructora);
        }

        // GET: EmpresaConstructoras/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: EmpresaConstructoras/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdEmpConstructora,EmpresaConstructora1")] EmpresaConstructora empresaConstructora)
        {
            if (ModelState.IsValid)
            {
                db.EmpresaConstructora.Add(empresaConstructora);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(empresaConstructora);
        }

        // GET: EmpresaConstructoras/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmpresaConstructora empresaConstructora = db.EmpresaConstructora.Find(id);
            if (empresaConstructora == null)
            {
                return HttpNotFound();
            }
            return View(empresaConstructora);
        }

        // POST: EmpresaConstructoras/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdEmpConstructora,EmpresaConstructora1")] EmpresaConstructora empresaConstructora)
        {
            if (ModelState.IsValid)
            {
                db.Entry(empresaConstructora).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(empresaConstructora);
        }

        // GET: EmpresaConstructoras/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmpresaConstructora empresaConstructora = db.EmpresaConstructora.Find(id);
            if (empresaConstructora == null)
            {
                return HttpNotFound();
            }
            return View(empresaConstructora);
        }

        // POST: EmpresaConstructoras/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            EmpresaConstructora empresaConstructora = db.EmpresaConstructora.Find(id);
            db.EmpresaConstructora.Remove(empresaConstructora);
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
