using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NasirsClothing.user
{
    public partial class user : System.Web.UI.MasterPage
    {

        string s;
        //declare t variable
        string t;
        //declare an array variable
        string[] a = new string[6];
        int tot = 0;
        int totcount = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
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
                   
                    tot = tot + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[3].ToString()));
                    totcount = totcount + 1;

                    lblCartTotItem.Text = totcount.ToString();
                    lblCartTotPrice.Text = tot.ToString();

                }

            } 
        }
    }
}