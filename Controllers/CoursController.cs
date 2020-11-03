using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LMS.DATA.EF;
using Microsoft.AspNet.Identity;

namespace LMS.UI.MVC.Controllers
{
    public class CoursController : Controller
    {
        private LMSEntities db = new LMSEntities();
        [Authorize]
        // GET: Cours
        public ActionResult Index()
        {
            return View(db.Courses.ToList());
        }

        // GET: Cours/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cours cours = db.Courses.Find(id);
            if (cours == null)
            {
                return HttpNotFound();
            }
            return View(cours);
        }
        [Authorize(Roles = "Admin")]
        // GET: Cours/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Cours/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CourseID,CourseName,Description,IsActive")] Cours cours, HttpPostedFileBase courseImage)
        {
            if (ModelState.IsValid)
            {
                string pic = "noimage.jpg";
                if (courseImage != null)
                {
                    pic = courseImage.FileName;
                    string ext = pic.Substring(pic.LastIndexOf("."));
                    string[] passExt = new string[] { ".jpg", ".png", ".jpeg" };
                    if (passExt.Contains(ext.ToLower()))
                    {
                        pic = Guid.NewGuid() + ext;
                        courseImage.SaveAs(Server.MapPath("~/Content/CourseImages/" + pic));
                    }
                    else
                    {
                        pic = "noimage.jpg";
                    }
                }

                Cours info = new Cours()
                {
                    CourseID = cours.CourseID,
                    CourseName = cours.CourseName,
                    Description = cours.Description,
                    IsActive = cours.IsActive,
                    CourseImage = pic
                  

                };
                db.Courses.Add(info);
                db.SaveChanges();
                return RedirectToAction("Index");

            }

            return View(cours);
        }
        [Authorize(Roles = "Admin")]
        // GET: Cours/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cours cours = db.Courses.Find(id);
            if (cours == null)
            {
                return HttpNotFound();
            }
            return View(cours);
        }

        // POST: Cours/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CourseID,CourseName,Description,IsActive")] Cours cours, HttpPostedFileBase courseImage)
        {
            if (ModelState.IsValid)
            {
                string pic = "noimage.jpg";
                if (courseImage != null)
                {
                    pic = courseImage.FileName;
                    string ext = pic.Substring(pic.LastIndexOf("."));
                    string[] passExt = new string[] { ".jpg", ".png", ".jpeg" };
                    if (passExt.Contains(ext.ToLower()))
                    {
                        pic = Guid.NewGuid() + ext;
                        courseImage.SaveAs(Server.MapPath("~/Content/CourseImages/" + pic));
                        if (Session["currentImage"].ToString() != "noimage.jpg")
                        {
                            System.IO.File.Delete(Server.MapPath("~/Content/CourseImages/" + Session["currentImage"].ToString()));
                        }
                    }
                    //else
                    //{
                    //    pic = "noimage.jpg";
                    //}
                }
                else if (Session["currentImage"].ToString() != "noimage.jpg")
                {
                    pic = Session["currentImage"].ToString();
                }

                Cours info = new Cours()
                {
                    CourseID = cours.CourseID,
                    CourseName = cours.CourseName,
                    Description = cours.Description,
                    IsActive = cours.IsActive,
                    CourseImage = pic


                };
                db.Entry(info).State = EntityState.Modified;
                db.SaveChanges();
            
                return RedirectToAction("Index");
            }
            return View(cours);
        }
        [Authorize(Roles = "Admin")]
        // GET: Cours/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cours cours = db.Courses.Find(id);
            if (cours == null)
            {
                return HttpNotFound();
            }
            return View(cours);
        }

        // POST: Cours/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Cours cours = db.Courses.Find(id);
            db.Courses.Remove(cours);
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
