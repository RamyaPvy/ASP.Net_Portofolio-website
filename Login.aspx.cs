/*
* PAGE: Login.aspx.cs
* PROGRAMMER: Ramya Perumalla
* LAST UPDATED: 11/3/2024
* DESCRIPTION: This code handles the login functionality of the application by verifying
* the user's input credentials against the stored database values. If the credentials match,
* the user is redirected to a success page; otherwise, an error message is displayed.
*/


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace project1
{
    public partial class Login : System.Web.UI.Page
    {
        // Page_Load: Executes when the page loads. This event can be used to set up page data 
        // or control page behavior on initial load. In this case, it’s not performing any specific action.
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        // btnLogin_Click: Triggered when the user clicks the "Login" button. This method checks the
        // entered username and password against the database records to confirm valid credentials.
        protected void btnLogin_Click(object sender, EventArgs e)
        {//create and populate variables for good userID and password
            string strUser = "";
            string strPwd = "";
            string strUserName = "";
            string username = "";

            //create a sqlDataReader
            SqlDataReader drUserLogin = null;

            //create sqlconnection and set its connectionstring to the connectionstring
            //in the sqldatasource
            SqlConnection connLogin = new SqlConnection(dsLogin.ConnectionString);

            /*create the sqlcommand and configure its connection property
             * (set to the connection we just created) the SQL command
             * (in the sqlDataSource) and declare the parameters
             * (that we declared in the sqlDataSource*/


            //instantianting a new sqlcommand and setting the commandtext property to
            //the select command propert of the sqlDataSource
            SqlCommand cmdLogin = new SqlCommand(dsLogin.SelectCommand);


            //setting the connection propert of the command to the new connection I created
            cmdLogin.Connection = connLogin;

            //setting the parameters and where to get the values
            cmdLogin.Parameters.AddWithValue("@User_Email", txtUserID.Text);
            cmdLogin.Parameters.AddWithValue("@User_Pass", txtPassword.Text);

            //open the connection to the database
            connLogin.Open();

            //execute the command and set the reader's value to the output
            drUserLogin = cmdLogin.ExecuteReader(CommandBehavior.CloseConnection);


            //use a while Loop to go through the datareader and pull out values for 
            //the variables we declared in the beginning
            while (drUserLogin.Read())
            {
                //Populate email variable with index 0
                strUser = drUserLogin.GetString(0).Trim();
                //populate pwd variable with index 1
                strPwd = drUserLogin.GetString(1).Trim();
                //populate user name variable with index 2 + 3
                strUserName = drUserLogin.GetString(2).Trim() + " " + drUserLogin.GetString(3).Trim();

            }

            //Close the connection
            connLogin.Close();

            //logical test to see if correct credentials were entered
            if (txtUserID.Text == strUser && txtPassword.Text == strPwd)
            {
                //correct credentials
                //create and populate session variable
                Session["Validate"] = strUserName;
                Session["Username"] = strUser;
                //go to success page
                Response.Redirect("Success.aspx");
            }
            else
            {
                //bad credentials
                //show error message
                lblMessage.Text = "Incorrect User ID or Password";

            }

        }
        protected void txtUserID_TextChanged(object sender, EventArgs e)
        {
            // Your logic here (if needed)
        }
    }
}


   
