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
    public partial class update_order_details : System.Web.UI.Page
    {
        //Connection to our Database 
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("userLogin.aspx");
            }

            if (IsPostBack)
            {
                return;
            }

            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that gets everything from the registration database so they could be displayed
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
                txtFName.Text = dr["firstname"].ToString();
                txtLastName.Text = dr["lastname"].ToString();
                txtAddress.Text = dr["address"].ToString();
                txtCity.Text = dr["city"].ToString();
                txtState.Text = dr["state"].ToString();
                txtPhoneNumber.Text = dr["mobile"].ToString();
                
            }
            //close connection
            con.Close();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that gets everything from the registration database so they could be displayed
            cmd.CommandText = "update registration set firstname='" + txtFName.Text + "', lastname='" + txtLastName.Text + "', address='" + txtAddress.Text + "', city='" + txtCity.Text + "', state='" + txtState.Text + "', mobile='" + txtPhoneNumber.Text + "' where email='" + Session["user"].ToString() + "'";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //close connection
            con.Close();

            Response.Redirect("payment_gateway.aspx");
        }
    }
}