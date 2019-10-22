using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Northwind.Model.Repositories;

namespace Northwind.Controllers
{
    public class CategoryController : Controller
    {
        private IProductRepository _repository;

        public CategoryController(IProductRepository repository)
        {
            _repository = repository;
        }

        public IActionResult Index()
        {
            return View(_repository.Categories.OrderBy(c => c.CategoryName));
        }
    }
}