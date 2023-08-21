using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CartProducts();
            }


        }

        private void CartProducts()
        {
            if (Session["dtShoppingCart"] != null)
            {
                Lbl1.Text = "Here's what you have on your way!";
                var x = Session["dtShoppingCart"] as DataTable;
                int CartCount = x.Rows.Count;
                //cartCount.InnerText = CartCount.ToString() + " items";
                //cartCount_.InnerText = "ITEMS " + CartCount.ToString();
                //PriceDetails.Visible = true;

                int total = 0;

                for (int i = 0; i < x.Rows.Count; i++)
                {

                    total += Convert.ToInt32(x.Rows[i]["pPrice"]) * Convert.ToInt32(x.Rows[i]["pQuantity"]);

                }

                P_total.InnerText = "$" + total.ToString();
                Session["total"] = P_total.InnerText;
                C_total.InnerText = "$" + (10 + total).ToString();
                Session["subTotal"] = C_total.InnerText;

                rptrCart.DataSource = x;

                rptrCart.DataBind();
            }
            else
            {
                Lbl1.Text = "Your Cart Is Empty!";

                inst_summary.Visible = false;
                cartItem_container.Visible = false;
            }
        }

        protected void checkOut_btn_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Shipping.aspx");
        }

        protected void Remove_ServerClick(object sender, EventArgs e)
        {
            var x = Session["dtShoppingCart"] as DataTable;
        
            ImageButton btn = (ImageButton)sender;
            string PID = btn.CommandArgument;



            for (int i = 0; i < x.Rows.Count; i++)
            {
                DataRow dr = x.Rows[i];
                if (dr["pID"].ToString() == PID)
                {
                    dr.Delete();
                    i -= 1;
                }
            }
            x.AcceptChanges();
            
            //Session["Order"] = x; 
            CartProducts();
            //rptrCart.DataSource = x;

            //rptrCart.DataBind();
        }
    }
}
