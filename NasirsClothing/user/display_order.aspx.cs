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
    public partial class display_order : System.Web.UI.Page
    {
        //Connection to our Database 
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("userLogin.aspx");
            }

            //Open Connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the Add_Jobs database
            cmd.CommandText = "select * from orders where email='"+ Session["user"].ToString() +"'";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //create a datatable instance
            DataTable dt = new DataTable();
            //create a sql dataAdapter instance
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //add or refresh rows in the database
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();

            //Close Connection
            con.Close();
        }
    }
}