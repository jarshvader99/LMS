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
    public class CourseCompletionsController : Controller
    {
        private LMSEntities db = new LMSEntities();
        [Authorize]
        // GET: CourseCompletions
        public ActionResult Index()
        {

            var courseCompletions = db.CourseCompletions.Include(c => c.Cours).Include(c => c.UserDetail).ToList();
            List<CourseCompletion> ccSingle = new List<CourseCompletion> { };
       
            for (int i = courseCompletions.Count() - 1; i >= 0; i--)
            {
                if (ccSingle.Count() == 0)
                    ccSingle.Add(courseCompletions[i]);
                else
                {
                    for (int x = ccSingle.Count() - 1; x >= 0; x--)
                    {
                        if (courseCompletions[i].UserID == ccSingle[x].UserID)
                            break;
                        else if (ccSingle.First() == ccSingle[x])
                            ccSingle.Add(courseCompletions[i]);
                    }
                }
            }
            return View(ccSingle);
        }

        [Authorize(Roles = "Admin, Manager")]
        // GET: CourseCompletions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseCompletion courseCompletion = db.CourseCompletions.Find(id);
            if (courseCompletion == null)
            {
                return HttpNotFound();
            }
            return View(courseCompletion);
        }
        [Authorize(Roles = "Admin")]
        // GET: CourseCompletions/Create
        public ActionResult Create()
        {
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName");
            ViewBag.UserID = new SelectList(db.UserDetails, "UserID", "FirstName");
            return View();
        }

        // POST: CourseCompletions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CourseCompletionID,UserID,CourseID,DateCompleted")] CourseCompletion courseCompletion)
        {
            if (ModelState.IsValid)
            {
                db.CourseCompletions.Add(courseCompletion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName", courseCompletion.CourseID);
            ViewBag.UserID = new SelectList(db.UserDetails, "UserID", "FirstName", courseCompletion.UserID);
            return View(courseCompletion);
        }
        [Authorize(Roles = "Admin")]
        // GET: CourseCompletions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseCompletion courseCompletion = db.CourseCompletions.Find(id);
            if (courseCompletion == null)
            {
                return HttpNotFound();
            }
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName", courseCompletion.CourseID);
            ViewBag.UserID = new SelectList(db.UserDetails, "UserID", "FirstName", courseCompletion.UserID);
            return View(courseCompletion);
        }

        // POST: CourseCompletions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CourseCompletionID,UserID,CourseID,DateCompleted")] CourseCompletion courseCompletion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(courseCompletion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName", courseCompletion.CourseID);
            ViewBag.UserID = new SelectList(db.UserDetails, "UserID", "FirstName", courseCompletion.UserID);
            return View(courseCompletion);
        }
        [Authorize(Roles = "Admin")]
        // GET: CourseCompletions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CourseCompletion courseCompletion = db.CourseCompletions.Find(id);
            if (courseCompletion == null)
            {
                return HttpNotFound();
            }
            return View(courseCompletion);
        }

        // POST: CourseCompletions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CourseCompletion courseCompletion = db.CourseCompletions.Find(id);
            db.CourseCompletions.Remove(courseCompletion);
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
