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
    public partial class product_description : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");
        int id;
        int qty;

        //Declare Add_Job database coloumns variables
        string product_name, product_desc, product_price, product_qty, product_images;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if id is null
            if (Request.QueryString["id"] == null)
            {
                //redirect the page to display products web page
                Response.Redirect("Display_Products.aspx");
            }
            else
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                //Open connection
                con.Open();
                //Create and return SqlCommand
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from product where id=" + id + "";
                //Execute the nonquery
                cmd.ExecuteNonQuery();
                //create a datatable instance
                DataTable dt = new DataTable();
                //create a sql dataAdapter instance
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //add or refresh rows in the database
                da.Fill(dt);
                //display the data to the repeater tag
                rptMain1.DataSource = dt;
                rptMain1.DataBind();



                //close connection
                con.Close();
            }

            qty = get_qty(id);

            if (qty == 0)
            {
                lblEnterQuantity.Visible = false;
                txtQuantity.Visible = false;
                btnAddToCart.Visible = false;
                lblError.Text = "The product is out of stock";
            }





        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            //open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write query that selects everything from products Database where the id is the same as id
            cmd.CommandText = "select * from product where id=" + id + "";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //create a datatable instance
            DataTable dt = new DataTable();
            //create a sql dataAdapter instance
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //add or refresh rows in the database
            da.Fill(dt);

            //for loop which gets the values from the database and displays them on to the web page 
            foreach (DataRow dr in dt.Rows)
            {
                product_name = dr["product_name"].ToString();
                product_desc = dr["product_desc"].ToString();
                product_price = dr["product_price"].ToString();
                product_qty = dr["product_qty"].ToString();
                product_images = dr["product_images"].ToString();
            }


           

            if (Convert.ToInt32(txtQuantity.Text) > Convert.ToInt32(product_qty))
            {
                lblError.Text = "Please Enter Lower Quantity";

            }
            else
            {
                lblSuccess.Text = "Succesfully added to the shopping cart";
                lblError.Text = "";
                

                //if cookies is null 
                if (Request.Cookies["aa"] == null)
            {
                //create aa cookies and add cookies into the system from the database seperating with comma
                Response.Cookies["aa"].Value = product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," + txtQuantity.Text +  "," + product_images.ToString() + "," + id.ToString();
                //clear cookies every 24 hours
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            //else if there is a cookie that exists in the system already
            else
            {
                //request the cookies and devide them with pipe sign
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," + txtQuantity.Text + "," + product_images.ToString() + "," + id.ToString();
                //clear cookies every 24 hours
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
            
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update product set product_qty=product_qty-" + txtQuantity.Text + "where id=" + id; 
                cmd1.ExecuteNonQuery();

                

                //////redirect the page to View_Jobs page
                Response.Redirect("product_description.aspx?id="+id.ToString());

                
            }

        }


        public int get_qty(int id)
        {
            //open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write query that selects everything from Add_Jobs Database where the JobId is the same as id
            cmd.CommandText = "select * from product where id=" + id + "";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //create a datatable instance
            DataTable dt = new DataTable();
            //create a sql dataAdapter instance
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //add or refresh rows in the database
            da.Fill(dt);

            //for loop which gets the values from the database and displays them on to the web page 
            foreach (DataRow dr in dt.Rows)
            {
                qty = Convert.ToInt32(dr["product_qty"].ToString());
            }

            return qty;

            
        }


    }
}