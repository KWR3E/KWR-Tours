using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projet_voiture
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request["Email"] == "admin@gmail.com" && Request["Password"] == "12345")
            {
                Response.Redirect("EspaceAdmin.aspx");
            }
            else
            {
                if (Request["Email"] != "" && Request["Password"] != "")
                    Label1.Text = "Mot de passe ou Email incorrecte!";
            }
        }
    }
}