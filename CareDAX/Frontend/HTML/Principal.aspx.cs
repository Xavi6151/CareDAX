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
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = StringsPrincipal.level_Est1;
            //Label1.ForeColor = System.Drawing.Color.FromArgb(25, 153, 0); //Esto pone color de letra
            //Label2.Text = StringsPrincipal.level_Est2;
            //Label2.ForeColor = System.Drawing.Color.FromArgb(165, 118, 0);
            //Label3.Text = StringsPrincipal.level_Est3;
            //Label3.ForeColor = System.Drawing.Color.FromArgb(255, 0, 0);

            //Label4.Text = StringsPrincipal.level_Ans1;
            //Label4.ForeColor = System.Drawing.Color.FromArgb(25, 153, 0);
            //Label5.Text = StringsPrincipal.level_Ans2;
            //Label5.ForeColor = System.Drawing.Color.FromArgb(165, 118, 0);
            //Label6.Text = StringsPrincipal.level_Ans3;
            //Label6.ForeColor = System.Drawing.Color.FromArgb(255, 0, 0);

            //Label7.Text = StringsPrincipal.level_Dep1;
            //Label7.ForeColor = System.Drawing.Color.FromArgb(25, 153, 0); 
            //Label8.Text = StringsPrincipal.level_Dep2;
            //Label8.ForeColor = System.Drawing.Color.FromArgb(114, 240, 158);
            //Label9.Text = StringsPrincipal.level_Dep3;
            //Label9.ForeColor = System.Drawing.Color.FromArgb(165, 118, 0);
            //Label10.Text = StringsPrincipal.level_Dep4;
            //Label10.ForeColor = System.Drawing.Color.FromArgb(210, 111, 0);
            //Label11.Text = StringsPrincipal.level_Dep5;
            //Label11.ForeColor = System.Drawing.Color.FromArgb(255, 0, 0);

            //UsuarioPerfil.Text = Session["usuario"] as String;
            UserName.Text = Session["usuario"] as String;

            AsignarCategoria("ansiedad");
            AsignarCategoria("estres");
            AsignarCategoria("depresion");
            
            //Button1.Text= StringsPrincipal.Est;
            //Button2.Text = StringsPrincipal.Ans;
            //Button3.Text = StringsPrincipal.Dep;
            //Button4.Text = StringsPrincipal.DAXIA;
        }

        protected void TestEstres_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Estres.aspx"
            Response.Redirect("Estres.aspx");
        }

        protected void TestAnsiedad_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Ansiedad.aspx"
            Response.Redirect("Ansiedad.aspx");
        }

        protected void TestDepresion_Click(object sender, EventArgs e)
        {
            //Navegar al aspx "Depresion.aspx"
            Response.Redirect("Depresion.aspx");
        }

        protected void CerrarSesion_Click(object sender, EventArgs e)
        {
            //redirigir a login y limpiar variables de usuario y contraseña
                //Session["usuario"] = "";
                Response.Redirect("index.aspx"); 
        }

        protected void ChatBot_Click(object sender, EventArgs e)
        {
            //redirigir a login y limpiar variables de usuario y contraseña
            //Session["usuario"] = "";
            Response.Redirect("DAXIA.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //redirigir a login y limpiar variables de usuario y contraseña
            //Session["usuario"] = "";
            Response.Redirect("DAXIA.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            //redirigir a login y limpiar variables de usuario y contraseña
            //Session["usuario"] = "";
            Response.Redirect("Principal.aspx");
        }


        public void AsignarCategoria(string categoria)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=CareDAX;Integrated Security=True";

            // Query SQL que quieres ejecutar
            String query = "";
            /*if (categoria.Equals("ansiedad")) query = "SELECT Nivel_Ansiedad FROM Usuarios WHERE Usuario=@usuario";
            else if (categoria.Equals("estres")) query = "SELECT Nivel_Estres FROM Usuarios WHERE Usuario=@usuario";
            else if (categoria.Equals("depresion")) query = "SELECT Nivel_Depresion FROM Usuarios WHERE Usuario=@usuario";*/

            if (categoria.Equals("ansiedad")) query = "SELECT * FROM Usuarios WHERE Usuario=@usuario";
            else if (categoria.Equals("estres")) query = "SELECT * FROM Usuarios WHERE Usuario=@usuario";
            else if (categoria.Equals("depresion")) query = "SELECT * FROM Usuarios WHERE Usuario=@usuario";

            // Crear una conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                connection.Open();

                // Crear un comando SQL para ejecutar la consulta
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Agregar el parámetro @usuario
                    command.Parameters.AddWithValue("@usuario", Session["usuario"] as String);

                    // Ejecutar la consulta y obtener un lector de datos
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                       
                        // Iterar a través de las filas y leer los datos
                        while (reader.Read())
                        {
                            
                            string cate;

                            if (categoria.Equals("ansiedad"))
                            {
                                cate = reader.GetString(4);
                                CategoriaAnsiedad.Text = cate;
                             }
                            else if (categoria.Equals("estres"))
                            {
                                cate = reader.GetString(3);
                                CategoriaEstres.Text = cate;

                            }
                            else if (categoria.Equals("depresion"))
                            {
                                cate = reader.GetString(5);
                                CategoriaDepresion.Text = cate;
                            }
                            
                        }
                        
                        connection.Close();
                    }
                }
            }
        }

    }
}