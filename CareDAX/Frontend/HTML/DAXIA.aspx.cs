using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text.RegularExpressions;
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
            //Desactivar escritura por parte del usuario y clic en boton
            Input_User.ReadOnly = true;
            btnEnviar.Enabled = false;
            //Evitar ver contenido de la caja de texto para el usuario
            Input_User.BackColor=Color.Black;

            if (clicks != 0)
            {
                Infomessage.Text = StringsDaxia.Infomessage;
                Label1.Text = Input_User.Text;

                UpdatePanel1.Update();
                Label2.Text = "NORMALIZANDO...";
                Label2.ForeColor = System.Drawing.Color.FromArgb(255, 0, 212);
                //Efecto visual para mostrar en video: normalizar
                Timer1.Interval = 2000; // Intervalo de 2 segundos
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
                Timer1.Interval = 2000; // Intervalo de 2 segundos
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
            Input_User.Text = oracion;
            Timer1.Enabled = false;

            //Tokenizar
            Timer2.Interval = 2000; // Intervalo de 2 segundos
            Timer2.Enabled = true;
            UpdatePanel1.Update();
        }

        public static int tkz = 0;
        protected void Timer2_Tick(object sender, EventArgs e)
        {
            if (tkz == 0)
            {
                Label2.Text = "TOKENIZANDO, CONVIRTIENDO A BASE Y SELECCIONANDO PROBLEMAS CON SUS RESPECTIVAS RECOMENDACIONES...";
                Label2.ForeColor = System.Drawing.Color.FromArgb(255, 0, 212);
                tkz++;
                UpdatePanel1.Update();
                Timer2.Enabled = false;
                Timer2.Enabled = true;
            }
            else
            {
                //Proceso para tokenizar
                if (iaInstance.tokenizar(Input_User.Text))
                {
                    String tokens = "";
                    //for (int i = 0; i < iaInstance.tokens.Length; i++)
                    //{
                    //    if (iaInstance.tokens[i] != null)
                    //    {
                    //        tokens += "[" + iaInstance.tokens[i] + "]";
                    //    }
                    //}
                    //Label2.Text = tokens;
                    //Label2.ForeColor = System.Drawing.Color.Black;
                    //tkz = 0;

                    Thread.Sleep(2000);

                    tokens = "";
                    iaInstance.conversion_Verbos();
                    //for (int i = 0; i < iaInstance.tokens.Length; i++)
                    //{
                    //    if (iaInstance.tokens[i] != null)
                    //    {
                    //        tokens += "[" + iaInstance.tokens[i] + "]";
                    //    }
                    //}
                    //Label2.Text = tokens;
                    //Label2.ForeColor = System.Drawing.Color.Black;

                    //HASTA ESTE PUNTO YA SE CONVIRTIERON EN BASE LAS PALABRAS POSIBLES

                    //BUSCAR LAS RECOMENDACIONES Y MOSTRARLAS
                    //Para este proceso se necesita tomar caracteristicas y luego muestreo de problemas

                    #region caracteristicas
                    int palabras = 10000;
                    int cantCaracteristicas = 0;
                    String[] caracteristicasP = new String[10000]; //Este arreglo tendra las caracteristicas
                    for (int i = 0; i < palabras; i++) //Ciclo for para tomar cada token
                    {
                        for (int j = 0; j < StringsDaxia.caracteristicas.Length; j++) //Ciclo for para repetirse la cantidad de veces de las caracteristicas
                        {
                            //Comparacion de cada token con cada una de las caracteristicas
                            if (iaInstance.tokens[i] != null && StringsDaxia.caracteristicas[j] != null && iaInstance.tokens[i].Equals(StringsDaxia.caracteristicas[j]))
                            {
                                caracteristicasP[cantCaracteristicas] = iaInstance.tokens[i]; //Agregar al arreglo de las caracteristicas el token actual
                                cantCaracteristicas++;//Aumentar la cantidad de caracteristicas actuales
                            }
                        }
                    }
                    #endregion


                    #region seleccion

                    String[] problemas = new String[10000]; //Arreglo de los problemas identificados
                    int cantProblemas = 0;

                    for (int i = 0; i < caracteristicasP.Length; i++)
                    {//El index aumenta cuando se asigna el valor al arreglo para evitar abrir llaves en cada if,
                        if (caracteristicasP[i] != null && caracteristicasP[i].Equals("cansado")) problemas[cantProblemas++] = "Falta de energía fisica";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("falta")) problemas[cantProblemas++] = "Alto nivel de estrés";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("motivacion")) problemas[cantProblemas++] = "Falta de motivacion";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("dolor")) problemas[cantProblemas++] = "Dolor de algun tipo ya sea fisico, mental y/o emocional";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("energia")) problemas[cantProblemas++] = "Falta de energia";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("atencion")) problemas[cantProblemas++] = "Soledad";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("dificultad")) problemas[cantProblemas++] = "Bajo rendimiento";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("tension")) problemas[cantProblemas++] = "Alto nivel de estrés";
                        else if (caracteristicasP[i] != null && caracteristicasP[i].Equals("desinteres")) problemas[cantProblemas++] = "Falta de emoción";
                    }

                    //Eliminar repeticiones
                    for (int i = 0; i < cantProblemas - 1; i++)
                    {
                        for (int j = i + 1; j < cantProblemas; j++)
                        {
                            if (problemas[i] == problemas[j])
                            {
                                for (int k = j; k < cantProblemas - 1; k++)
                                {
                                    problemas[k] = problemas[k + 1];
                                }
                                cantProblemas--;
                                j--;
                            }
                        }
                    }
                    #endregion

                    if (cantProblemas > 0)
                    {
                        Label2.Text="DAXIA: Con la información que me proporcionaste es posible que tengas alguno o algunos de estos problemas: ";
                        for (int i = 0; i < cantProblemas; i++) Label2.Text+="*" + problemas[i] + " ";
                        //Recomendaciones
                        Label2.Text += "Las recomendaciones que te puedo dar estan divididas en 3 partes y estan relacionadas a tus problemas, las que más han ayudado a la gente(+), las que ayudan a la gente pero un poco menos efectivo(/), y las que casi nadie ha utilizado pero eso no significa que no te pueden ayudar(-): ";
                        //Ciclo para las mas recomendadas pero sacadas de la BD
                        Label2.Text += "+Recomendacion1 ";
                        Label2.Text += "+Recomendacion2 ";
                        Label2.Text += "+Recomendacion3 ";
                        Label2.Text += "+Recomendacion4 ";
                        Label2.Text += "+Recomendacion5 ";
                        //Ciclo para las mas o menos recomendadas pero sacadas de la BD
                        Label2.Text += "/Recomendacion1 ";
                        Label2.Text += "/Recomendacion2 ";
                        Label2.Text += "/Recomendacion3 ";
                        Label2.Text += "/Recomendacion4 ";
                        Label2.Text += "/Recomendacion5 ";
                        //Ciclo para las menos recomendadas pero sacadas de la BD
                        Label2.Text += "-Recomendacion1 ";
                        Label2.Text += "-Recomendacion2 ";
                        Label2.Text += "-Recomendacion3 ";
                        Label2.Text += "-Recomendacion4 ";
                        Label2.Text += "-Recomendacion5 ";
                    }
                    Label2.ForeColor = System.Drawing.Color.Black;
                    Input_User.Text = "";
                    Input_User.BackColor = Color.White;
                    Input_User.ReadOnly = false;
                    btnEnviar.Enabled = true;

                    //tokens = "";
                    //for (int i = 0; i < caracteristicasP.Length; i++)
                    //{
                    //    if (caracteristicasP[i] != null)
                    //    {
                    //        tokens += "[" + caracteristicasP[i] + "]";
                    //    }
                    //}
                    //Label2.Text = tokens;
                    //Label2.ForeColor = System.Drawing.Color.Black;


                    UpdatePanel1.Update();
                    Timer2.Enabled = false;
                }
            }
        }
    }
}