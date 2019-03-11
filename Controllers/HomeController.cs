using System;
using Microsoft.AspNetCore.Mvc;
using Northwind.Models;

namespace Northwind.Controllers
{
    public class HomeController : Controller
    {
        // this controller depends on the NorthwindRepository
        private INorthwindRepository repository;
        public HomeController(INorthwindRepository repo) => repository = repo;

        public ActionResult Index() => View(repository.Discounts);
    }
}
