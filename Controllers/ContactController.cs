using Microsoft.AspNetCore.Mvc;
using Northwind.Models;
using System.Linq;

namespace Northwind.Controllers
{
    public class ContactController : Controller
    {
        private readonly INorthwindRepository _repository;
        public ContactController(INorthwindRepository repo)
        {
            _repository = repo;
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