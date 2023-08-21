using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class ShowCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategoryRptr();
            }


        }

        private void BindCategoryRptr()
        {
            Sql sql_ = new Sql();
            DataTable dt = Sql.fillDataTable("select * from dbo.Category");
            rptrCategory.DataSource = dt;
            rptrCategory.DataBind();
        }
    }
}