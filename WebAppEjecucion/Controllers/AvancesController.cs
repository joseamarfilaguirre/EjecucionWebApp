﻿using System;
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
    public class AvancesController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        // GET: Avances
        //public ActionResult Index()
        //{
        //    ///Aca filtrar por IdObra
        //    var avance = db.Avance.Include(a => a.Obra);
        //    return View(avance.ToList());
        //}
        public ActionResult Index(int IdObra)
        {
            ///Aca filtrar por IdObra
            ///Hacer procedimiento que busque por IdObra
            var avance = db.Avance.Include(a => a.Obra);
            return View(avance.ToList());
        }

        // GET: Avances/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Avance avance = db.Avance.Find(id);
            if (avance == null)
            {
                return HttpNotFound();
            }
            return View(avance);
        }

        // GET: Avances/Create
        public ActionResult Create()
        {
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1");
            return View();
        }

        // POST: Avances/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdAvance,porcentajePrevisto,porcentajeReal,porcentajeAtraso,IdObra,FechaAvance")] Avance avance)
        {
            if (ModelState.IsValid)
            {
                db.Avance.Add(avance);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1", avance.IdObra);
            return View(avance);
        }

        // GET: Avances/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Avance avance = db.Avance.Find(id);
            if (avance == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1", avance.IdObra);
            return View(avance);
        }

        // POST: Avances/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdAvance,porcentajePrevisto,porcentajeReal,porcentajeAtraso,IdObra,FechaAvance")] Avance avance)
        {
            if (ModelState.IsValid)
            {
                db.Entry(avance).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdObra = new SelectList(db.Obra, "IdObra", "Obra1", avance.IdObra);
            return View(avance);
        }

        // GET: Avances/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Avance avance = db.Avance.Find(id);
            if (avance == null)
            {
                return HttpNotFound();
            }
            return View(avance);
        }

        // POST: Avances/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Avance avance = db.Avance.Find(id);
            db.Avance.Remove(avance);
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