using EjecucionWebApplication.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EjecucionWebApplication.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            var obraService = new ObraService();
            var model = obraService.ListarObras();
            return View(model);
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Avance()
        {
            ViewBag.Message = "Avances.";
            //var obraService = new ObraService();
            //var model = obraService.obtenerObras();
            return View();
        }
    }
}