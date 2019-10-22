using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Northwind.Model.Entities
{
    public class Discount
    {
        public int DiscountId { get; set; }
        public int Code { get; set; }
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime StartTime { get; set; }
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime EndTime { get; set; }
        public decimal DiscountPercent { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int ProductId { get; set; }
        public Product Product { get; set; }
    }
}
