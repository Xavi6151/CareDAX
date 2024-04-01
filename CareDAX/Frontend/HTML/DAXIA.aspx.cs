using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Threading;
using System.Timers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CareDAX.Backend;
using CareDAX.Backend.Strings;

namespace CareDAX.Frontend.HTML
{
    public partial class DAXIA : System.Web.UI.Page
    {

        protected string InfomessageValue { get; set; }
        protected string oracion;
        IA iaInstance = new IA();

        protected void Page_Load(object sender, EventArgs e)
        {
            nombre.Text = StringsDaxia.nombreIA;
            InfomessageValue = StringsDaxia.Infomessage;
        }


        //Variable para saber si poner clases o no.
        protected static int clicks = 0;

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (clicks != 0)
            {
                Infomessage.Text = StringsDaxia.Infomessage;
                Label1.Text = Input_User.Text;

                UpdatePanel1.Update();
                Label2.Text = "NORMALIZANDO...";
                Label2.ForeColor = System.Drawing.Color.FromArgb(255, 0, 212);
                //Efecto visual para mostrar en video: normalizar
                Timer1.Interval = 2000; // Intervalo de 5 segundos
                Timer1.Enabled = true;
                UpdatePanel1.Update();
            }
            else
            {
                Infomessage.Text = StringsDaxia.Infomessage;
                Label1.Text = Input_User.Text;
                //Agregar la clase al div de label1
                labelContainer.Attributes["class"] += "chat-messages1";

                UpdatePanel1.Update();
                lblRecomendaciones.Attributes["class"] += "chat-messages2";
                Label2.Text = "NORMALIZANDO...";
                Label2.ForeColor = System.Drawing.Color.FromArgb(255, 0, 212);
                //Efecto visual para mostrar en video: normalizar
                Timer1.Interval = 2000; // Intervalo de 5 segundos
                Timer1.Enabled = true;
                UpdatePanel1.Update();
            }
            clicks++;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //Normalizar
            oracion = iaInstance.normalizar(Input_User.Text);
            Label2.Text = oracion;
            Label2.ForeColor = System.Drawing.Color.Black;
            //Eliminar el texto de la caja de texto
            Input_User.Text = "";
            Timer1.Enabled = false;
        }
    }
}