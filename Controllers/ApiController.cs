﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Northwind.Model.Entities;
using Northwind.Model.Repositories;

namespace Northwind.Controllers
{
    [ApiController]
    public class ApiController : ControllerBase
    {
        private readonly IProductRepository _repository;

        public ApiController(IProductRepository repository)
        {
            _repository = repository;
        }
        
        [HttpGet, Route("api/product")]
        // returns all products
        public IEnumerable<Product> Get() => _repository.Products.OrderBy(p => p.ProductName);

        [HttpGet, Route("api/product/{id}")]
        // returns specific product
        public Product Get(int id) => _repository.Products.FirstOrDefault(p => p.ProductId == id);

        [HttpGet, Route("api/product/discontinued/{discontinued}")]
        // returns all products where discontinued = true/false
        public IEnumerable<Product> GetDiscontinued(bool discontinued) => _repository.Products.Where(p => p.Discontinued == discontinued).OrderBy(p => p.ProductName);

        [HttpGet, Route("api/category/{CategoryId}/product")]
        // returns all products in a specific category
        public IEnumerable<Product> GetByCategory(int CategoryId) => _repository.Products.Where(p => p.CategoryId == CategoryId).OrderBy(p => p.ProductName);

        [HttpGet, Route("api/category/{CategoryId}/product/discontinued/{discontinued}")]
        // returns all products in a specific category where discontinued = true/false
        public IEnumerable<Product> GetByCategoryDiscontinued(int CategoryId, bool discontinued) => _repository.Products.Where(p => p.CategoryId == CategoryId && p.Discontinued == discontinued).OrderBy(p => p.ProductName);

    }
}