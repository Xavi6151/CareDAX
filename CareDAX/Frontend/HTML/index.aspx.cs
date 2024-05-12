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
            Session["Contrasenia"] = TextBox2.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=CareDAX;Integrated Security=True";

            // Query SQL que quieres ejecutar
            string query1 = "SELECT * FROM Usuarios WHERE Usuario = @usuario";
            string query2 = "SELECT * FROM Usuarios WHERE Contrasenia = @contrasenia";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                connection.Open();

                // Crear un comando SQL para ejecutar la consulta
                using (SqlCommand command = new SqlCommand(query1, connection))
                {
                    // Agregar el parámetro @usuario
                    command.Parameters.AddWithValue("@usuario", Session["Usuario"] as string);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            correcto++;
                        }
                    }
                }

                // Crear un comando SQL para ejecutar la consulta
                using (SqlCommand command = new SqlCommand(query2, connection))
                {
                    // Agregar el parámetro @usuario
                    command.Parameters.AddWithValue("@contrasenia", Session["Contrasenia"] as string);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            correcto++;
                        }
                    }
                }

                //verificar
                if (correcto==2)
                {
                    correcto = 0;
            //Navegar al aspx "Principal.aspx"
            Response.Redirect("Principal.aspx");
        }
                else 
                {
                    // Actualizar el mensaje de error en el UpdatePanel
                    lblMensajeError.Text = "Usuario y/o contraseña incorrectos";
                    lblMensajeError.Visible = true;
                }
            }
        }

        protected void btnPTS_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}