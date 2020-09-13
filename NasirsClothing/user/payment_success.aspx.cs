using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace NasirsClothing.user
{
    public partial class payment_success : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");
        string order = "";
        string order_id;
        //declare s variable
        string s;
        //declare t variable
        string t;
        //declare an array variable
        string[] a = new string[6];

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            order = Request.QueryString["order"].ToString();

            if (order == Session["order_no"].ToString())
            {
                //this is for getting user detailsand storing it on order_ details table 
                //Create and return SqlCommand
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                //Write a query that gets everything from the Add_Jobs database so they could be displayed
                cmd.CommandText = "select * from registration where email='" + Session["user"].ToString() + "'";
                //Execute the nonquery
                cmd.ExecuteNonQuery();
                //create a datatable instance
                DataTable dt = new DataTable();
                //create a sql dataAdapter instance
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //add or refresh rows in the database
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    //Create and return SqlCommand
                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    //Write a query that gets everything from the Add_Jobs database so they could be displayed
                    cmd1.CommandText = "insert into orders values('" + dr["firstname"].ToString() + "','" + dr["lastname"].ToString() + "','" + dr["email"].ToString() + "','" + dr["address"].ToString() + "','" + dr["city"].ToString() + "','" + dr["state"].ToString() + "','" + dr["pincode"].ToString() + "','" + dr["mobile"].ToString() + "')";
                    //Execute the nonquery
                    cmd1.ExecuteNonQuery();
                }

                //end storing user details

                //get orders id from orders table

                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                //Write a query that gets everything from the Add_Jobs database so they could be displayed
                cmd2.CommandText = "select top 1 * from orders where email='" + Session["user"].ToString() + "' order by id desc ";
                //Execute the nonquery
                cmd2.ExecuteNonQuery();
                //create a datatable instance
                DataTable dt2 = new DataTable();
                //create a sql dataAdapter instance
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                //add or refresh rows in the database
                da2.Fill(dt2);
                foreach (DataRow dr2 in dt2.Rows)
                {
                    order_id = dr2["id"].ToString();
                }

                //ending of getting order id 

                //get ordered items from cookies


                if (Request.Cookies["aa"] != null)
                {
                    s = Convert.ToString(Request.Cookies["aa"].Value);
                    string[] strArr = s.Split('|');
                    for (int i = 0; i < strArr.Length; i++)
                    {
                        t = Convert.ToString(strArr[i].ToString());
                        string[] strArr1 = t.Split(',');
                        for (int j = 0; j < strArr1.Length; j++)
                        {
                            a[j] = strArr1[j].ToString();
                        }

                        SqlCommand cmd3 = con.CreateCommand();
                        cmd3.CommandType = CommandType.Text;
                        //Write a query that gets everything from the Add_Jobs database so they could be displayed
                        cmd3.CommandText = "insert into order_details values('" + order_id.ToString() + "','" + a[0].ToString() + "','" + a[2].ToString() + "','" + a[3].ToString() + "','" + a[4].ToString() + "')";
                        //Execute the nonquery
                        cmd3.ExecuteNonQuery();

                    }
                }

                //end of getting items from cookies

            }
            else
            {
                Response.Redirect("userLogin.aspx");
            }

            con.Close();

            Session["user"] = "";
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);

            Response.Redirect("Display_Products.aspx");

        }
    }
}