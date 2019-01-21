using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EjecucionWebApplication.Controllers
{
    public class AvanceController : Controller
    {
        // GET: Avance
        public ActionResult Index()
        {
            return View();
        }

        // GET: Avance/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Avance/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Avance/Create
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

        // GET: Avance/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Avance/Edit/5
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

        // GET: Avance/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Avance/Delete/5
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
