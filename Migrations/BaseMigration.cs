using System;
using System.IO;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Northwind.Migrations
{
    public abstract class BaseMigration : Migration
    {
        public string RunSql(MigrationBuilder mb, string file)
        {
            var sqlFile = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Migrations", "Sql", file);
            mb.Sql(File.ReadAllText(sqlFile));

            return sqlFile;
        }
    }
}
