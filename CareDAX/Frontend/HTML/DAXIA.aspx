<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DAXIA.aspx.cs" Inherits="CareDAX.Frontend.HTML.DAXIA" %>

<!DOCTYPE html> <!--FormWeb-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../CSS/Estilos.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="chat-container">
            <!--Nombre de la IA-->
            <div class="chat-tab"><asp:Label runat="server" Id="nombre" Text="Label"></asp:Label></div>
            <!--Mensaje de aclaración-->
            <div class="chat-messages"><p><asp:Label Id="Infomessage" runat="server" Text="Label"></asp:Label></p></div>
            <!--Solicitud-->
            <div class="chat-messages"><p><asp:Label Id="request" runat="server" Text="Label"></asp:Label></p></div>
        </div>
    </form>
</body>
</html>
