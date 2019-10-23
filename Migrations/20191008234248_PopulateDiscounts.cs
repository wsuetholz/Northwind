using Microsoft.EntityFrameworkCore.Migrations;

namespace Northwind.Migrations
{
    public partial class PopulateDiscounts : BaseMigration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            RunSql(migrationBuilder,"Northwind_Populate-Discounts.sql");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
