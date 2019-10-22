using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Northwind.Model.Repositories;

namespace Northwind.Controllers
{
    public class HomeController : Controller
    {
        private IProductRepository _repository;

        public HomeController(IProductRepository repository)
        {
            _repository = repository;
        }

        public ActionResult Index() {
            var discounts = _repository.Discounts;
            discounts = discounts.Where(d => d.StartTime <= DateTime.Now && d.EndTime >= DateTime.Now).OrderBy(d => d.EndTime).ThenBy(d => d.StartTime).Take(3);
            return View(discounts);
        }

        public ActionResult Balloons() => View();
    }
}

