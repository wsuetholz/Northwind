using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.IO;

namespace Northwind.Migrations
{
    public partial class InsertCategories : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            // Plain SQL
            //migrationBuilder.Sql("UPDATE dbo.Table SET Created = GETDATE()");

            // From File
            var sqlFile = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Migrations", "SQL", @"Northwind_Categories.sql");
            migrationBuilder.Sql(File.ReadAllText(sqlFile));

        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
