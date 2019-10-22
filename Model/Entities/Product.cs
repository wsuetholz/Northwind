using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;

namespace Northwind.Model.Entities
{
    public class Product
    {
        [DisplayName("ID")]
        public int ProductId { get; set; }
        [DisplayName("Product Name")]
        public string ProductName { get; set; }
        [DisplayName("QTY/Unit")]
        public string QuantityPerUnit { get; set; }
        [DisplayName("Unit Cost")]
        public decimal UnitPrice { get; set; }
        [DisplayName("QTY In Stock")]
        public short UnitsInStock { get; set; }
        [DisplayName("QTY On Order")]
        public short UnitsOnOrder { get; set; }
        [DisplayName("Reorder Level")]
        public short ReorderLevel { get; set; }
        [DisplayName("Discontinued")]
        public bool Discontinued { get; set; }
        [DisplayName("Category ID")]
        public int CategoryId { get; set; }
        [DisplayName("Category")]
        public Category Category { get; set; }
    }
}
