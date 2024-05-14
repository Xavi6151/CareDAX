using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareDAX.Frontend.HTML
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if(TextBox2.Text.Length == 0 || TextBox3.Text.Length == 0 || TextBox4.Text.Length == 0 || TextBox5.Text.Length == 0)
            {
                lblMensajeError.Text = "No dejes campos vacíos";
                lblMensajeError.Visible = true;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "HideMessage", "setTimeout(function() { document.getElementById('" + lblMensajeError.ClientID + "').style.display = 'none'; }, 5000);", true);
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

    }
}