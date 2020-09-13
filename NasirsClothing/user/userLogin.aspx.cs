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
    public partial class userLogin : System.Web.UI.Page
    {

        //Connection to our Database 
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");
        int tot = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the database
            cmd.CommandText = "select * from registration where email='"+ txtEmail.Text +"' and password='"+ txtPassword.Text +"'";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            tot = Convert.ToInt32(dt.Rows.Count.ToString());

            if (tot > 0)
            {
                if (Session["checkoutbutton"] == "yes")
                {
                    Session["user"] = txtEmail.Text;
                    Response.Redirect("update_order_details.aspx");
                }
                else
                {
                    Session["user"] = txtEmail.Text;
                    Response.Redirect("order_details.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Invalid Username or Password";
            }

            //Close Connection
            con.Close();
        }
    }
}