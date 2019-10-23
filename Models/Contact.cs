using System.ComponentModel.DataAnnotations;

namespace Northwind.Models
{
    public class Contact
    {
        public int ContactId { get; set; }

        [Required]
        public string Name { get; set; }

        [EmailAddress]
        public string Email { get; set; }
    }
}
