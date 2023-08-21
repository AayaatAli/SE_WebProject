using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategory();
                //BindProductRptr();
            }
        }

        //private void BindProductRptr()
        //{
        //    Sql sql_ = new Sql();
        //    DataTable dt = Sql.fillDataTable("select * from dbo.Product");
        //    rptrProduct.DataSource = dt;
        //    rptrProduct.DataBind();
        //}

        private void BindCategory()
        {
            Sql sql_ = new Sql();
            DataTable dt = Sql.fillDataTable("select Category_Id,Category_name from dbo.Category");
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "Category_name";
                ddlCategory.DataValueField = "Category_Id";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("Select Category", "0"));



            }
        }
        protected void btn_add_ServerClick(object sender, EventArgs e)
        {

            if (ItemIMG.HasFile)
            {
                Sql sql_ = new Sql();
                DataTable dt = Sql.fillDataTable("select Category_name from dbo.Category where Category_Id="+ ddlCategory.SelectedItem.Value);
                var category = dt.Rows[0][0];
                string savePath = Server.MapPath("~/images/"+ category);
                if (!Directory.Exists(savePath))
                {
                    Directory.CreateDirectory(savePath);
                }
                string extension = Path.GetExtension(ItemIMG.PostedFile.FileName);
                ItemIMG.SaveAs(savePath + "\\" + txt_name.Text.ToString().Trim() + extension);
                string img = "/images/" + category + "/" + txt_name.Text.ToString().Trim() + extension;
                DataTable dt_new = Sql.fillDataTable("insert into dbo.Product ([Item_name],[Item_price],[Item_image],[Category_Id]) values ('" + txt_name.Text + "','" + txt_price.Text + "','" + img + "','" + ddlCategory.SelectedItem.Value + "')");

                txt_name.Text = string.Empty;
                txt_price.Text = string.Empty;
                ddlCategory.ClearSelection();
                ddlCategory.Items.FindByValue("0");

                addProduct.Text = "Successfully Added New Category";


            }






        }
    }
}