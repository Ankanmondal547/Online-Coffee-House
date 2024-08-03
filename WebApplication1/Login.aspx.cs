using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        private object logpassword;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_login(object sender, EventArgs e)
        {
            try
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["Registerconnection"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    string sqlQuery = "usp_Login";
                    cmd.CommandText = sqlQuery;
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Emailid", logemail.Text);
                    cmd.Parameters.AddWithValue("@Pass", logpass.Text);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        if (dr["Role"].ToString()== "Customer")
                        {
                            Session["userlogin"] = logemail.Text;
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            Response.Redirect("~\\Admin\\admin.aspx");
                        }
                    }
                    else
                    {
                        loginerror.Text = "Invalid userid and password , please try again";
                    }
                    conn.Close();
                }
            }
            catch (SqlException ex)
            {
                loginerror.Text = ex.Message;
            }
            catch (Exception ex)
            {
                loginerror.Text = ex.Message;
            }

        }

    }
}