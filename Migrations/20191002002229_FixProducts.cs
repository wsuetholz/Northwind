using Microsoft.EntityFrameworkCore.Migrations;

namespace Northwind.Migrations
{
    public partial class FixProducts : BaseMigration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            RunSql(migrationBuilder,$"Northwind_Fix-Products.sql");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
