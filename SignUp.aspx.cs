using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_signUp_ServerClick(object sender, EventArgs e)
        {


            if (nametxt.Text != "" && unametxt.Text != "" && emailtxt.Text != "" && pwdtxt.Text != "" && confirm_pwd.Text != "")
            {
                if (pwdtxt.Text == confirm_pwd.Text)
                {
                    DataTable dt = Sql.fillDataTable("insert into dbo.Users ([name],[userName],[email],[password],[userType]) values ('" + nametxt.Text + "','" + unametxt.Text + "','" + emailtxt.Text + "','" + pwdtxt.Text + "','U')");
                    //success_lbl.Text = "Registration Successfull";
                    Response.Redirect("Login.aspx");

                }
                else
                {
                    error_lbl.Text = "Passwords don't match";
                }

            }
            else
            {
                error_lbl.Text = "All Fields are Mandatory";
            }
        }


    }
}