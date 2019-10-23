using System;
using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Northwind.Models;

namespace Northwind.Controllers
{
    public class HomeController : Controller
    {
        private readonly INorthwindRepository _repository;
        public HomeController(INorthwindRepository repo)
        {
            _repository = repo;
        }

        public ActionResult Index()
        {
            var results = _repository.Discounts
                .Where(d => d.StartTime <= DateTime.Now
                            && d.EndTime > DateTime.Now)
                .Take(3);

            return View(results);
        }
    }
}
