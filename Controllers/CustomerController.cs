using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Northwind.Models;

namespace Northwind.Controllers
{
    public class CustomerController : Controller
    {
        // this controller depends on the BloggingRepository
        private INorthwindRepository repository;
        public CustomerController(INorthwindRepository repo) => repository = repo;

        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Register(Customer customer)
        {
            if (ModelState.IsValid)
            {
                repository.AddCustomer(customer);
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
    }
}
