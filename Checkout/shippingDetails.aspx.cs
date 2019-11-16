using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdvanceTech.Models;
using AdvanceTech.Logic;
using System.Data.Entity; 

namespace AdvanceTech.Checkout
{
    public partial class shippingDetails : System.Web.UI.Page
    {
        ProductContext db = new ProductContext(); 
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void shippingDetails_Click(object sender, EventArgs e)
        {
            var cart = new ShoppingCartActions();
            var items = cart.GetCartItems();
           
            Order order = new Order { FirstName = FirstName.Text, OrderDate = DateTime.Now, LastName = LastName.Text, Address = Address.Text, City = City.Text, Country = Country.Text, PostalCode = PostalCode.Text,State = State.Text, Email = Email.Text, HasBeenShipped = true, Phone = Phone.Text, Total = cart.GetTotal()};
            db.Orders.Add(order);
            db.SaveChanges();
            order.OrderDetails = new List<OrderDetail>();
            foreach(var item in items)
            {
                var details = new OrderDetail { OrderId = order.OrderId, ProductId = item.ProductId, Quantity = item.Quantity, UnitPrice = db.Products.Find(item.ProductId).UnitPrice, Username = order.Email}; 
                order.OrderDetails.Add(details); 
            }

            db.Entry(order).State = EntityState.Modified;
            db.SaveChanges();
            cart.EmptyCart();
            Response.Redirect("~/Checkout/CheckoutComplete.aspx");
        }

    }
}