using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_logIn_ServerClick(object sender, EventArgs e)
        {


            try
            {
                //Logs.printLogs("hello");
                //_logg.Info("In buttonClick");
                Sql sql_ = new Sql();
                DataTable dt = Sql.fillDataTable("select  * from dbo.Users where [userName] ='" + unametxt.Text + "' and [password] ='" + pwdtxt.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    string Utype = dt.Rows[0][5].ToString();
                    if (Utype == "U")
                    {
                        Response.Redirect("Home.aspx");
                     


                    }
                    if (Utype == "A")
                    {
                        Response.Redirect("AdminHome.aspx");

                    }


                    //adding new code
                    //Session["userID"] = dt.Rows[0]["userID"].ToString();
                    //var x = Session["userID"];
                    //Session["userName"] = TextBox1.Text;
                    //Session["Pwd"] = TextBox2.Text;


                }
                else
                {
                    lblError.Text = "Invalid User name or password";
                    return;
                }
                //_logg.Debug("In buttonClick debug");
                //var test = dt.Rows[0][0].ToString();


            }
            //catch (NullReferenceException)
            catch (Exception ex)
            {
                lblError.Text = "Somethikng went wrong!";
                //_logg.Error(ex.Message, ex);
                //Logs.printLogs(ex.Message);
                //ex.Message;
                //Console.WriteLine("Invalid email or password");

            }
        }
    }
}