using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_contact_ServerClick(object sender, EventArgs e)
        {
            DataTable dt = Sql.fillDataTable("insert into dbo.Contact ([Name],[Email],[Phone_no],[Message]) values ('" + name_tb.Text + "','" + email_tb.Text + "','" + phone_tb.Text + "','" + msg_tb.Text + "')");

        }
    }
}