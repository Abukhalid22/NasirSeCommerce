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
    public partial class Display_Products : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from product_category";
            //Execute the nonquery
            cmd1.ExecuteNonQuery();
            //create a datatable instance
            DataTable dt1 = new DataTable();
            //create a sql dataAdapter instance
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //add or refresh rows in the database
            da1.Fill(dt1);
            dd.DataSource = dt1;
            dd.DataBind();


            con.Close();


            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            if (Request.QueryString["category"] == null)
            {
                cmd.CommandText = "select * from product";
            }
            else
            {
                cmd.CommandText = "select * from product where product_category='"+ Request.QueryString["category"].ToString() + "'";
            }

            //if user did not click on a category and user clicks on the search text box
            if (Request.QueryString["category"] == null && Request.QueryString["search"] != null)
            {
                //If there are any searches made that is similar to the job name then display it
                cmd.CommandText = "select * from product where product_name like('%" + Request.QueryString["search"].ToString() + "%')";
            }


            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //create a datatable instance
            DataTable dt = new DataTable();
            //create a sql dataAdapter instance
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //add or refresh rows in the database
            da.Fill(dt);
            //display the data to the repeater tag
            rptMain.DataSource = dt;
            rptMain.DataBind();

            //close connection
            con.Close();

        }
    }
}