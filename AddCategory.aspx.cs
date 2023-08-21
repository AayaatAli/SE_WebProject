using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SE_Project
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BindCategoryRptr();
            }

        }

        //private void BindCategoryRptr()
        //{
        //    Sql sql_ = new Sql();
        //    DataTable dt = Sql.fillDataTable("select * from dbo.Category");
        //    rptrCategory.DataSource = dt;
        //    rptrCategory.DataBind();
        //}

        protected void btn_add_ServerClick(object sender, EventArgs e)
        {
            if (CategoryIMG.HasFile)
            {
                string savePath = Server.MapPath("~/images/categoryImage/");
                if (!Directory.Exists(savePath))
                {
                    Directory.CreateDirectory(savePath);
                }
                string extension = Path.GetExtension(CategoryIMG.PostedFile.FileName);
                CategoryIMG.SaveAs(savePath + "\\" + txt_name.Text.ToString().Trim() + extension);


                string img = "/images/categoryImage/" + txt_name.Text.ToString().Trim() + extension;


                DataTable dt = Sql.fillDataTable("insert into dbo.Category ([Category_name],[image]) values ('" + txt_name.Text + "','"  + img + "')");


                //DataTable dt = Sql.fillDataTable("insert into dbo.Category ([Category_name],[image]) values ('" + txt_name.Text + "','" +txt_name.Text.ToString().Trim()+extension+ "')");
                addCategory.Text = "Successfully Added "+ txt_name.Text +" Category!";

            }
        }
    }
}