using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Northwind.Model.Context;
using Northwind.Model.Entities;

namespace Northwind.Model.Repositories
{
    public class NorthwindRepository : IProductRepository
    {
        private NorthwindContext _context;

        public NorthwindRepository(NorthwindContext northwindContext)
        {
            _context = northwindContext;
        }
        public IQueryable<Product> Products => _context.Products;

        public IQueryable<Category> Categories => _context.Categories;

        public IQueryable<Discount> Discounts => _context.Discounts;
        public IQueryable<Contact> Contacts => _context.Contacts;

        public void AddContact(Contact contact) { _context.Contacts.Add(contact); _context.SaveChanges(); }

        public IQueryable<Customer> Customers => _context.Customers;
        public void AddCustomer(Customer customer) { _context.Customers.Add(customer); _context.SaveChanges(); }

    }
}
