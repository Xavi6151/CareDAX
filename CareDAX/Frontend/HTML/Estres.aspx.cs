using CareDAX.Backend.Strings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareDAX.Frontend.HTML
{
    public partial class Estres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Descripcion de Escala de estres percibido-10
            description.Text=StringsEstres.description;

            //Columnas de la tabla
            lblCol1.Text = StringsEstres.col1;
            lblCol2.Text = StringsEstres.col2;
            lblCol3.Text = StringsEstres.col3;
            lblCol4.Text = StringsEstres.col4;
            lblCol5.Text = StringsEstres.col5;
            lblCol6.Text = StringsEstres.col6;

            //Preguntas
            lblQues1.Text = StringsEstres.valoresCambiantes[0];
            lblQues2.Text = StringsEstres.valoresCambiantes[1];
            lblQues3.Text = StringsEstres.valoresCambiantes[2];
            lblQues4.Text = StringsEstres.valoresCambiantes[3];
            lblQues5.Text = StringsEstres.valoresCambiantes[4];
            lblQues6.Text = StringsEstres.valoresCambiantes[5];
            lblQues7.Text = StringsEstres.valoresCambiantes[6];
            lblQues8.Text = StringsEstres.valoresCambiantes[7];
            lblQues9.Text = StringsEstres.valoresCambiantes[8];
            lblQues10.Text = StringsEstres.valoresCambiantes[9];

            //Botones
            btnReturn.Text = StringsEstres.but_return;
            btnCalculate.Text = StringsEstres.but_calculate;
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Principal.aspx"
            Response.Redirect("Principal.aspx");
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            /*Procesos para calcular el resultado*/

            //Variable de puntuacion

            int points = 0;
            
            //Variable para revisar cuantos radios estan seleccionados

            int radios = 0;

            //Revisar puntuación
            for (int i = 1; i <= 50; i++)
            {
                //Este tomara el nombre del radiobutton para revisarlo
                String radActual = "rdb" + i;

                //Encuentra el radiobutton por el ID
                RadioButton rdbActual = FindControl(radActual) as RadioButton;

                //Verifica si el radiobutton esta seleccionado
                if (rdbActual.Checked)
                {
                    //Aumentar en 1 los radios seleccionados
                    radios++;
                    //Dependiendo el control seleccionado se hara la sumatoria
                    if (radActual.Equals("rdb2") || radActual.Equals("rdb7") || radActual.Equals("rdb12") || radActual.Equals("rdb27") || radActual.Equals("rdb42") || radActual.Equals("rdb47") || radActual.Equals("rdb19") || radActual.Equals("rdb24") || radActual.Equals("rdb34") || radActual.Equals("rdb39")) points++;
                    else if (radActual.Equals("rdb3") || radActual.Equals("rdb8") || radActual.Equals("rdb13") || radActual.Equals("rdb18") || radActual.Equals("rdb23") || radActual.Equals("rdb28") || radActual.Equals("rdb33") || radActual.Equals("rdb38") || radActual.Equals("rdb43") || radActual.Equals("rdb48")) points += 2;
                    else if (radActual.Equals("rdb4") || radActual.Equals("rdb9") || radActual.Equals("rdb14") || radActual.Equals("rdb17") || radActual.Equals("rdb22") || radActual.Equals("rdb29") || radActual.Equals("rdb32") || radActual.Equals("rdb37") || radActual.Equals("rdb44") || radActual.Equals("rdb49")) points += 3;
                    else if (radActual.Equals("rdb5") || radActual.Equals("rdb10") || radActual.Equals("rdb15") || radActual.Equals("rdb16") || radActual.Equals("rdb21") || radActual.Equals("rdb30") || radActual.Equals("rdb31") || radActual.Equals("rdb36") || radActual.Equals("rdb45") || radActual.Equals("rdb50")) points += 4;
                }
            }

            if (radios == 10)
            {
                /*Asignar nivel de estres*/

                //Variable que contiene el nivel
                String level = "";
                if (points > 25) level = StringsEstres.level3;
                else if (points >= 20 && points <= 25) level = StringsEstres.level2;
                else if (points < 20) level = StringsEstres.level1;

                //Asignar a la variable de estado del StringEstres el nivel obtenido
                StringsEstres.estado = level;

                /*Agregar el nivel de estres a la BD (Este estara al final de todo seguramente)*/

                //Navegar al aspx "Principal.aspx"
                Response.Redirect("Principal.aspx");
            }
        }
    }
}