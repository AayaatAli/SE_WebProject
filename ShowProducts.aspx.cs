using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class ShowProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductRptr();
            }

        }

        private void BindProductRptr()
        {
            Sql sql_ = new Sql();
            DataTable dt = Sql.fillDataTable("select * from dbo.Product");
            rptrProduct.DataSource = dt;
            rptrProduct.DataBind();
        }
    }
}