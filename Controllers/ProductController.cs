using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Northwind.Models;

namespace Northwind.Controllers
{
    public class ProductController : Controller
    {
        // this controller depends on the NorthwindRepository
        private readonly INorthwindRepository _repository;
        public ProductController(INorthwindRepository repo) => _repository = repo;

        public IActionResult Category()
        {
            return View(_repository.Categories.OrderBy(c => c.CategoryName));
        }

        public IActionResult Index(int id)
        {
            return View(_repository.Products.Where(p => p.CategoryId == id && p.Discontinued == false)
                .OrderBy(p => p.ProductName));
        }

        public IActionResult Discounts()
        {
            //return View();
            return View(_repository.Discounts.Where(d => d.StartTime <= DateTime.Now && d.EndTime > DateTime.Now));
        }
    }
}
