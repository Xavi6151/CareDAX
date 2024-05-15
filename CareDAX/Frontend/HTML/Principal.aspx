<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="CareDAX.Frontend.HTML.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
    <link rel="stylesheet" href="../CSS/Estilos_Principal.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class="container">

        <!--NAVBAR-->       
        <div class="button-container">
            <%--<button class="button" >
               <%-- <%--<asp:Button ID="Home" runat="server" class="button-content_Test transparente" OnClick="Home_Click"/>--%>
               <%-- <svg
                    class="icon"
                    stroke="currentColor"
                    fill="currentColor"
                    stroke-width="0"
                    viewBox="0 0 1024 1024"
                    height="1em"
                    width="1em"
                    xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M946.5 505L560.1 118.8l-25.9-25.9a31.5 31.5 0 0 0-44.4 0L77.5 505a63.9 63.9 0 0 0-18.8 46c.4 35.2 29.7 63.3 64.9 63.3h42.5V940h691.8V614.3h43.4c17.1 0 33.2-6.7 45.3-18.8a63.6 63.6 0 0 0 18.7-45.3c0-17-6.7-33.1-18.8-45.2zM568 868H456V664h112v204zm217.9-325.7V868H632V640c0-22.1-17.9-40-40-40H432c-22.1 0-40 17.9-40 40v228H238.1V542.3h-96l370-369.7 23.1 23.1L882 542.3h-96.1z">
                    </path>
                </svg>
            </button>--%>
            <button class="button">
                <svg
                    class="icon"
                    stroke="currentColor"
                    fill="none"
                    stroke-width="2"
                    viewBox="0 0 24 24"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    height="1em"
                    width="1em"
                    xmlns="http://www.w3.org/2000/svg">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="12" y1="16" x2="12" y2="12"></line>
                    <line x1="12" y1="8" x2="12" y2="8"></line>
                </svg>
            </button>   
        </div>
          <!--CARDS: agregar onclick en cada uno para que abra los tests &  PRESENTACIÓN DAXIA Y CHAT-->
        <div class="bottom-bottomDAXIA">
            <asp:Button ID="ChatBot" runat="server" BorderStyle="Dotted" Text="ChatBot" class="buttonDAXIA transparente" OnClick="ChatBot_Click" />
        </div>
        <div class="card-container">
            <div class="card-containerDAXIA2" style="transform: translate(-50%, 0%);">
                <div class="cardDAXIA2">
                    <div class="img-content">
                        <b style="color: turquoise; border-color: white;">DAXIA</b>
                        <img src="../../Images/DAXIA_transparente.png" alt="Imagen de perfil" class="ajuste">

                        <%--<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke-miterlimit="2" stroke-linejoin="round" fill-rule="evenodd" clip-rule="evenodd">--%>
                        <%--<path fill-rule="nonzero" d="m2 19v-14c0-.552.447-1 1-1 .542 0 4.418 2.028 9 2.028 4.593 0 8.456-2.028 9-2.028.55 0 1 .447 1 1v14c0 .553-.45 1-1 1-.544 0-4.407-2.028-9-2.028-4.582 0-8.458 2.028-9 2.028-.553 0-1-.448-1-1zm1.5-.791 6.449-7.691c.289-.344.879-.338 1.16.012 0 0 1.954 2.434 1.954 2.434l1.704-1.283c.319-.24.816-.168 1.054.154l4.679 6.335v-12.44c-1.58.58-4.819 1.798-8.5 1.798-3.672 0-6.918-1.218-8.5-1.799zm2.657-.834c1.623-.471 3.657-.903 5.843-.903 2.309 0 4.444.479 6.105.98l-3.041-4.117-1.065.802.275.344c.259.323.206.796-.117 1.054-.323.259-.795.207-1.054-.117l-2.591-3.236zm.698-9.534c-1.051 0-1.905.854-1.905 1.905s.854 1.904 1.905 1.904 1.904-.853 1.904-1.904-.853-1.905-1.904-1.905zm0 1.3c.333 0 .604.271.604.605 0 .333-.271.604-.604.604-.334 0-.605-.271-.605-.604 0-.334.271-.605.605-.605z"></path></svg>--%>
                    </div>
                    <div class="content">
                        <span class="card__subtitle">Podrás contarle todo lo que por sentirte juzgado no puedes compartir a nadie más, podrá determinar un nivel del padecimiento que podrías tener (estrés, ansiedad o depresión) al igual que recomendaciones que podrán ayudarte a disminuirlo.
                 <br /><b>No somos terapeutas y no reemplazaremos uno.</b>
                            <br />
                            Consulta el apartado de "Ayuda" para atender dudas sobre DAXIA.
                        </span>

                    </div>

                </div>
            </div>
            <div class="card">
                <div class="content" style="    font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
">
                    <div class="back">
                        <div class="back-content">
                            <!-- Reemplazar el contenido del svg con el ícono de una persona -->
                            <svg xmlns="http://www.w3.org/2000/svg" height="50px" width="50px" viewBox="0 0 512 512">
                                <path d="M256 288c70.688 0 128-57.312 128-128S326.688 32 256 32 128 89.312 128 160s57.312 128 128 128zm0 32c-96 0-224 49.28-224 147.712V480h448v-11.296C480 369.28 352 320 256 320z" fill="#ffffff" />
                            </svg>
                            <strong>Nivel Estrés</strong>
                        </div>
                    </div>
                    <div class="front">
                        <div class="img">
                            <div class="circle"></div>
                            <div class="circle" id="right"></div>
                            <div class="circle" id="bottom"></div>
                        </div>
                        <div class="front-content">
                            <small class="badge">Estrés</small>

                            <div class="description">
                                <div class="title">
                                    <p class="title">
                                        <asp:Label ID="CategoriaEstres" runat="server" Text="Label"></asp:Label>
                                    </p>
                                    <svg fill-rule="nonzero" height="15px" width="15px" viewBox="0,0,256,256" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
                                        <g style="mix-blend-mode: normal" text-anchor="none" font-size="none" font-weight="none" font-family="none" stroke-dashoffset="0" stroke-dasharray="" stroke-miterlimit="10" stroke-linejoin="miter" stroke-linecap="butt" stroke-width="1" stroke="none" fill-rule="nonzero" fill="#20c997">
                                            <g transform="scale(8,8)">
                                                <path d="M25,27l-9,-6.75l-9,6.75v-23h18z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <div class="back">
                        <div class="back-content">
                            <!-- Reemplazar el contenido del svg con el ícono de una persona -->
                            <svg xmlns="http://www.w3.org/2000/svg" height="50px" width="50px" viewBox="0 0 512 512">
                                <path d="M256 288c70.688 0 128-57.312 128-128S326.688 32 256 32 128 89.312 128 160s57.312 128 128 128zm0 32c-96 0-224 49.28-224 147.712V480h448v-11.296C480 369.28 352 320 256 320z" fill="#ffffff" />
                            </svg>
                            <strong>Nivel Ansiedad</strong>
                        </div>
                    </div>
                    <div class="front">
                        <div class="img">
                            <div class="circle"></div>
                            <div class="circle" id="right"></div>
                            <div class="circle" id="bottom"></div>
                        </div>
                        <div class="front-content">
                            <small class="badge">Ansiedad</small>
                            <div class="description">
                                <div class="title">
                                    <p class="title">
                                        <asp:Label ID="CategoriaAnsiedad" runat="server" Text="Label"></asp:Label>
                                    </p>
                                    <svg fill-rule="nonzero" height="15px" width="15px" viewBox="0,0,256,256" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
                                        <g style="mix-blend-mode: normal" text-anchor="none" font-size="none" font-weight="none" font-family="none" stroke-dashoffset="0" stroke-dasharray="" stroke-miterlimit="10" stroke-linejoin="miter" stroke-linecap="butt" stroke-width="1" stroke="none" fill-rule="nonzero" fill="#20c997">
                                            <g transform="scale(8,8)">
                                                <path d="M25,27l-9,-6.75l-9,6.75v-23h18z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="content">
                    <div class="back">
                        <div class="back-content">
                            <!-- Reemplazar el contenido del svg con el ícono de una persona -->
                            <svg xmlns="http://www.w3.org/2000/svg" height="50px" width="50px" viewBox="0 0 512 512">
                                <path d="M256 288c70.688 0 128-57.312 128-128S326.688 32 256 32 128 89.312 128 160s57.312 128 128 128zm0 32c-96 0-224 49.28-224 147.712V480h448v-11.296C480 369.28 352 320 256 320z" fill="#ffffff" />
                            </svg>
                            <strong>Nivel Depresión</strong>
                        </div>
                    </div>
                    <div class="front">
                        <div class="img">
                            <div class="circle"></div>
                            <div class="circle" id="right"></div>
                            <div class="circle" id="bottom"></div>
                        </div>
                        <div class="front-content">
                            <small class="badge">Depresión</small>
                            <div class="description">
                                <div class="title">
                                    <p class="title">
                                        <asp:Label ID="CategoriaDepresion" runat="server" Text="Label"></asp:Label>
                                    </p>
                                    <svg fill-rule="nonzero" height="15px" width="15px" viewBox="0,0,256,256" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg">
                                        <g style="mix-blend-mode: normal" text-anchor="none" font-size="none" font-weight="none" font-family="none" stroke-dashoffset="0" stroke-dasharray="" stroke-miterlimit="10" stroke-linejoin="miter" stroke-linecap="butt" stroke-width="1" stroke="none" fill-rule="nonzero" fill="#20c997">
                                            <g transform="scale(8,8)">
                                                <path d="M25,27l-9,-6.75l-9,6.75v-23h18z"></path>
                                            </g>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--TESTs -->
        <div class="button_containerTest">
            <button class="buttonTest">
                <asp:Button ID="TestEstres" runat="server" Text="Test Estrés" class="button-content_Test transparente" OnClick="TestEstres_Click"/>
            </button>
            <button class="buttonTest">
                <asp:Button ID="TestAnsiedad" runat="server" Text="Test Ansiedad" class="button-content_Test transparente"  OnClick="TestAnsiedad_Click"/>
            </button>
            <button class="buttonTest">
                <asp:Button ID="TestDepresion" runat="server" Text="Test Depresión" class="button-content_Test transparente" OnClick="TestDepresion_Click" />
            </button>
        </div>
        
        <!--PERFIL-->
        <button id="btn-messagePerfil" class="button-messagePerfil">
            <div class="content-avatar">
                <div class="status-user"></div>
                <div class="avatar" style="display: flex; justify-content: center; align-items: center;">
                    <img src="../../Images/DAXIA.jpg" alt="Avatar" style="max-width: 100%; max-height: 100%;">
                </div>
            </div>
            <div class="notice-content">
                <div class="username">
                    <asp:Label ID="UserName" runat="server"></asp:Label>
                </div>
                <asp:Button ID="CerrarSesion" runat="server" OnClick="CerrarSesion_Click" CssClass="transparente" Text="Cerrar Sesión"></asp:Button>
            </div>
        </button>

      
    </form> 
        <!--HELP-->
      <%--  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static"   >
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
                 <b>caredax@gmail.com</b>
                     </p>
                 </div>
             </div>
         </div>
     </div>
 </div>--%>
</body>
<script>

</script>
</html>

