using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LMS.UI.MVC.Models
{
    public class ContactViewModel
    {
        [StringLength(25, ErrorMessage = "* Max 25 characters!")]
        [Required(ErrorMessage = "* Required")]
        public string FirstName { get; set; }

        [StringLength(25, ErrorMessage = "* Max 25 characters!")]
        [Required(ErrorMessage = "* Required")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "* Required")]
        [EmailAddress(ErrorMessage = "Please use a valid email!")]
        public string Email { get; set; }

        [StringLength(50, ErrorMessage = "* Max 100 characters!")]
        [Required(ErrorMessage = "* Required")]
        public string Subject { get; set; }

        [StringLength(5000, ErrorMessage = "* Max 5000 characters!")]
        [Required(ErrorMessage = "* Required")]
        public string Message { get; set; }
    }
}