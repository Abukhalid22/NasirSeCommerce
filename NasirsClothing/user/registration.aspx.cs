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
    public partial class registration : System.Web.UI.Page
    {
        //Connection to our Database location
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Husse\Desktop\NasirsClothingWebsite\NasirsClothing\NasirsClothing\App_Data\NasirsClothing.mdf;Integrated Security=True");

        //Declare a and b variables
        string a, b;

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            ////Use clsRandomiser class to generate 10 random digit numbers  
            //a = Class1.GetRandomPassword(10).ToString();
            ////declare the path where the image can be saved and fetched from
            //fldJobImage.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + fldJobImage.FileName.ToString());
            ////this variable allows the image to be added into the database through using the path
            //b = "images/" + a + fldJobImage.FileName.ToString();



            //Open connection
            con.Open();
            //Create and return SqlCommand
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //Write a query that adds inserted fields into the database
            cmd.CommandText = "insert into registration values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtPinCode.Text + "','" + txtPhoneNumber.Text + "')";
            //Execute the nonquery
            cmd.ExecuteNonQuery();
            //Close Connection
            con.Close();

            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtPinCode.Text = "";
            txtPhoneNumber.Text = "";
            

            lblMessage.Text = "Registration was Successful";
        }

    }
}