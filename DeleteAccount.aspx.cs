/*
* PAGE: DeleteAccount.aspx.cs
* PROGRAMMER: RAmya Perumalla
* LAST UPDATED: 12/02/2024
* DESCRIPTION: This page allows users to delete their accounts by verifying their email address
* and executing a delete operation on the database if the email matches the session data.
*/

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class DeleteAccount : System.Web.UI.Page
    {
        /*
        * Page_Load: This event checks if the user is logged in by verifying the "userName"
        * session variable. If the session variable is null, the user is redirected to the Login.aspx page.
        */
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"]?.ToString() == null)
            {
                // Redirect the user to the login page if they are not authenticated
                Response.Redirect("Login.aspx");
            }
        }

        /*
        * delete_Pass: This event is triggered when the delete button is clicked.
        * It checks if the email entered by the user matches the email stored in the session variable.
        * If it matches, the account is deleted from the database, and the user is redirected to a success page.
        * If it doesn't match, an error message is displayed.
        */
        protected void delete_Pass(object sender, EventArgs e)
        {
            try
            {
                // Convert session and user input email to lowercase and trim for consistent comparison
                String session_text = Session["Username"].ToString().Trim().ToLower();
                String user_text = usernameValidate.Text.Trim().ToLower();

                if (session_text == user_text)
                {
                    // Open a connection to the database
                    SqlConnection consql = new SqlConnection(dsInsert.ConnectionString);
                    consql.Open();

                    // Create a SQL command for the delete operation
                    SqlCommand commandSql = new SqlCommand(dsInsert.DeleteCommand);
                    commandSql.Connection = consql;

                    // Add the user email as a parameter to the delete query
                    commandSql.Parameters.AddWithValue("@User_Email", session_text);

                    // Execute the delete query and check if rows were affected
                    var flag = commandSql.ExecuteNonQuery();

                    if (flag > 0)
                    {
                        // Redirect to success page if the account was successfully deleted
                        Response.Redirect("DeleteSuccess.aspx");
                        Response.End();
                    }

                    // Close the database connection
                    consql.Close();
                }
                else
                {
                    // Display an error message if the emails do not match
                    labelerr.Text = "Email doesn't match! Please try again";
                }
            }
            catch (Exception ex)
            {
                // Display an error message if an exception occurs
                labelerr.Text = ex.Message;
            }
        }
    }
}
