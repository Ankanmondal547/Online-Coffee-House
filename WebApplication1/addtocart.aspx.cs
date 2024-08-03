using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.Add_Cart
{
    public partial class addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Session["addproduct"].ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pro_id");
                dt.Columns.Add("pro_name");
                dt.Columns.Add("pro_image");
                dt.Columns.Add("pro_price");



                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-SFB3UMS;Initial Catalog=Register;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from addproduct where pro_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["pro_id"] = ds.Tables[0].Rows[0]["Pro_id"].ToString();
                        dr["pro_name"] = ds.Tables[0].Rows[0]["pro_name"].ToString();
                        dr["pro_image"] = ds.Tables[0].Rows[0]["pro_image"].ToString();
                        dr["pro_price"] = ds.Tables[0].Rows[0]["pro_price"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Session["addproduct"]=dt;
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-SFB3UMS;Initial Catalog=Register;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from addproduct where pro_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["pro_id"] = ds.Tables[0].Rows[0]["Pro_id"].ToString();
                        dr["pro_name"] = ds.Tables[0].Rows[0]["pro_name"].ToString();
                        dr["pro_image"] = ds.Tables[0].Rows[0]["pro_image"].ToString();
                        dr["pro_price"] = ds.Tables[0].Rows[0]["pro_price"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;

                    }
                }


            }
            else
            {

                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();



            }

            if (Session["userlogin"]!=null)
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                String mycon = "Data Source=DESKTOP-SFB3UMS;Initial Catalog=Register;Integrated Security=True";
                SqlConnection scon = new SqlConnection(mycon);
                String myquery = "insert into tblCart([proid], [proprice], [userid], [dateNdtime]," +
                    " [is_active]) values(@proid ,@proprice,@userid,@dateNdtime,@is_active )";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = scon;
                cmd.CommandText=myquery;
                for(int i=0;i>dt.Rows.Count;i++)
                {
                    cmd.Parameters.AddWithValue("proid", dt.Rows[i]["pro_id"].ToString());
                    cmd.Parameters.AddWithValue("proprice", dt.Rows[i]["proprice"].ToString());

                    cmd.Parameters.AddWithValue("userid", Session["userlogin"].ToString());

                    cmd.Parameters.AddWithValue("dateNdtime", DateTime.Now.ToString());
                    cmd.Parameters.AddWithValue("is_active", 1);               

                    int index = cmd.ExecuteNonQuery();

                }


            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          if(  Session["userlogin"] != null)
            {
                Response.Redirect("deliverypage.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}