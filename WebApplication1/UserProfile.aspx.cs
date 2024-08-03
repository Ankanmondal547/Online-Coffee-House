using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.user
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["Registerconnection"].ConnectionString;
        string str;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["userlogin"] != null)
            { 
                string connectionstring = ConfigurationManager.ConnectionStrings["Registerconnection"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    SqlConnection con = new SqlConnection(strConnString);
                    con.Open();
                    str = "select Name,Email,Mobile from register where Email='" + Session["userlogin"].ToString() + "'";
                    com = new SqlCommand(str, con);
                    SqlDataReader reader = com.ExecuteReader();

                    reader.Read();
                    Label1.Text = reader["Name"].ToString();
                    Label2.Text = reader["Email"].ToString();
                    Label3.Text = reader["Mobile"].ToString();

                    reader.Close();
                    con.Close();
                }
            }

        }
    }
}