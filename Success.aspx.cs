using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Validate"] == null)
            {
                // If authenticated, display the user's name in the lblWelcome label
                Response.Redirect("Login.aspx");

            }
            else
            {
                // If the session is null (user not logged in), redirect back to the login page
                lblWelcome.Text = "Welcome, " + Session["Username"].ToString() + "!";
                //Response.Redirect("Login.aspx");
            }



        }
    }
}