using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace NasirsClothing.admin
{
    public partial class Delete : System.Web.UI.Page
    {

        string category;
        //Connection to our Database location
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            category = Request.QueryString["category"].ToString();
            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the product category database
            cmd.CommandText = "delete from product_category where product_category = '" + category.ToString() + "'";
            //Execute the nonquery
            cmd.ExecuteNonQuery();


            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the product database
            cmd1.CommandText = "delete from product where product_category = '" + category.ToString() + "'";
            //Execute the nonquery
            cmd1.ExecuteNonQuery();

            con.Close();

            Response.Redirect("add_category.aspx");
        }
    }
}