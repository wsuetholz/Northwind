using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Northwind.Model.Repositories;

namespace Northwind.Controllers
{
    public class ProductController : Controller
    {
        private IProductRepository _repository;

        public ProductController(IProductRepository repository)
        {
            _repository = repository;
        }
        public IActionResult Index1(int id)
        {
            var products = _repository.Products;
            if (id != 0)
            {
                products = products.Where(p => p.CategoryId == id && !p.Discontinued).Include(p => p.Category);
            }
            return View(products);
        }

        public IActionResult Categories()
        {
            return View(_repository.Categories);
        }

        public IActionResult Category() => View(_repository.Categories.OrderBy(c => c.CategoryName));
        public IActionResult Index(int id)
        {
            ViewBag.id = id;
            return View(_repository.Categories.OrderBy(c => c.CategoryName));
        }
        public IActionResult Discounts() => View(_repository.Discounts.Where(d => d.StartTime <= DateTime.Now && d.EndTime > DateTime.Now));

    }
}