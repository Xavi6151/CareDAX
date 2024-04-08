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
    public partial class Puntuacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] != null)
                {
                    RadioButton1.Text = StringsPuntuacion.opc1;
                    RadioButton2.Text = StringsPuntuacion.opc2;
                    RadioButton3.Text = StringsPuntuacion.opc3;
                    obtenerRecomendacion();
                }
                else
                {
                    //Navegar al aspx "index.aspx"
                    Response.Redirect("index.aspx");
                }
            }
        }

        public void obtenerRecomendacion()
        {
            string connectionString = "Data Source=localhost;Initial Catalog=CareDAX;Integrated Security=True";

            // Query SQL que quieres ejecutar
            String query = "SELECT * FROM Asignaciones_Recomendadas WHERE Usuario LIKE @usuario";


            // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                connection.Open();

                // Crear un comando SQL para ejecutar la consulta
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Agregar el parámetro @usuario
                    command.Parameters.AddWithValue("@usuario", Session["Usuario"] as string);

                    // Ejecutar la consulta y obtener un lector de datos
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            // Si hay una fila, leer los datos y mostrar la recomendación
                            while (reader.Read())
                            {
                                Label1.Text = reader.GetString(1);
                            }
                        }
                        else
                        {
                            // Si no hay ninguna fila, redirigir a otra página ASPX
                            Response.Redirect("Principal.aspx");
                        }
                        connection.Close();
                    }
                }
            }
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked) posicionar(0);
            else if (RadioButton3.Checked) posicionar(1);
            eliminarRecomendacion();
            obtenerRecomendacion();
        }

        public void eliminarRecomendacion()
        {
            string connectionString = "Data Source=localhost;Initial Catalog=CareDAX;Integrated Security=True";

            // Query SQL que quieres ejecutar para eliminar el dato
            string deleteQuery = "DELETE FROM Asignaciones_Recomendadas WHERE Usuario LIKE @usuario AND Recomendaciones_Asignadas = @recomendacion";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                connection.Open();

                // Crear un comando SQL para ejecutar la consulta de eliminación
                using (SqlCommand deleteCommand = new SqlCommand(deleteQuery, connection))
                {
                    // Agregar los parámetros @usuario y @recomendacion
                    deleteCommand.Parameters.AddWithValue("@usuario", Session["Usuario"] as string);
                    deleteCommand.Parameters.AddWithValue("@recomendacion", Label1.Text);

                    // Ejecutar la consulta de eliminación
                    deleteCommand.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        public void posicionar(int op) //op es para laoperacion de sumar o restar 1
        {
            string connectionString = "Data Source=localhost;Initial Catalog=CareDAX;Integrated Security=True";
            string updateQuery = "";
            // Query SQL para aumentar o bajar en 1 el puntaje_Recomendacion
            if (op == 0) updateQuery = "UPDATE Recomendaciones SET Puntaje_Recomendacion = Puntaje_Recomendacion + 1 WHERE Recomendacion = @recomendacion";
            else if (op == 1) updateQuery = "UPDATE Recomendaciones SET Puntaje_Recomendacion = Puntaje_Recomendacion - 1 WHERE Recomendacion = @recomendacion";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                connection.Open();

                // Crear un comando SQL para ejecutar la consulta de actualización
                using (SqlCommand updateCommand = new SqlCommand(updateQuery, connection))
                {
                    // Agregar el parámetro @recomendacion
                    updateCommand.Parameters.AddWithValue("@recomendacion", Label1.Text);

                    // Ejecutar la consulta de actualización
                    updateCommand.ExecuteNonQuery();
                }
                connection.Close();
            }
        }
    }
}