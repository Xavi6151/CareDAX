<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="CareDAX.Frontend.HTML.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
    <link rel="stylesheet" href="../CSS/Estilos_Principal.css" type="text/css" />
    <link rel="stylesheet" href="../../Content/bootstrap.min.css" type="text/css" />
    <link href="../CSS/Estilos_Ayuda.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar bg-info">
            <div class="d-flex">
                <!-- Contenedor para alinear los botones -->
                <a class="navbar-link btn btn-primary" data-bs-toggle="offcanvas" href="#staticBackdrop" role="button" aria-controls="staticBackdrop">Menú</a>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" aria-controls="staticBackdrop">Ayuda</button>
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
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Ayuda</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Estructura de notas de ayuda -->
                        <div class="note">
                            <h4>¿Cómo funciona el chatbot?</h4>
                            <p>Daxia comenzará una conversación contigo dónde podrás expresar como te sientes el dia de hoy</p>
                        </div>
                        <div class="note">
                            <h4>¿Se quedan guardadas las conversaciones?</h4>
                            <p>Por confidencialidad no se guardan, lo que sí se guardan en la pantalla principal son las recomendaciones que te hace Daxia junto con la fecha correspondiente.</p>
                        </div>
                        <div class="note">
                            <h4>¿Hasta dónde me ayudará Daxia?</h4>
                            <p>Daxia no busca suplantar el trabajo de un psicológo promedio, pero dará consejos o diagnósticos lo más cercanos a la realidad. Su información está respaldada por estudios válidados por psicológos</p>
                        </div>
                        <div class="note">
                            <h4>¿Qué hacer si noto que Daxia me ayuda pero considero tener un problema más grave?</h4>
                            <p>Se recomienda buscar ayuda profesional</p>
                        </div>
                        <div class="note">
                            <h4>¿Quieres conocer más sobre este proyecto o hacer sugerencias de mejora sobre nuestro servicio?</h4>
                            <p>
                                Envía correo a cualquiera de los siguientes correos:
                        <b>azucenacamargo7@gmail.com</b>
                            </p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary custom-btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary custom-btn-primary">Save changes</button>
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
    </form>
</body>
<script src="../../Scripts/bootstrap.min.js"></script>
</html>
