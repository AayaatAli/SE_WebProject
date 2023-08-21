using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategoryRptr();
                BindNameCategoryRptr();
            }
           
       
        }

        private void BindNameCategoryRptr()
        {
            int C_ID = Convert.ToInt32(Request.QueryString["Category_Id"]);
            Sql sql_ = new Sql();
            DataTable dt = Sql.fillDataTable("select Category_name from dbo.Category where Category_Id="+ C_ID);
            CategoryaNameRptr.DataSource = dt;
            CategoryaNameRptr.DataBind();
        }

        private void BindCategoryRptr()
        {
            int C_ID = Convert.ToInt32(Request.QueryString["Category_Id"]);
            DataTable dtCategoryView = Sql.getProduct(C_ID);

            //sda.Fill(dtProducts);
            ShowCategoryRptr.DataSource = dtCategoryView;
            ShowCategoryRptr.DataBind();

        }

        //protected void addCart_ServerClick(object sender, EventArgs e)
        //{
        //    int a = Convert.ToInt32(Request.QueryString["Item_Id"]);

        //}
    
    }
}