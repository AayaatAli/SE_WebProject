using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductDetailRptr();
            }

        }

     

        private void BindProductDetailRptr()
        {
            int P_ID = Convert.ToInt32(Request.QueryString["Item_Id"]);
            DataTable dtProductView = Sql.ViewProduct(P_ID);

            //sda.Fill(dtProducts);
            ShowItemRptr.DataSource = dtProductView;
            ShowItemRptr.DataBind();
        }

        protected void addCart_ServerClick(object sender, EventArgs e)
        {
            int P_ID = Convert.ToInt32(Request.QueryString["Item_Id"]);
            DataTable dtProductView = Sql.ViewProduct(P_ID);
            if (dtProductView.Rows.Count == 0)
            {
                return;
            }
            //tbQuantity.;
            DataRow dr = dtProductView.Rows[0];
            int qu = Convert.ToInt32(Request.Form["tbQuantity"]);
            clsItems _item = new clsItems()
            { Prod_Id = Convert.ToInt32(dr["Item_Id"]), Price = Convert.ToDouble(dr["Item_price"]), Prod_Name = dr["Item_name"].ToString(), Quantity = qu, Prod_img = dr["Item_image"].ToString() };

            clsShoppingCart objSC = new clsShoppingCart();
            DataTable x = objSC.addItemRow(_item);
            Session["dtShoppingCart"] = x;
        }
    }
}