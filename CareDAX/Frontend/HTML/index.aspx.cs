using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareDAX.Frontend.HTML
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //Guardar el usuario para usarlo en cualquier aspx

            Session["Usuario"] = TextBox1.Text;
            //Navegar al aspx "Principal.aspx"
            Response.Redirect("Principal.aspx");
        }

        protected void btnPTS_Click(object sender, EventArgs e)
        {
            //Guardar el usuario para usarlo en cualquier aspx

            Session["Usuario"] = TextBox1.Text;
            //Navegar al aspx "Puntuacion.aspx"
            Response.Redirect("Puntuacion.aspx");
        }
    }
}