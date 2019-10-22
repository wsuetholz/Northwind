using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Northwind.Model.Entities;
using Northwind.Model.Repositories;

namespace Northwind.Controllers
{
    public class CustomerController : Controller
    {
        private IProductRepository _repository;

        public CustomerController(IProductRepository repository)
        {
            _repository = repository;
        }

        public IActionResult Index()
        {
            return View(_repository.Customers.OrderBy(c => c.CompanyName));
        }

        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Register(Customer customer)
        {
            if (ModelState.IsValid)
            {
                _repository.AddCustomer(customer);
            }

            return RedirectToAction("Index", "Home");
        }

    }
}