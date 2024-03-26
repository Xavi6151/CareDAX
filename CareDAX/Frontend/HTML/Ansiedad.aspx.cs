using CareDAX.Backend.Strings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareDAX.Frontend.HTML
{
    public partial class Ansiedad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Descripcion de BECK
            description.Text = StringsAnsiedad.description;

            //Columnas de la tabla
            lblCol1.Text = StringsAnsiedad.col1;
            lblCol2.Text = StringsAnsiedad.col2;
            lblCol3.Text = StringsAnsiedad.col3;
            lblCol4.Text = StringsAnsiedad.col4;
            lblCol5.Text = StringsAnsiedad.col5;

            //Preguntas
            lblQues1.Text = StringsAnsiedad.valoresCambiantes[0];
            lblQues2.Text = StringsAnsiedad.valoresCambiantes[1];
            lblQues3.Text = StringsAnsiedad.valoresCambiantes[2];
            lblQues4.Text = StringsAnsiedad.valoresCambiantes[3];
            lblQues5.Text = StringsAnsiedad.valoresCambiantes[4];
            lblQues6.Text = StringsAnsiedad.valoresCambiantes[5];
            lblQues7.Text = StringsAnsiedad.valoresCambiantes[6];
            lblQues8.Text = StringsAnsiedad.valoresCambiantes[7];
            lblQues9.Text = StringsAnsiedad.valoresCambiantes[8];
            lblQues10.Text = StringsAnsiedad.valoresCambiantes[9];
            lblQues11.Text = StringsAnsiedad.valoresCambiantes[10];
            lblQues12.Text = StringsAnsiedad.valoresCambiantes[11];
            lblQues13.Text = StringsAnsiedad.valoresCambiantes[12];
            lblQues14.Text = StringsAnsiedad.valoresCambiantes[13];
            lblQues15.Text = StringsAnsiedad.valoresCambiantes[14];
            lblQues16.Text = StringsAnsiedad.valoresCambiantes[15];
            lblQues17.Text = StringsAnsiedad.valoresCambiantes[16];
            lblQues18.Text = StringsAnsiedad.valoresCambiantes[17];

            //Botones
            btnReturn.Text = StringsAnsiedad.but_return;
            btnCalculate.Text = StringsAnsiedad.but_calculate;
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

            //Revisar puntuación
            for (int i = 1; i <= 72; i++)
            {
                //Este tomara el nombre del radiobutton para revisarlo
                String radActual = "rdb" + i;

                //Encuentra el radiobutton por el ID
                RadioButton rdbActual = FindControl(radActual) as RadioButton;

                //Verifica si el radiobutton esta seleccionado
                if (rdbActual.Checked)
                {
                    //Dependiendo el control seleccionado se hara la sumatoria
                    if (radActual.Equals("rdb2") || radActual.Equals("rdb6") || radActual.Equals("rdb10") || radActual.Equals("rdb14") || radActual.Equals("rdb18") || radActual.Equals("rdb22") || radActual.Equals("rdb26") || radActual.Equals("rdb30") || radActual.Equals("rdb34") || radActual.Equals("rdb38") || radActual.Equals("rdb42") || radActual.Equals("rdb46") || radActual.Equals("rdb50") || radActual.Equals("rdb54") || radActual.Equals("rdb58") || radActual.Equals("rdb62") || radActual.Equals("rdb66") || radActual.Equals("rdb70")) points++;
                    else if (radActual.Equals("rdb3") || radActual.Equals("rdb7") || radActual.Equals("rdb11") || radActual.Equals("rdb15") || radActual.Equals("rdb19") || radActual.Equals("rdb23") || radActual.Equals("rdb27") || radActual.Equals("rdb31") || radActual.Equals("rdb35") || radActual.Equals("rdb39") || radActual.Equals("rdb43") || radActual.Equals("rdb47") || radActual.Equals("rdb51") || radActual.Equals("rdb55") || radActual.Equals("rdb59") || radActual.Equals("rdb63") || radActual.Equals("rdb67") || radActual.Equals("rdb71")) points+=2;
                    else if (radActual.Equals("rdb4") || radActual.Equals("rdb8") || radActual.Equals("rdb12") || radActual.Equals("rdb16") || radActual.Equals("rdb20") || radActual.Equals("rdb24") || radActual.Equals("rdb28") || radActual.Equals("rdb32") || radActual.Equals("rdb36") || radActual.Equals("rdb40") || radActual.Equals("rdb44") || radActual.Equals("rdb48") || radActual.Equals("rdb52") || radActual.Equals("rdb56") || radActual.Equals("rdb60") || radActual.Equals("rdb64") || radActual.Equals("rdb68") || radActual.Equals("rdb72")) points += 3;
                }
            }
            /*Asignar nivel de estres*/

            //Variable que contiene el nivel
            String level = "";
            if (points > 35) level = StringsAnsiedad.level3;
            else if (points >= 22 && points <= 35) level = StringsAnsiedad.level2;
            else if (points < 22) level = StringsAnsiedad.level1;

            /*Mostrar el nivel de ansiedad*/
            lblResult.Text = level;

            /*Agregar el nivel de ansiedad a la BD (Este estara al final de todo seguramente)*/







            /*Bloquear la tabla para que no se cambien las respuestas*/

            // Iterar a través de las filas de la tabla
            foreach (TableRow row in table1.Rows)
            {
                // Iterar a través de las celdas de la fila
                foreach (TableCell cell in row.Cells)
                {
                    // Iterar a través de los controles en la celda
                    foreach (Control control in cell.Controls)
                    {
                        // Verificar si el control es un RadioButton
                        if (control is RadioButton)
                        {
                            // Deshabilitar el RadioButton
                            ((RadioButton)control).Enabled = false;
                        }
                    }
                }
            }
        }
    }
}