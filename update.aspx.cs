using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using System.Xml.Linq;
namespace project1
{
    public partial class update : System.Web.UI.Page
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
                            // Populate the textboxes with user details
                            txtFirstName.Text = reader["User_FName"].ToString();
                            txtLastName.Text = reader["User_LName"].ToString();
                            txtYear.Text = reader["User_YOB"].ToString();
                            txtPassword.Text = reader["User_Pass"].ToString();
                            lblEmail.Text = Email; // Display the email (not editable)
                        }
                        reader.Close();
                    }
                }
            }

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            //GetDataItem strings that concatenate to txt variables

            string FirstName = txtFirstName.Text;
            string LastName = txtLastName.Text;
            string year = txtYear.Text;
            string Email = Session["Username"].ToString();
            string LPassword = txtPassword.Text;

            //Update Server connection string on valid credentials 
            string ServerConnectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=5680Labs;Persist Security Info=True;User ID=GradStudent;Password=Bc!s5680";
            //Insert Query for Login
            string UpdateQuery = "UPDATE LOGINS SET User_FName = @FirstName," +
                " User_LName = @LastName, User_YOB = @year, User_Pass = @LPassword" +
                " WHERE User_Email = @Email";

            //create server connection 
            using (SqlConnection ServerConnection = new SqlConnection(ServerConnectionString))
            {
                using (SqlCommand UpdateCommand = new SqlCommand(UpdateQuery, ServerConnection))

                {
                    UpdateCommand.Parameters.AddWithValue("@FirstName", FirstName);
                    UpdateCommand.Parameters.AddWithValue("@LastName", LastName);
                    UpdateCommand.Parameters.AddWithValue("@year", year);
                    UpdateCommand.Parameters.AddWithValue("@Email", Email);
                    UpdateCommand.Parameters.AddWithValue("@LPassword", LPassword);

                    //open server connection 
                    ServerConnection.Open();
                    int rowsAffected = UpdateCommand.ExecuteNonQuery();
                    //If data is updataed at level of count
                    if (rowsAffected > 0)
                    {
                        // Update successful labelling it, label it and redirect to the Login page 
                        Response.Redirect("UpdatedDetails.aspx");
                    }

                }
            }
        }
    }
}
