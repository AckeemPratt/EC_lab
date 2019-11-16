using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdvanceTech.Models;


namespace AdvanceTech.Checkout
{
    public partial class CheckoutReview : System.Web.UI.Page
    {
        ProductContext db = new ProductContext(); 
        protected void Page_Load(object sender, EventArgs e)
        {


                  

                   
        }


        public IQueryable<Order> GetOrders([QueryString("Email")] string Email)
        {
            var orders = db.Orders.Include("OrderDetails").Where(m => m.Email == Email);
            return orders;
        }


        protected void CheckoutConfirm_Click(object sender, EventArgs e)
        {
            Session["userCheckoutCompleted"] = "true";
            Response.Redirect("~/Checkout/CheckoutComplete.aspx");
        }
    }
}
