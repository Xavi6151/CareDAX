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
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle w-100" type="button" data-bs-toggle="dropdown" style="background-color: rgb(17,157,164); font-size: 17px;">
                        Tests
                    </button>
                    <ul class="dropdown-menu w-100 text-center show" style="background-color: rgb(174,236,239);">
                        <li><a class="dropdown-item" href="Estres.aspx" style="color: rgb(48,102,190); font-size: 17px;">Estrés</a></li>
                        <li><a class="dropdown-item" href="Ansiedad.aspx" style="color: rgb(48,102,190); font-size: 17px;">Ansiedad</a></li>
                        <li><a class="dropdown-item" href="Depresion.aspx" style="color: rgb(48,102,190); font-size: 17px;">Depresión</a></li>
                    </ul>
                </div>
            </div>
            <a class="navbar-brand" style="color: white; font-size: 24px;">CareDaX</a>
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
                            <p>Por confidencialidad no se guardan, lo que sí se guarda en la pantalla principal son las recomendaciones que te hace Daxia junto con la fecha correspondiente.</p>
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
        <!-- Perfil 
        <div id="tarjetaFlotante" class="tarjeta">
            <div class="contenido">
                <asp:Label ID="Usuario" runat="server" Text="Label"></asp:Label>
                <button id="editarUsuarioBtn" type="button" class="btn-editar-perfil ">✏️</button></h5>
                <button id="btn-cerrarSesion" type="button" class="btn btn-secondary custom-btn-primary">Cerrar sesión</button>
            </div>
        </div>-->
        <div id="tarjetaFlotante" class="tarjeta">
             <div class="card">
                <div class="card__img"><svg width="100%" xmlns="http://www.w3.org/2000/svg"><rect height="450" width="540" fill="#ffffff"></rect><defs><linearGradient gradientTransform="rotate(222,648,379)" y2="100%" y1="0" x2="0" x1="0" gradientUnits="userSpaceOnUse" id="a"><stop stop-color="#ffffff" offset="0"></stop><stop stop-color="#FC726E" offset="1"></stop></linearGradient><pattern viewBox="0 0 1080 900" y="0" x="0" height="250" width="300" id="b" patternUnits="userSpaceOnUse"><g fill-opacity="0.5"><polygon points="90 150 0 300 180 300" fill="#444"></polygon><polygon points="90 150 180 0 0 0"></polygon><polygon points="270 150 360 0 180 0" fill="#AAA"></polygon><polygon points="450 150 360 300 540 300" fill="#DDD"></polygon><polygon points="450 150 540 0 360 0" fill="#999"></polygon><polygon points="630 150 540 300 720 300"></polygon><polygon points="630 150 720 0 540 0" fill="#DDD"></polygon><polygon points="810 150 720 300 900 300" fill="#444"></polygon><polygon points="810 150 900 0 720 0" fill="#FFF"></polygon><polygon points="990 150 900 300 1080 300" fill="#DDD"></polygon><polygon points="990 150 1080 0 900 0" fill="#444"></polygon><polygon points="90 450 0 600 180 600" fill="#DDD"></polygon><polygon points="90 450 180 300 0 300"></polygon><polygon points="270 450 180 600 360 600" fill="#666"></polygon><polygon points="270 450 360 300 180 300" fill="#AAA"></polygon><polygon points="450 450 360 600 540 600" fill="#DDD"></polygon><polygon points="450 450 540 300 360 300" fill="#999"></polygon><polygon points="630 450 540 600 720 600" fill="#999"></polygon><polygon points="630 450 720 300 540 300" fill="#FFF"></polygon><polygon points="810 450 720 600 900 600"></polygon><polygon points="810 450 900 300 720 300" fill="#DDD"></polygon><polygon points="990 450 900 600 1080 600" fill="#AAA"></polygon><polygon points="990 450 1080 300 900 300" fill="#444"></polygon><polygon points="90 750 0 900 180 900" fill="#222"></polygon><polygon points="270 750 180 900 360 900"></polygon><polygon points="270 750 360 600 180 600" fill="#DDD"></polygon><polygon points="450 750 540 600 360 600"></polygon><polygon points="630 750 540 900 720 900"></polygon><polygon points="630 750 720 600 540 600" fill="#444"></polygon><polygon points="810 750 720 900 900 900" fill="#AAA"></polygon><polygon points="810 750 900 600 720 600" fill="#666"></polygon><polygon points="990 750 900 900 1080 900" fill="#999"></polygon><polygon points="180 0 90 150 270 150" fill="#999"></polygon><polygon points="360 0 270 150 450 150" fill="#444"></polygon><polygon points="540 0 450 150 630 150" fill="#FFF"></polygon><polygon points="900 0 810 150 990 150"></polygon><polygon points="0 300 -90 450 90 450" fill="#222"></polygon><polygon points="0 300 90 150 -90 150" fill="#FFF"></polygon><polygon points="180 300 90 450 270 450" fill="#FFF"></polygon><polygon points="180 300 270 150 90 150" fill="#666"></polygon><polygon points="360 300 270 450 450 450" fill="#222"></polygon><polygon points="360 300 450 150 270 150" fill="#FFF"></polygon><polygon points="540 300 450 450 630 450" fill="#444"></polygon><polygon points="540 300 630 150 450 150" fill="#222"></polygon><polygon points="720 300 630 450 810 450" fill="#AAA"></polygon><polygon points="720 300 810 150 630 150" fill="#666"></polygon><polygon points="900 300 810 450 990 450" fill="#FFF"></polygon><polygon points="900 300 990 150 810 150" fill="#999"></polygon><polygon points="0 600 -90 750 90 750"></polygon><polygon points="0 600 90 450 -90 450" fill="#666"></polygon><polygon points="180 600 90 750 270 750" fill="#AAA"></polygon><polygon points="180 600 270 450 90 450" fill="#444"></polygon><polygon points="360 600 270 750 450 750" fill="#444"></polygon><polygon points="360 600 450 450 270 450" fill="#999"></polygon><polygon points="540 600 630 450 450 450" fill="#666"></polygon><polygon points="720 600 630 750 810 750" fill="#222"></polygon><polygon points="900 600 810 750 990 750" fill="#FFF"></polygon><polygon points="900 600 990 450 810 450" fill="#222"></polygon><polygon points="0 900 90 750 -90 750" fill="#DDD"></polygon><polygon points="180 900 270 750 90 750" fill="#444"></polygon><polygon points="360 900 450 750 270 750" fill="#FFF"></polygon><polygon points="540 900 630 750 450 750" fill="#AAA"></polygon><polygon points="720 900 810 750 630 750" fill="#FFF"></polygon><polygon points="900 900 990 750 810 750" fill="#222"></polygon><polygon points="1080 300 990 450 1170 450" fill="#222"></polygon><polygon points="1080 300 1170 150 990 150" fill="#FFF"></polygon><polygon points="1080 600 990 750 1170 750"></polygon><polygon points="1080 600 1170 450 990 450" fill="#666"></polygon><polygon points="1080 900 1170 750 990 750" fill="#DDD"></polygon></g></pattern></defs><rect height="100%" width="100%" fill="url(#a)" y="0" x="0"></rect><rect height="100%" width="100%" fill="url(#b)" y="0" x="0"></rect></svg></div>
                <div class="card__avatar"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 128"><circle r="60" fill="#ff8475" cy="64" cx="64"></circle><circle r="48" opacity=".4" fill="#f85565" cy="64" cx="64"></circle><path fill="#7f3838" d="m64 14a32 32 0 0 1 32 32v41a6 6 0 0 1 -6 6h-52a6 6 0 0 1 -6-6v-41a32 32 0 0 1 32-32z"></path><path opacity=".4" fill="#393c54" d="m62.73 22h2.54a23.73 23.73 0 0 1 23.73 23.73v42.82a4.45 4.45 0 0 1 -4.45 4.45h-41.1a4.45 4.45 0 0 1 -4.45-4.45v-42.82a23.73 23.73 0 0 1 23.73-23.73z"></path><circle r="7" fill="#fbc0aa" cy="65" cx="89"></circle><path fill="#4bc190" d="m64 124a59.67 59.67 0 0 0 34.69-11.06l-3.32-9.3a10 10 0 0 0 -9.37-6.64h-43.95a10 10 0 0 0 -9.42 6.64l-3.32 9.3a59.67 59.67 0 0 0 34.69 11.06z"></path><path opacity=".3" fill="#356cb6" d="m45 110 5.55 2.92-2.55 8.92a60.14 60.14 0 0 0 9 1.74v-27.08l-12.38 10.25a2 2 0 0 0 .38 3.25z"></path><path opacity=".3" fill="#356cb6" d="m71 96.5v27.09a60.14 60.14 0 0 0 9-1.74l-2.54-8.93 5.54-2.92a2 2 0 0 0 .41-3.25z"></path><path fill="#fff" d="m57 123.68a58.54 58.54 0 0 0 14 0v-25.68h-14z"></path><path stroke-width="14" stroke-linejoin="round" stroke-linecap="round" stroke="#fbc0aa" fill="none" d="m64 88.75v9.75"></path><circle r="7" fill="#fbc0aa" cy="65" cx="39"></circle><path fill="#ffd8c9" d="m64 91a25 25 0 0 1 -25-25v-16.48a25 25 0 1 1 50 0v16.48a25 25 0 0 1 -25 25z"></path><path fill="#bc5b57" d="m91.49 51.12v-4.72c0-14.95-11.71-27.61-26.66-28a27.51 27.51 0 0 0 -28.32 27.42v5.33a2 2 0 0 0 2 2h6.81a8 8 0 0 0 6.5-3.33l4.94-6.88a18.45 18.45 0 0 1 1.37 1.63 22.84 22.84 0 0 0 17.87 8.58h13.45a2 2 0 0 0 2.04-2.03z"></path><path style="fill:none;stroke-linecap:round;stroke:#fff;stroke-miterlimit:10;stroke-width:2;opacity:.1" d="m62.76 36.94c4.24 8.74 10.71 10.21 16.09 10.21h5"></path><path style="fill:none;stroke-linecap:round;stroke:#fff;stroke-miterlimit:10;stroke-width:2;opacity:.1" d="m71 35c2.52 5.22 6.39 6.09 9.6 6.09h3"></path><circle r="3" fill="#515570" cy="62.28" cx="76"></circle><circle r="3" fill="#515570" cy="62.28" cx="52"></circle><ellipse ry="2.98" rx="4.58" opacity=".1" fill="#f85565" cy="69.67" cx="50.42"></ellipse><ellipse ry="2.98" rx="4.58" opacity=".1" fill="#f85565" cy="69.67" cx="77.58"></ellipse><g stroke-linejoin="round" stroke-linecap="round" fill="none"><path stroke-width="4" stroke="#fbc0aa" d="m64 67v4"></path><path stroke-width="2" stroke="#515570" opacity=".2" d="m55 56h-9.25"></path><path stroke-width="2" stroke="#515570" opacity=".2" d="m82 56h-9.25"></path></g><path opacity=".4" fill="#f85565" d="m64 84c5 0 7-3 7-3h-14s2 3 7 3z"></path><path fill="#f85565" d="m65.07 78.93-.55.55a.73.73 0 0 1 -1 0l-.55-.55c-1.14-1.14-2.93-.93-4.27.47l-1.7 1.6h14l-1.66-1.6c-1.34-1.4-3.13-1.61-4.27-.47z"></path></svg></div>
                <div class="card__title"><asp:Label ID="UsuarioPerfil" runat="server" Text="Label"></asp:Label></div>
                <div class="card__wrapper">
                    <button class="card__btn">Cerrar Sesión</button>
                </div>
            </div>
        </div>
        

        <!--Categorizaciones-->

        <div class="container" style="margin-top: 50px;">
            <h4>Tus resultados</h4>
            <div class="row">
                <div class="col-md-4">
                    <div class="card border-2 row justify-content-center m-5" style="width: 19rem;">
                        <img src="../../Images/estres.jpeg" class="card-img-top p-2" alt=""/>
                        <div class="card-body">
                            <h5 class="card-title">Estrés</h5>
                            <asp:Label ID="CategoriaEstres" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-2 row justify-content-center p-2 m-5 " style="width: 19rem;">
                        <img src="../../Images/ansiedad.jpeg" class="card-img-top p-2" alt=""/>
                        <div class="card-body">
                            <h5 class="card-title">Ansiedad</h5>
                            <asp:Label ID="CategoriaAnsiedad" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-2 row justify-content-center p-2 m-5 " style="width: 19rem;">
                        <img src="../../Images/depresion.jpeg" class="card-img-top p-2" alt=""/>
                        <div class="card-body">
                            <h5 class="card-title">Depresión</h5>
                            <asp:Label ID="CategoriaDepresion" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="prin-container">
    <div class="IA">
        <button class="chatBtn">
            <span class="tooltip">Hablar con DAXIA</span>
            <asp:Button ID="ButtonRec" runat="server" OnClick="ButtonRec_Click" />
        </button>
    </div>
</div>
    </form>
</body>
<script>
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

