using CareDAX.Backend.Strings;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareDAX.Frontend.HTML
{
    public partial class Depresion : System.Web.UI.Page
    {
        //Variable para la puntuacion
        protected static int puntos = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            //Descripcion
            description.Text = StringsDepresion.description;

            //Texto de la columna 1
            lblCol0.Text = StringsDepresion.questions;

            //Preguntas
            lblquest1.Text = StringsDepresion.valoresCambiantes[0];
            lblquest2.Text = StringsDepresion.valoresCambiantes[1];
            lblquest3.Text = StringsDepresion.valoresCambiantes[2];
            lblquest4.Text = StringsDepresion.valoresCambiantes[3];
            lblquest5.Text = StringsDepresion.valoresCambiantes[4];
            lblquest6.Text = StringsDepresion.valoresCambiantes[5];
            lblquest7.Text = StringsDepresion.valoresCambiantes[6];
            lblquest8.Text = StringsDepresion.valoresCambiantes[7];
            lblquest9.Text = StringsDepresion.valoresCambiantes[8];
            lblquest10.Text = StringsDepresion.valoresCambiantes[9];
            lblquest11.Text = StringsDepresion.valoresCambiantes[10];
            lblquest12.Text = StringsDepresion.valoresCambiantes[11];
            lblquest13.Text = StringsDepresion.valoresCambiantes[12];
            lblquest14.Text = StringsDepresion.valoresCambiantes[13];
            lblquest15.Text = StringsDepresion.valoresCambiantes[14];
            lblquest16.Text = StringsDepresion.valoresCambiantes[15];
            lblquest17.Text = StringsDepresion.valoresCambiantes[16];

            //Opciones
            rdb1.Text = StringsDepresion.answerrdb1[0];
            rdb2.Text = StringsDepresion.answerrdb2[0];
            rdb3.Text = StringsDepresion.answerrdb3[0];
            rdb4.Text = StringsDepresion.answerrdb4[0];
            rdb5.Text = StringsDepresion.answerrdb5[0];

            rdb6.Text = StringsDepresion.answerrdb1[1];
            rdb7.Text = StringsDepresion.answerrdb2[1];
            rdb8.Text = StringsDepresion.answerrdb3[1];
            rdb9.Text = StringsDepresion.answerrdb4[1];
            rdb10.Text = StringsDepresion.answerrdb5[1];

            rdb11.Text = StringsDepresion.answerrdb1[2];
            rdb12.Text = StringsDepresion.answerrdb2[2];
            rdb13.Text = StringsDepresion.answerrdb3[2];
            rdb14.Text = StringsDepresion.answerrdb4[2];
            rdb15.Text = StringsDepresion.answerrdb5[2];

            rdb16.Text = StringsDepresion.answerrdb1[3];
            rdb17.Text = StringsDepresion.answerrdb2[3];
            rdb18.Text = StringsDepresion.answerrdb3[3];

            rdb21.Text = StringsDepresion.answerrdb1[4];
            rdb22.Text = StringsDepresion.answerrdb2[4];
            rdb23.Text = StringsDepresion.answerrdb3[4];

            rdb26.Text = StringsDepresion.answerrdb1[5];
            rdb27.Text = StringsDepresion.answerrdb2[5];
            rdb28.Text = StringsDepresion.answerrdb3[5];


            rdb31.Text = StringsDepresion.answerrdb1[6];
            rdb32.Text = StringsDepresion.answerrdb2[6];
            rdb33.Text = StringsDepresion.answerrdb3[6];
            rdb34.Text = StringsDepresion.answerrdb4[6];
            rdb35.Text = StringsDepresion.answerrdb5[6];

            rdb36.Text = StringsDepresion.answerrdb1[7];
            rdb37.Text = StringsDepresion.answerrdb2[7];
            rdb38.Text = StringsDepresion.answerrdb3[7];
            rdb39.Text = StringsDepresion.answerrdb4[7];
            rdb40.Text = StringsDepresion.answerrdb5[7];

            rdb41.Text = StringsDepresion.answerrdb1[8];
            rdb42.Text = StringsDepresion.answerrdb2[8];
            rdb43.Text = StringsDepresion.answerrdb3[8];
            rdb44.Text = StringsDepresion.answerrdb4[8];
            rdb45.Text = StringsDepresion.answerrdb5[8];

            rdb46.Text = StringsDepresion.answerrdb1[9];
            rdb47.Text = StringsDepresion.answerrdb2[9];
            rdb48.Text = StringsDepresion.answerrdb3[9];
            rdb49.Text = StringsDepresion.answerrdb4[9];
            rdb50.Text = StringsDepresion.answerrdb5[9];

            rdb51.Text = StringsDepresion.answerrdb1[10];
            rdb52.Text = StringsDepresion.answerrdb2[10];
            rdb53.Text = StringsDepresion.answerrdb3[10];
            rdb54.Text = StringsDepresion.answerrdb4[10];
            rdb55.Text = StringsDepresion.answerrdb5[10];

            rdb56.Text = StringsDepresion.answerrdb1[11];
            rdb57.Text = StringsDepresion.answerrdb2[11];
            rdb58.Text = StringsDepresion.answerrdb3[11];

            rdb61.Text = StringsDepresion.answerrdb1[12];
            rdb62.Text = StringsDepresion.answerrdb2[12];
            rdb63.Text = StringsDepresion.answerrdb3[12];

            rdb66.Text = StringsDepresion.answerrdb1[13];
            rdb67.Text = StringsDepresion.answerrdb2[13];
            rdb68.Text = StringsDepresion.answerrdb3[13];

            rdb71.Text = StringsDepresion.answerrdb1[14];
            rdb72.Text = StringsDepresion.answerrdb2[14];
            rdb73.Text = StringsDepresion.answerrdb3[14];
            rdb74.Text = StringsDepresion.answerrdb4[14];

            rdb76.Text = StringsDepresion.answerrdb1[15];
            rdb77.Text = StringsDepresion.answerrdb2[15];
            rdb78.Text = StringsDepresion.answerrdb3[15];

            rdb81.Text = StringsDepresion.answerrdb1[16];
            rdb82.Text = StringsDepresion.answerrdb2[16];
            rdb83.Text = StringsDepresion.answerrdb3[16];

            //Texto de los botones
            btnReturn.Text = StringsDepresion.but_return;
            btnCalculate.Text = StringsDepresion.but_calculate;
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Principal.aspx"
            Response.Redirect("Principal.aspx");
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Variable para los puntos
            int points = 0;
            //Variable para contar los radios
            int radios=0;
            //Revisar puntuación
            for (int i = 1; i <= 85; i++)
            {
                //Este tomara el nombre del radiobutton para revisarlo
                String radActual = "rdb" + i;

                //Encuentra el radiobutton por el ID
                RadioButton rdbActual = FindControl(radActual) as RadioButton;

                //Verificar que si exista el radio
                if (rdbActual != null)
                {
                    //Verifica si el radiobutton esta seleccionado
                    if (rdbActual.Checked)
                    {
                        //Aumentar en 1 los radios seleccionados
                        radios++;
                        //Dependiendo el control seleccionado se hara la sumatoria
                        if (radActual.Equals("rdb2") || radActual.Equals("rdb7") || radActual.Equals("rdb12") || radActual.Equals("rdb17") || radActual.Equals("rdb22") || radActual.Equals("rdb27") || radActual.Equals("rdb32") || radActual.Equals("rdb37") || radActual.Equals("rdb42") || radActual.Equals("rdb47") || radActual.Equals("rdb52") || radActual.Equals("rdb57") || radActual.Equals("rdb62") || radActual.Equals("rdb67") || radActual.Equals("rdb72") || radActual.Equals("rdb77") || radActual.Equals("rdb82")) points++;
                        else if (radActual.Equals("rdb3") || radActual.Equals("rdb8") || radActual.Equals("rdb13") || radActual.Equals("rdb18") || radActual.Equals("rdb23") || radActual.Equals("rdb28") || radActual.Equals("rdb33") || radActual.Equals("rdb38") || radActual.Equals("rdb43") || radActual.Equals("rdb48") || radActual.Equals("rdb53") || radActual.Equals("rdb58") || radActual.Equals("rdb63") || radActual.Equals("rdb68") || radActual.Equals("rdb73") || radActual.Equals("rdb78") || radActual.Equals("rdb83")) points+=2;
                        else if (radActual.Equals("rdb4") || radActual.Equals("rdb9") || radActual.Equals("rdb14") || radActual.Equals("rdb19") || radActual.Equals("rdb24") || radActual.Equals("rdb29") || radActual.Equals("rdb34") || radActual.Equals("rdb39") || radActual.Equals("rdb44") || radActual.Equals("rdb49") || radActual.Equals("rdb54") || radActual.Equals("rdb59") || radActual.Equals("rdb64") || radActual.Equals("rdb69") || radActual.Equals("rdb74") || radActual.Equals("rdb79") || radActual.Equals("rdb84")) points += 3;
                        else if (radActual.Equals("rdb5") || radActual.Equals("rdb10") || radActual.Equals("rdb15") || radActual.Equals("rdb20") || radActual.Equals("rdb25") || radActual.Equals("rdb30") || radActual.Equals("rdb35") || radActual.Equals("rdb40") || radActual.Equals("rdb45") || radActual.Equals("rdb50") || radActual.Equals("rdb55") || radActual.Equals("rdb60") || radActual.Equals("rdb65") || radActual.Equals("rdb70") || radActual.Equals("rdb75") || radActual.Equals("rdb80") || radActual.Equals("rdb85")) points += 4;
                    }
                }

                //Seleccionar el nivel y solo cambiar de pestaña si estan todas las preguntas respondidas
                if (radios == 17)
                {
                    //Variable que contiene el nivel
                    String level = "";
                    if (points > 22) level = StringsDepresion.level5;
                    else if (points > 18 && points<=22) level = StringsDepresion.level4;
                    else if (points > 13 && points <= 18) level = StringsDepresion.level3;
                    else if (points > 7 && points <= 13) level = StringsDepresion.level2;
                    else if (points <= 7) level = StringsDepresion.level1;

                    //Asignar a la variable de estado del StringEstres el nivel obtenido
                    StringsDepresion.estado = level;

                    /*Agregar el nivel de estres a la BD (Este estara al final de todo seguramente)*/
                    AgregarDepresion();


                    //Navegar al aspx "Principal.aspx"
                    Response.Redirect("Principal.aspx");
                }
            }
        }

        public void AgregarDepresion()
        {
            string connectionString = "Data Source=localhost;Initial Catalog=CareDAX;Integrated Security=True";

            // Query SQL para insertar el dato de Nivel_Depresion
            string updateQuery = "UPDATE Usuarios SET Nivel_Depresion = @nuevoNivelDepresion WHERE Usuario = @usuario";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                connection.Open();

                // Crear un comando SQL para ejecutar la consulta de inserción
                using (SqlCommand updateCommand = new SqlCommand(updateQuery, connection))
                {
                    // Agregar los parámetros @usuario y @nuevoNivelDepresion
                    updateCommand.Parameters.AddWithValue("@usuario", Session["Usuario"] as String);
                    updateCommand.Parameters.AddWithValue("@nuevoNivelDepresion", StringsDepresion.estado);

                    // Ejecutar la consulta de actualización
                    updateCommand.ExecuteNonQuery();
                }
                connection.Close();
            }
        }
    }
}