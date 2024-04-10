using CareDAX.Backend.Strings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareDAX.Frontend.HTML
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = StringsPrincipal.level_Est1;
            Label1.ForeColor = System.Drawing.Color.FromArgb(25, 153, 0); //Esto pone color de letra
            Label2.Text = StringsPrincipal.level_Est2;
            Label2.ForeColor = System.Drawing.Color.FromArgb(165, 118, 0);
            Label3.Text = StringsPrincipal.level_Est3;
            Label3.ForeColor = System.Drawing.Color.FromArgb(255, 0, 0);

            Label4.Text = StringsPrincipal.level_Ans1;
            Label4.ForeColor = System.Drawing.Color.FromArgb(25, 153, 0);
            Label5.Text = StringsPrincipal.level_Ans2;
            Label5.ForeColor = System.Drawing.Color.FromArgb(165, 118, 0);
            Label6.Text = StringsPrincipal.level_Ans3;
            Label6.ForeColor = System.Drawing.Color.FromArgb(255, 0, 0);

            Label7.Text = StringsPrincipal.level_Dep1;
            Label7.ForeColor = System.Drawing.Color.FromArgb(25, 153, 0); 
            Label8.Text = StringsPrincipal.level_Dep2;
            Label8.ForeColor = System.Drawing.Color.FromArgb(114, 240, 158);
            Label9.Text = StringsPrincipal.level_Dep3;
            Label9.ForeColor = System.Drawing.Color.FromArgb(165, 118, 0);
            Label10.Text = StringsPrincipal.level_Dep4;
            Label10.ForeColor = System.Drawing.Color.FromArgb(210, 111, 0);
            Label11.Text = StringsPrincipal.level_Dep5;
            Label11.ForeColor = System.Drawing.Color.FromArgb(255, 0, 0);

            //Button1.Text= StringsPrincipal.Est;
            //Button2.Text = StringsPrincipal.Ans;
            //Button3.Text = StringsPrincipal.Dep;
            Button4.Text = StringsPrincipal.DAXIA;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Estres.aspx"
            Response.Redirect("Estres.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Ansiedad.aspx"
            Response.Redirect("Ansiedad.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Depresion.aspx"
            Response.Redirect("Depresion.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "DAXIA.aspx"
            Response.Redirect("DAXIA.aspx");
        }
    }
}