using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductCount();


        }

        private void ProductCount()
        {
            var x = Session["dtShoppingCart"] as DataTable;
            if (x == null)
            {
                int Cartcount = 0;
                pCount.InnerText = Cartcount.ToString();
            }
            else
            {
                int CartCount = x.Rows.Count;

                pCount.InnerText = CartCount.ToString();

            }
        }

        protected void btnCart_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx");
        }
    }
}