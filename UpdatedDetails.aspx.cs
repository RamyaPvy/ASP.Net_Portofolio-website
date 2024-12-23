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
    public partial class UpdatedDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx"); // Redirect to login page if not authenticated
            }

            if (!IsPostBack)
            {
                // Load user details when the page first loads
                // Get the user's email from the session
                string Email = Session["Username"].ToString();

                // Database connection string
                string constring = ConfigurationManager.ConnectionStrings["5680LabsConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(constring))
                {
                    // SQL query to fetch user details
                    string query = "SELECT User_Email,User_Pass,User_FName,User_LName,User_YOB FROM LOGINS WHERE User_Email = @Email";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Email", Email);
                        connection.Open();

                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            //fill all the details into the update page
                            lblFName.Text = reader["User_FName"].ToString();
                            lblLName.Text = reader["User_LName"].ToString();
                            lYob.Text = reader["User_YOB"].ToString();
                            lblPass.Text = reader["User_Pass"].ToString();
                            lblEmail.Text = Session["Username"].ToString();
                        }
                        reader.Close();
                    }
                }
            }
        }
    }
}