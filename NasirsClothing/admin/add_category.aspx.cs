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
    public partial class add_category : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }


            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the Add_Jobs database
            cmd.CommandText = "select * from product_category";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dd1.DataSource = dt;
            dd1.DataBind();


        }

        protected void btnAddCat_Click(object sender, EventArgs e)
        {
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the Add_Jobs database
            cmd.CommandText = "insert into product_category values('" + txtCategory.Text + "')";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //Close Connection
            con.Close();

            Response.Write("<script>alert('Product Category has successfully been added');</script>");

            txtCategory.Text = "";
        }
    }
}