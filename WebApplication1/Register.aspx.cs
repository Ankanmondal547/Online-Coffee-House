using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;

namespace WebApplication1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionstring= ConfigurationManager.ConnectionStrings ["Registerconnection"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    string sqlQuery = "usp_Register";
                    cmd.CommandText = sqlQuery;
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Fname", txtfirstname.Text);
                    cmd.Parameters.AddWithValue("@Pass", txtpassword.Text);
                    cmd.Parameters.AddWithValue("@Cpass", txtConfirmpassword.Text);
                    cmd.Parameters.AddWithValue("@EmailId", txtemail.Text);
                    cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text);
                    int result = (int)cmd.ExecuteScalar();
                    if (result == 2)
                    {

                        Label1.Text = "This email already exist, Please provide unique emailid";
                    }
                    else if (result > 0)
                    {
                        Label1.Text = "Inset Successfull - Now Go to Login";
                    }
                    else
                    {
                        Label1.Text = "Inset Fail, try again";
                    }
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}