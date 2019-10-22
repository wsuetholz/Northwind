using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Northwind.Model.Entities;
using Northwind.Model.Repositories;

namespace Northwind.Controllers
{
    public class ContactController : Controller
    {
        private IProductRepository _repository;

        public ContactController(IProductRepository repository)
        {
            _repository = repository;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(Contact contact)
        {
            if (ModelState.IsValid)
            {
                _repository.AddContact(contact);
            }

            return RedirectToAction("Index", "Home");
        }
    }
}