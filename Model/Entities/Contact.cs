using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Northwind.Model.Entities
{
    public class Contact
    {
        [Key]
        public int ContactId { get; set; }

        [Required (ErrorMessage="Contact Name {0} is Required")]
        public string Name { get; set; }

        [EmailAddress]
        public string Email { get; set; }

    }
}
