using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.IO;

namespace Northwind.Migrations
{
    public partial class InsertDiscounts : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            // From File
            var sqlFile = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Migrations", "SQL", @"Populate_Discounts.sql");
            migrationBuilder.Sql(File.ReadAllText(sqlFile));


        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
