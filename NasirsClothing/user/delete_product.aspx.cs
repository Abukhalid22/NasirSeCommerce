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
    public partial class delete_product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        //declare s variable
        string s;
        //declare t variable
        string t;
        //declare an array variable
        string[] a = new string[6];
        //declare an id variable
        int id;
        //Declare Add_Job database coloumns variables
        string product_name, product_desc, product_price, product_qty, product_images;
        //declare an count variable with a value
        int count = 0;
        int product_id, qty;


        protected void Page_Load(object sender, EventArgs e)
        {

            //Declare the id vlaue
            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            //create a datatable instance
            DataTable dt = new DataTable();
            //clear datatable rows
            dt.Rows.Clear();
            //create a temporary data coloumn tables so that cookies data's could be stored on to the data coloumn table
            dt.Columns.AddRange(new DataColumn[7] { new DataColumn("product_name"), new DataColumn("product_desc"), new DataColumn("product_price"), new DataColumn("product_qty"), new DataColumn("product_images"), new DataColumn("id"), new DataColumn("product_id") });

            //If there is cookies in the system 
            if (Request.Cookies["aa"] != null)
            {
                //the cookies is stored in the s variable
                s = Convert.ToString(Request.Cookies["aa"].Value);
                //the records are split using the Pipe sign
                string[] strArr = s.Split('|');

                //for loop to split the records using the comma sign
                for (int i = 0; i < strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());
                    string[] strArr1 = t.Split(',');
                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        //the record is stored in an array variable
                        a[j] = strArr1[j].ToString();
                    }
                    //the array variable value is passed on to the datatable
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(), i.ToString(), a[5].ToString());
                }
            }


            count = 0;
            foreach (DataRow dr in dt.Rows)
            {
                if (count == id)

                {
                    product_id = Convert.ToInt32(dr["product_id"].ToString());
                    qty = Convert.ToInt32(dr["product_qty"].ToString());
                }
                count = count + 1;
            }

            count = 0;

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update product set product_qty=product_qty+" + qty + "where id=" + product_id;
            cmd.ExecuteNonQuery();
            con.Close();


            //remove record from the datatable
            dt.Rows.RemoveAt(id);

            //clear cookies
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
            //clear cookies
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);

            //for loop table where the values are taken from the datatable and are stored in the variables
            foreach (DataRow dr in dt.Rows)
            {
                product_name = dr["product_name"].ToString();
                product_desc = dr["product_desc"].ToString();
                product_price = dr["product_price"].ToString();
                product_qty = dr["product_qty"].ToString();
                product_images = dr["product_images"].ToString();
                product_id = Convert.ToInt32(dr["product_id"].ToString());

                count = count + 1;

                if (count == 1)
                {
                    //create aa cookies and add cookies into the system from the database seperating them with comma
                    Response.Cookies["aa"].Value = product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," + product_qty.ToString() + "," + product_images.ToString() + "," + product_id.ToString();
                    //clear cookies every 24 hours
                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    //request the cookies and devide them with pipe sign
                    Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," + product_qty.ToString() + "," + product_images.ToString() + "," + product_id.ToString();
                    //clear cookies every 24 hours
                    Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                }
            }
            //redirect page to View_Jobs page
            Response.Redirect("view_cart.aspx");
        }

        }
    }
