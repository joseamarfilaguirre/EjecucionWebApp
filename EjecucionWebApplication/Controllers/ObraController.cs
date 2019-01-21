﻿using EjecucionWebApplication.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EjecucionWebApplication.Controllers
{
    public class ObraController : Controller
    {
        // GET: Obra
        public ActionResult Index()
        {
            ViewBag.Message = "Lista de obras en Ejecución.";
            var obraService = new ObraService();
            var model = obraService.ListarObras();
            return View(model);
        }

        // GET: Obra/Details/5
        public ActionResult Details(int id)
        {
            var obraService = new ObraService();
            var model = obraService.ObtenerObra(1);
            return View(model);
        }

        // GET: Obra/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Obra/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Obra/Edit/5
        public ActionResult Edit(int id)
        {
            var obraService = new ObraService();
            var model = obraService.ObtenerObra(1);
            return View(model);
        }

        // POST: Obra/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Obra/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Obra/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
