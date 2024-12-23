/*
* PAGE: Registration.aspx.cs
* PROGRAMMER: Ramya Perumalla
* LAST UPDATED: 11/11/2024
* DESCRIPTION: This page allows users to register by entering their first name, last name, and year hired.
* The data is then inserted into the database after validation, and upon successful registration, 
* the user is redirected to a success page.
*/

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class _new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
       * btnSubmit_Click: This event is triggered when the "Submit" button is clicked.
       * It establishes a connection to the database and attempts to insert the provided user data 
       * (first name, last name, and year hired) into the appropriate table.
       * After a successful registration, the user is redirected to a success page. 
       * If an error occurs, an error message is displayed to the user.
       */

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Create a connection using the connection string from the web.config file
            SqlConnection connReg = new SqlConnection(SqlDataSource1.ConnectionString);

            try
            {
                // Open the connection to the database
                connReg.Open();

                // SQL query to check if the email already exists
                string checkEmailQuery = "SELECT COUNT(*) FROM Logins WHERE User_Email = @User_Email";
                SqlCommand cmdCheck = new SqlCommand(checkEmailQuery, connReg);
                cmdCheck.Parameters.AddWithValue("@User_Email", txtEmail.Text);

                // Execute the query to see if email already exists
                int emailExists = (int)cmdCheck.ExecuteScalar();

                if (emailExists > 0)
                {
                    // Email already exists, show error message
                    lblMessage.Text = "User with this email already exists.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    // Email doesn't exist, proceed with registration

                    // Create a SQL command with the insert command from the DataSource control 
                    SqlCommand cmdInsert = new SqlCommand(SqlDataSource1.InsertCommand, connReg);
                    cmdInsert.Parameters.AddWithValue("@User_Email", txtEmail.Text);
                    cmdInsert.Parameters.AddWithValue("@User_FName", txtFirstName.Text);
                    cmdInsert.Parameters.AddWithValue("@User_lName", txtLastName.Text);
                    cmdInsert.Parameters.AddWithValue("@User_YOB", txtYOB.Text);
                    cmdInsert.Parameters.AddWithValue("@User_Pass", txtConfirmPassword.Text);

                    // Execute the insert command
                    cmdInsert.ExecuteNonQuery();

                    // Redirect the user to the success page
                    Response.Redirect("RegSuccess.aspx");
                }
            }
            catch (Exception ex)
            {
                // Display any error messages in the lblMessage label on the page
                lblMessage.Text = ex.Message;
            }
            finally
            {
                // Close the database connection
                connReg.Close();
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}