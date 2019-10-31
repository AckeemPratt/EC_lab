namespace AdvanceTech.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class displayName : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "displayName", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "displayName");
        }
    }
}
