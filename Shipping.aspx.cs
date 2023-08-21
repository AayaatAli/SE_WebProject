using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class Shipping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Value != "" && txtLastName.Value != "" && txtAddress.Value != "" && txtCity.Value != "" && txtPhoneNo.Value != "" && txtEmail.Value != "")
            {

                DataTable dt = Sql.fillDataTable("insert into dbo.ShippingDetails ([F_Name],[L_Name],[C_address],[C_state],[City],[PhoneNo],[Email]) values ('" + txtFirstName.Value + "','" + txtLastName.Value + "','" + txtAddress.Value + "','" + txtState.Value + "','" + txtCity.Value + "','" + txtPhoneNo.Value + "','" + txtEmail.Value + "')");

                Response.Redirect("Confirmation.aspx");
            }
            else
            {
                Lbl1.Text = "All Fields are Mandatory";
            }





        }
    }
}