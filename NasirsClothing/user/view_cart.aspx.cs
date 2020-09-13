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
    public partial class view_cart : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");
        //declare s variable
        string s;
        //declare t variable
        string t;
        //declare an array variable
        string[] a = new string[6];
        int tot = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //create a datatable instance
            DataTable dt = new DataTable();
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
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(),i.ToString(), a[5].ToString());

                    tot = tot + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[3].ToString()));
                }

            }

            //the values are displayed on the datalist tag 
            dtlList.DataSource = dt;
            dtlList.DataBind();

            lblMessage.Text = "The Sub-Total Price is: £"+ tot.ToString();
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Session["checkoutbutton"] = "yes";

            //redirect the page to apply page
            Response.Redirect("checkout.aspx");
        }
    }
}