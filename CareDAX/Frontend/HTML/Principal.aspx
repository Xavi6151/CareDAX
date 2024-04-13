<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="CareDAX.Frontend.HTML.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
    <link rel="stylesheet" href="../CSS/Estilos_Principal.css" type="text/css" />
    <link rel="stylesheet" href="../../Content/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../CSS/Estilos_Perfil.css" type="text/css" />
    <link rel="stylesheet" href="../CSS/Estilos_Ayuda.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar_style bg-primary">
            <div class="d-flex">
                <!-- Contenedor para alinear los botones -->
                <button type="button" class="btn btn-primary btn_ayuda" data-bs-toggle="modal" data-bs-target="#exampleModal" aria-controls="staticBackdrop">ℹ️</button>
                <a class="navbar-link btn btn-primary" data-bs-toggle="offcanvas" href="#staticBackdrop" role="button" aria-controls="staticBackdrop">Menú</a>
            </div>
            <a class="navbar-brand">CareDaX</a>
            <a class="navbar-link" href="#">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/hombre.png" Width="45" Height="45" /></a>
        </nav>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content custom-modal">
                    <!-- Agregar la clase personalizada custom-modal -->
                    <div class="modal-header">
                        <h2 class="modal-title fs-5" id="exampleModalLabel">Ayuda</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Estructura de notas de ayuda -->
                        <div class="note">
                            <h6>¿Cómo funciona el chatbot?</h6>
                            <p>Daxia comenzará una conversación contigo dónde podrás expresar como te sientes el dia de hoy</p>
                        </div>
                        <div class="note">
                            <h6>¿Se quedan guardadas las conversaciones?</h6>
                            <p>Por confidencialidad no se guardan, lo que sí se guardan en la pantalla principal son las recomendaciones que te hace Daxia junto con la fecha correspondiente.</p>
                        </div>
                        <div class="note">
                            <h6>¿Hasta dónde me ayudará Daxia?</h6>
                            <p>Daxia no busca suplantar el trabajo de un psicológo promedio, pero dará consejos o diagnósticos lo más cercanos a la realidad. Su información está respaldada por estudios válidados por psicológos</p>
                        </div>
                        <div class="note">
                            <h6>¿Qué hacer si noto que Daxia me ayuda pero considero tener un problema más grave?</h6>
                            <p>Se recomienda buscar ayuda profesional</p>
                        </div>
                        <div class="note">
                            <h6>¿Quieres conocer más sobre este proyecto o hacer sugerencias de mejora sobre nuestro servicio?</h6>
                            <p>
                                Envía correo a cualquiera de los siguientes correos:
                        <b>azucenacamargo7@gmail.com</b>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="offcanvas offcanvas-start" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="staticBackdropLabel">Menú</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle w-100" type="button" data-bs-toggle="dropdown">
                        Cuestionarios
                    </button>
                    <ul class="dropdown-menu w-100 text-center show">
                        <li><a class="dropdown-item" href="Estres.aspx">Test Estrés</a></li>
                        <li><a class="dropdown-item" href="Ansiedad.aspx">Test Ansiedad</a></li>
                        <li><a class="dropdown-item" href="Depresion.aspx">Test Depresión</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="prin-container">
            <div class="words">
                <div class="est_words">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
                </div>
                <div class="ans_words">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label><br />
                </div>

                <div class="dep_words">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label><br />
                </div>
            </div>
            <div class="IA">
                <asp:Button ID="Button4" class="btn btn-success" runat="server" Text="Button" OnClick="Button4_Click" /><br />
            </div>
        </div>


        <!-- Perfil -->
        <div id="tarjetaFlotante" class="tarjeta">
            <div class="contenido">
                <h5>azucena.CR7
                    <button id="editarUsuarioBtn" type="button" class="btn-editar-perfil ">✏️</button></h5>
                <p>Azucena Camargo Ruiz</p>
                <button id="btn-cerrarSesion" type="button" class="btn btn-secondary custom-btn-primary">Cerrar sesión</button>
            </div>
        </div>


        <!--Categorizaciones-->

        <div class="container" style="margin-top: 50px;">
            <h4>Tus resultados</h4>
            <div class="row">
                <div class="col-md-4">
                    <div class="card border-2 border-primary row justify-content-center m-5" style="width: 19rem;">
                        <img src="../../Images/estres.jpeg" class="card-img-top p-2" alt="">
                        <div class="card-body">
                            <h5 class="card-title">Estrés</h5>
                            <p class="card-text">
                                Sin asignar
                        <p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-2 border-primary row justify-content-center p-2 m-5 " style="width: 19rem;">
                        <img src="../../Images/ansiedad.jpeg" class="card-img-top p-2" alt="">
                        <div class="card-body">
                            <h5 class="card-title">Ansiedad</h5>
                            <p class="card-text">
                                Sin asignar
                        <p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-2 border-primary  row justify-content-center p-2 m-5 " style="width: 19rem;">
                        <img src="../../Images/depresion.jpeg" class="card-img-top p-2" alt="">
                        <div class="card-body">
                            <h5 class="card-title">Depresión</h5>
                            <p class="card-text">
                                Sin asignar
                        <p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script src="../../Scripts/bootstrap.min.js"></script>
<script>
    <!-- Efecto Tarjeta de perfil emergente-->
    document.addEventListener("DOMContentLoaded", function () {
        const mostrarTarjetaBtn = document.getElementById("Image2");
        const tarjetaFlotante = document.getElementById("tarjetaFlotante");

        mostrarTarjetaBtn.addEventListener("click", function (event) {
            tarjetaFlotante.style.display = "block";
            event.stopPropagation();
        });

        tarjetaFlotante.addEventListener("click", function (event) {
            event.stopPropagation();
        });

        document.addEventListener("click", function (event) {
            if (!tarjetaFlotante.contains(event.target) && event.target !== mostrarTarjetaBtn) {
                tarjetaFlotante.style.display = "none";
            }
        });

    });


</script>
</html>
