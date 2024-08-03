using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Registerconnection"].ConnectionString;

                if(!productimg.HasFile)
                {
                    lblErrormessage.Text = "Upload the image";
                    return;
                }
                string filepath = "~\\fileupload\\" + productimg.FileName;
                FileInfo f = new FileInfo(filepath);
                if(f.Extension!=".jpeg"&& f.Extension!=".jpg") 
                {
                    lblErrormessage.Text = "File extention should be .jpeg and jpg formt only";
                    return;
                }
                productimg.PostedFile.SaveAs(Server.MapPath(filepath));
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    string Sqlquery = "usp_addproduct";
                    cmd.CommandText = Sqlquery;
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@pro_name", txtproductname.Text);
                    cmd.Parameters.AddWithValue("@pro_cate", txtproductcategory.Text);
                    cmd.Parameters.AddWithValue("@pro_mrp", txtproductmrp.Text);
                    cmd.Parameters.AddWithValue("@pro_price", txtproductprice.Text);
                    cmd.Parameters.AddWithValue("@pro_decs", txtproductdesc.Text);
                    cmd.Parameters.AddWithValue("@pro_img", filepath);
                    int result = cmd.ExecuteNonQuery();
                    if(result>0)
                    {
                        lblErrormessage.Text = "insert succesfull";
                        GridViewaddproduct.DataBind();
                    }
                    else
                    {
                        lblErrormessage.Text = "Insert fail,try again";
                    }


                }

            }
            catch(SqlException ex)
            {
                lblErrormessage.Text = ex.Message;
            }
            catch(Exception ex)
            {
                lblErrormessage.Text = ex.Message;
            }


        }

    }
}