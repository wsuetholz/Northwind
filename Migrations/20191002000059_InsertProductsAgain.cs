﻿using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.IO;


namespace Northwind.Migrations
{
    public partial class InsertProductsAgain : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            // From File
            var sqlFile = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Migrations", "SQL", @"Northwind_Products.sql");
            migrationBuilder.Sql(File.ReadAllText(sqlFile));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
