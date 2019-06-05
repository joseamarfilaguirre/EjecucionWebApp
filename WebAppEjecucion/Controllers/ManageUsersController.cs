using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebAppEjecucion.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using WebAppEjecucion.Models.ViewModels;

namespace WebAppEjecucion.Controllers
{
    [Authorize(Roles ="Administrador")]
    public class ManageUsersController : Controller
    {
        private ConexionEjecucionDB db = new ConexionEjecucionDB();

        public ActionResult Index( int? result, int pagina = 1)
        {
            ViewBag.resultado = result;
            var cantidadRegistrosPorPagina = 5; // parámetro
            var users = db.AspNetUsers
                .OrderBy(x => x.Id)
                .Skip((pagina - 1) * cantidadRegistrosPorPagina)
                .Take(cantidadRegistrosPorPagina).ToList();
            var totalDeRegistros = db.AspNetUsers.Count();
            var modelo = new UsersViewModel();
            modelo.Users = users;
            modelo.PaginaActual = pagina;
            modelo.TotalDeRegistros = totalDeRegistros;
            modelo.RegistrosPorPagina = cantidadRegistrosPorPagina;
            return View(modelo);
            // return View(db.EmpresaConstructora.ToList());
        }

        // GET: ManageUsers/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // GET: ManageUsers/Create
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult CrearUsuario(RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {
                using (ApplicationDbContext db = new ApplicationDbContext())
                {

                    var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                    var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
                    var result = userManager.Create(user, model.Password);
                    return RedirectToAction("Index", new { result = -1 });
                }
                 
                
            }

            // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
            return View(model);
        }
        // POST: ManageUsers/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName")] AspNetUsers aspNetUsers)
        {
            if (ModelState.IsValid)
            {
                db.AspNetUsers.Add(aspNetUsers);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(aspNetUsers);
        }

        public ActionResult gestionarRolesPorUsuario(string userid)
        {
            using ( var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext())))
            {
                var rolesForUser = userManager.GetRolesAsync(userid);

            }
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                var roles = userManager.GetRoles(userid);
                ViewBag.userid = userid;
                ViewBag.username = userManager.FindById(userid).UserName;
                return View(roles.ToList());
            }
           
        }

        public ActionResult agregarRol(string userid) {
            ViewBag.id = userid;
            ViewBag.UserId = new SelectList(db.AspNetUsers.Where(x=>x.Id==userid), "Id", "UserName");
            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Name", "Name");
            return View();
           /// return RedirectToAction("gestionarRolesPorUsuario",new { userid = userid });
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult agregarRol([Bind(Include = "UserId, RoleId")] AspNetUserRoles aspNetRolesUser)
        {
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                var resultado = userManager.AddToRole(aspNetRolesUser.UserId, aspNetRolesUser.RoleId);
                if (resultado.Succeeded)
                {
                    return RedirectToAction("gestionarRolesPorUsuario", new { userid = aspNetRolesUser.UserId });
                }
                else return View();
            }
           
        }
        public ActionResult eliminarRol(string userid,string rolid)
        {
            using (ApplicationDbContext db = new ApplicationDbContext())
            {
                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                var resultado = userManager.RemoveFromRole(userid,rolid);
                if (resultado.Succeeded)
                {
                    return RedirectToAction("gestionarRolesPorUsuario", new { userid = userid });
                }
                else return View();
            }
        }
        public ActionResult ResetPassword(string code)
        {
      
            using (ApplicationDbContext db = new ApplicationDbContext())
            {

                var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                var user = userManager.FindById(code);
                var data = new ResetPasswordViewModel();
                data.Email = user.Email;
                return code == null ? View("Error") : View(data);
            }
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ResetPassword(ResetPasswordViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }
            else
            {
                using (ApplicationDbContext db = new ApplicationDbContext())
                {

                    var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));
                    var user = userManager.FindByName(model.Email);
                    //var result = userManager.ResetPassword(user.Id, model.Code, model.Password);
                    var result = userManager.RemovePassword(user.Id);
                    if (result.Succeeded==true)
                    {
                        var result1 = userManager.AddPassword(user.Id, model.Password);
                        if (result1.Succeeded == true)
                        {
                            return RedirectToAction("Index",new {result = 1 });
                        }
                        else return RedirectToAction("Index", new { result = 0 });

                    }
                    return RedirectToAction("Index");
                }


            }
        }

        // GET: ManageUsers/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // POST: ManageUsers/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName")] AspNetUsers aspNetUsers)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aspNetUsers).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(aspNetUsers);
        }

        // GET: ManageUsers/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // POST: ManageUsers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            AspNetUsers aspNetUsers = db.AspNetUsers.Find(id);
            db.AspNetUsers.Remove(aspNetUsers);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult desactivarUsuario(string id) {
            AspNetUsersBlock aspNetUsersBlock = new AspNetUsersBlock();
            aspNetUsersBlock.UserId = id;
            aspNetUsersBlock.FechaBloqueo = DateTime.Now;
            db.AspNetUsersBlock.Add(aspNetUsersBlock);
            db.SaveChanges();
            return RedirectToAction("Index", new { result = -1 });
        }
        public ActionResult activarUsuario(string id) {
            AspNetUsersBlock aspNetUsersBlock = db.AspNetUsersBlock.Where(x => x.UserId == id).FirstOrDefault();
            db.AspNetUsersBlock.Remove(aspNetUsersBlock);
            db.SaveChanges();
            return RedirectToAction("Index", new { result = -1 });
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
