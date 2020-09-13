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
    public partial class add_product : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        //Declare a and b variables
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }

            if (IsPostBack) return;

            ddl1.Items.Clear();

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
            foreach (DataRow dr in dt.Rows)
            {
                ddl1.Items.Add(dr["product_category"].ToString());
            }
            //Close Connection
            con.Close();

        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            //Use clsRandomiser class to generate 10 random digit numbers  
            a=Class1.GetRandomPassword(10).ToString();
            fldProductImage.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + fldProductImage.FileName.ToString());

            //this variable allows the image to be added into the database through using the path
            b = "images/" + a + fldProductImage.FileName.ToString();

            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the Product database
            cmd.CommandText = "insert into product values('" + txtProductName.Text + "','" + txtProductDescription.Text + "','" + txtProductPrice.Text + "','" + txtProductQty.Text + "','" + b.ToString() + "','" + ddl1.SelectedItem.ToString() + "')";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //Close Connection
            con.Close();


            txtProductName.Text = "";
            txtProductDescription.Text = "";
            txtProductPrice.Text = "";
            txtProductQty.Text = "";


            lblMessage.Text = "Product Added Succesfully";

        }
    }
}