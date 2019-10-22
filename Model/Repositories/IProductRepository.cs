using Northwind.Model.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Northwind.Model.Repositories
{
    public interface IProductRepository
    {
        IQueryable<Product> Products { get; }
        IQueryable<Category> Categories { get; }
        IQueryable<Discount> Discounts { get; }
        IQueryable<Contact> Contacts { get; }

        void AddContact(Contact contact);

        IQueryable<Customer> Customers { get; }
        void AddCustomer(Customer customer);
    }
}
