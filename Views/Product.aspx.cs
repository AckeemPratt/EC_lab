using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdvanceTech.Models;

namespace AdvanceTech
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Product> GetCategories()
        {
            var _db = new ProductContext();
            IQueryable<Product> query = _db.Products;
            return query;
        }
    }
}