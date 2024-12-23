using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class DeleteSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void delete_Pass(object sender, EventArgs e)
        {
            // Clear the session or any authentication data
            Session.Clear();  // Clears all session data
            Session.Abandon();  // Ends the session

            // Redirect to the login page (or wherever you want)
            Response.Redirect("Login.aspx");
        }
    }
}