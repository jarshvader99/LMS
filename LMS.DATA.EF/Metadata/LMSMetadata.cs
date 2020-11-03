using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMS.DATA.EF//.Metadata
{
    public class CoursMetadata
    {
        [Required(ErrorMessage = "*")]
        [StringLength(200, ErrorMessage = "* Must be 200 characters or less")]
        [Display(Name ="Course Name")]
        public string CourseName { get; set; }

        [DisplayFormat(NullDisplayText = "[ -- N/A -- ]")]
        [StringLength(500, ErrorMessage = "* Must be 500 characters or less")]
        public string Description { get; set; }

        [Display(Name = "Course Active?")]
        public bool IsActive { get; set; }
    }
    [MetadataType(typeof(CoursMetadata))]
    public partial class Cours
    {
      
    }
    public class CourseCompletionMetadata
    {
        //public int CourseCompletionID { get; set; }
        //public string UserID { get; set; }
        //public int CourseID { get; set; }
        [Required(ErrorMessage = "*")]
        [Display(Name = "Date Completed")]
        [DisplayFormat(DataFormatString = "{0:d}", NullDisplayText = "[ -- N/A -- ]")]
        public System.DateTime DateCompleted { get; set; }
    }
    [MetadataType(typeof(CourseCompletionMetadata))]
    public partial class CourseCompletion
    {

    }

    public class LessonMetadata
    {
        //public int LessonID { get; set; }
        [Required(ErrorMessage = "*")]
        [StringLength(200, ErrorMessage = "* Must be 200 characters or less", MinimumLength = 10)]
        [Display(Name = "Lesson Title")]
        public string LessonTitle { get; set; }

        //public int CourseID { get; set; }

        [DisplayFormat(NullDisplayText = "[ -- N/A -- ]")]
        [StringLength(300, ErrorMessage = "* Must be 300 characters or less")]
        public string Introduction { get; set; }

        [DisplayFormat(NullDisplayText = "[ -- N/A -- ]")]
        [StringLength(250, ErrorMessage = "* Must be 250 characters or less")]
        [Display(Name = "Video Url")]
        public string VideoURL { get; set; }

        [DisplayFormat(NullDisplayText = "[ -- N/A -- ]")]
        [StringLength(100, ErrorMessage = "* Must be 100 characters or less")]
        [Display(Name = "PDF File Name")]
        public string PdfFileName { get; set; }

        [Display(Name = "Lesson Active?")]
        public bool IsActive { get; set; }
    }
    [MetadataType(typeof(LessonMetadata))]
    public partial class Lesson
    {
        public string LessonIntro
        {
            get { return LessonTitle.Substring(0, 10) + "..."; }
        }

    }

    public class LessonViewMetadata
    {
        //public int LessonViewID { get; set; } 
        //public string UserID { get; set; }
        //public int LessonID { get; set; }
        [Required(ErrorMessage = "*")]
        [DisplayFormat(DataFormatString = "{0:d}", NullDisplayText = "[ -- N/A -- ]")]
        [Display(Name = "Date Viewed")]
        public System.DateTime DateViewed { get; set; }
    }

    [MetadataType(typeof(LessonViewMetadata))]
    public partial class LessonView
    {

    }
    public class UserDetailMetadata
    {
        //public string UserID { get; set; }
        [Required(ErrorMessage = "*")]
        [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }
        [Display(Name = "Last Name")]
        [Required(ErrorMessage = "*")]
        [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
        public string LastName { get; set; }
    }

    [MetadataType(typeof(UserDetailMetadata))]
    public partial class UserDetails
    {

    }
}
