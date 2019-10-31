using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AdvanceTech.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseAlways<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        public static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "PHONE"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "PC"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "ACCESSORIES"
                },

            };

            return categories;
        }
        public static List<Product> GetProducts()
        {
            var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "Iphone 11 pro",
                    Description = "The iPhone 11 succeeds the iPhone XR, and it features a 6.1-inch LCD display that Apple calls a (Liquid Retina HD Display.)",
                    ImagePath="iphone.jpg",
                    UnitPrice = 1000.00,
                    CategoryID = 1
               },
                new Product
                {
                    ProductID = 2,
                    ProductName = "Razer Blade Stealth",
                    Description = "PERFORMANCE FOR WORK AND GAMING: NVIDIA GeForce MX150 (25W) 4GB VRAM graphics, Quad-core 8th Gen Intel Core i7 -8565U processor.",
                    ImagePath="razor.jpg",
                    UnitPrice = 1199.99,
                     CategoryID =2
               },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Bose SoundLink Revolve+ ",
                    Description = "The best performing portable speaker from Bose; delivers Deep, loud, jaw dropping sound with True 360 degree coverage",
                    ImagePath="carfast.jpg",
                    UnitPrice = 299.00,
                    CategoryID = 3
                },
              
            };

            return products;
        }
    }
}