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
using System.Net.Mail;

namespace LMS.UI.MVC.Controllers
{
    public class LessonsController : Controller
    {
        private LMSEntities db = new LMSEntities();
        [Authorize]
        // GET: Lessons
        public ActionResult Index()
        {
            var lessons = db.Lessons.Include(l => l.Cours);
            return View(lessons.ToList());
        }
        [Authorize]
        // GET: Lessons/Details/5
        public ActionResult Details(int id)
        {
            var user = User.Identity.GetUserId();
            Lesson lesson = db.Lessons.Find(id);
            if (lesson == null)
            {
                return HttpNotFound();
            }
            var lessonsView = db.LessonViews.Where(x => x.UserID == user  && x.LessonID == id).Count();
            if (lessonsView == 0)
            {
                LessonView lessonComplete = new LessonView();
                lessonComplete.UserID = User.Identity.GetUserId();
                lessonComplete.LessonID = id;
                lessonComplete.DateViewed = DateTime.Now;

                db.LessonViews.Add(lessonComplete);
                db.SaveChanges();
                var nbrLessons = db.Lessons.Where(x => x.CourseID == lesson.CourseID).Count();

                int nbrLessonsViewed = 0;
                var filteredCol = db.Lessons.Where(x => x.CourseID == lesson.CourseID);
                foreach (var lv in db.LessonViews)
                {
                    foreach (var fc in filteredCol)
                    {
                        if (fc.LessonID == lv.LessonID && lv.UserID == User.Identity.GetUserId())
                        {
                            nbrLessonsViewed++;
                        }
                    }
                }
                if (nbrLessonsViewed == nbrLessons)
                {
                    CourseCompletion cc = new CourseCompletion();
                    cc.UserID = User.Identity.GetUserId();
                    cc.CourseID = lesson.CourseID;
                    cc.DateCompleted = lessonComplete.DateViewed;
                    db.CourseCompletions.Add(cc);
                    db.SaveChanges();

                    UserDetail guy = db.UserDetails.Where(x => x.UserID == cc.UserID).Single();
                    Cours courseName = db.Courses.Where(x => x.CourseID == cc.CourseID).Single();
                    string body = string.Format(
                          $"First: {guy.FirstName}<br/>"
                        + $"Last: {guy.LastName}<br />"
                        + $"Subject:  Completed <br />"
                        + $"Message: {courseName.CourseName} <br/>");
                    MailMessage msg = new MailMessage("no-reply@jshdevco.com",//from address
                        "joshua.s.harrison@outlook.com",//to address
                        "Courses completed",//subject of email
                        body);//email body
                    msg.IsBodyHtml = true; 
                    msg.CC.Add("jarshvader@gmail.com");
                    SmtpClient client = new SmtpClient("mail.jshdevco.com");
                    client.Credentials = new NetworkCredential("no-reply@jshdevco.com", "COopers21@!");
                    client.EnableSsl = false;
                    client.Port = 8889;
                    using (client)
                    {
                        try
                        {
                            client.Send(msg);
                        }
                        catch
                        {
                            ViewBag.ErrorMessage = "An error occurred!\nPlease try again.";
                            return View(lesson);
                        }//end catch
                    }//end using
                    return View(lesson);
                }
            }
            return View(lesson);
        }
        [Authorize(Roles = "Admin")]
        // GET: Lessons/Create
        public ActionResult Create()
        {

            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName");
            return View();
        }

        // POST: Lessons/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "LessonID,LessonTitle,CourseID,Introduction,VideoURL,PdfFileName,IsActive")] Lesson lesson, HttpPostedFileBase pdf, HttpPostedFileBase lessonImage)
        {
            if (ModelState.IsValid)
            {
                #region Info and File Upload
                string pic = "noimage.jpg";
                if(lessonImage != null)
                {
                    pic = lessonImage.FileName;
                    string ext = pic.Substring(pic.LastIndexOf("."));
                    string[] passExt = new string[] { ".jpg", ".png", ".jpeg" };
                    if (passExt.Contains(ext.ToLower()))
                    {
                        pic = Guid.NewGuid() + ext;
                        lessonImage.SaveAs(Server.MapPath("~/Content/LessonImage/" + pic));
                    }
                    else
                    {
                        pic = "noimage.jpg";
                    }
                }
                string image = "default.pdf";
                if (pdf != null)
                {
                    image = pdf.FileName;
                    string ext = image.Substring(image.LastIndexOf("."));
                    string[] goodExts = new string[] { ".pdf" };
                    if (goodExts.Contains(ext.ToLower()))
                    {
                        image = Guid.NewGuid() + ext;
                        pdf.SaveAs(Server.MapPath("~/Content/LessonPDFs/" + image));
                    }
                    else
                    {
                        image = "default.pdf";
                    }
                }
                Lesson info = new Lesson()
                {
                    LessonTitle = lesson.LessonTitle,
                    CourseID = lesson.CourseID,
                    Introduction = lesson.Introduction,
                    VideoURL = lesson.VideoURL,
                    PdfFileName = image,
                    LessonImage = pic
                };
                db.Lessons.Add(info);
                db.SaveChanges();
                #endregion
                return RedirectToAction("Index");
            }
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName", lesson.CourseID);
            return View(lesson);
        }
        [Authorize(Roles = "Admin")]
        // GET: Lessons/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lesson lesson = db.Lessons.Find(id);
            if (lesson == null)
            {
                return HttpNotFound();
            }

            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName", lesson.CourseID);
            return View(lesson);
        }

        // POST: Lessons/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "LessonID,LessonTitle,CourseID,Introduction,VideoURL,PdfFileName,IsActive")] Lesson lesson, HttpPostedFileBase pdf, HttpPostedFileBase lessonImage)
        {
            if (ModelState.IsValid)
            {
                #region Member Info and File Upload
                string pic = "noimage.jpg";
                if (lessonImage != null)
                {
                    pic = lessonImage.FileName;
                    string ext = pic.Substring(pic.LastIndexOf("."));
                    string[] passExt = new string[] { ".jpg", ".png", ".jpeg" };
                    if (passExt.Contains(ext.ToLower()))
                    {
                        pic = Guid.NewGuid() + ext;
                        lessonImage.SaveAs(Server.MapPath("~/Content/LessonImage/" + pic));

                        if (Session["currentImage"].ToString() != "noimage.jpg")
                        {
                            System.IO.File.Delete(Server.MapPath("~/Content/LessonImage/" + Session["currentImage"].ToString()));
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

                string image = "default.pdf";
                if (pdf != null)
                {
                    image = pdf.FileName;
                    string ext = image.Substring(image.LastIndexOf("."));
                    if (new string[] { ".pdf" }.Contains(ext.ToLower()))
                    {
                        image = Guid.NewGuid() + ext;
                        pdf.SaveAs(Server.MapPath("~/Content/LessonPDFs/" + image));

                        if (Session["currentPDF"].ToString() != "default.pdf")
                        {
                            System.IO.File.Delete(Server.MapPath("~/Content/LessonPDFs/" + Session["currentPDF"].ToString()));
                        }
                    }
                    //else
                    //    image = "default.pdf";
                }
                if (Session["currentPDF"].ToString() != "default.pdf")
                {
                    image = Session["currentPDF"].ToString();
                }
                Lesson info = new Lesson()
                {
                    LessonID = lesson.LessonID,
                    LessonTitle = lesson.LessonTitle,
                    CourseID = lesson.CourseID,
                    Introduction = lesson.Introduction,
                    VideoURL = lesson.VideoURL,
                    PdfFileName = image,
                    IsActive = lesson.IsActive,
                    LessonImage = pic
                };
                //db.Entry(info).State = EntityState.Modified;
                //db.SaveChanges();
                db.Entry(info).State = EntityState.Modified;
                db.SaveChanges();
                #endregion
                return RedirectToAction("Index");
            }
            ViewBag.CourseID = new SelectList(db.Courses, "CourseID", "CourseName", lesson.CourseID);
            return View(lesson);
        }
        [Authorize(Roles = "Admin")]
        // GET: Lessons/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lesson lesson = db.Lessons.Find(id);
            if (lesson == null)
            {
                return HttpNotFound();
            }
            return View(lesson);
        }

        // POST: Lessons/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Lesson lesson = db.Lessons.Find(id);
            db.Lessons.Remove(lesson);
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
