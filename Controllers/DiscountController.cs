using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Northwind.Model.Repositories;

namespace Northwind.Controllers
{
    public class DiscountController : Controller
    {
        private IProductRepository _repository;

        public DiscountController(IProductRepository repository)
        {
            _repository = repository;
        }

        public IActionResult Index()
        {
            var discounts = _repository.Discounts;
            
            discounts = discounts.Where(d => d.StartTime <= DateTime.Now && d.EndTime > DateTime.Now).Include(d => d.Product);

            return View(discounts);
        }
    }
}