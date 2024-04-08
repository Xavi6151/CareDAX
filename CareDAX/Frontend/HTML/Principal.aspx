<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="CareDAX.Frontend.HTML.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
    <link rel="stylesheet" href="../CSS/Estilos_Principal.css" type="text/css"/>
    <link rel="stylesheet" href="../../Content/bootstrap.min.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar bg-info">
              <div class="container-fluid">
                    <a class="navbar-link btn btn-primary" data-bs-toggle="offcanvas" href="#staticBackdrop" role="button" aria-controls="staticBackdrop">Menú</a>
                    <a class="navbar-brand">CareDaX</a>
                    <a class="navbar-link" href="#"><asp:Image Id="Image2" runat="server" ImageUrl="~/Images/hombre.png" width="45" height="45"/></a> 
              </div>
        </nav>

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
                    <asp:Label Id="Label1" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label2" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label3" runat="server" Text="Label"></asp:Label><br/>
                </div>
                <div class="ans_words">
                    <asp:Label Id="Label4" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label5" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label6" runat="server" Text="Label"></asp:Label><br/>
                </div>

                <div class="dep_words">
                    <asp:Label Id="Label7" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label8" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label9" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label10" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label11" runat="server" Text="Label"></asp:Label><br/>
                </div>
            </div>
            <div class="IA">
                <asp:Button Id="Button4" class="btn btn-success" runat="server" Text="Button" OnClick="Button4_Click"/><br/>
            </div>

        </div>
    </form>
</body>
<script src="../../Scripts/bootstrap.min.js"></script>
</html>
