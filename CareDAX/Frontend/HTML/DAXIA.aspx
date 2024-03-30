<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DAXIA.aspx.cs" Inherits="CareDAX.Frontend.HTML.DAXIA" %>

<!DOCTYPE html> <!--FormWeb-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../CSS/Estilos_DAXIA.css"/>
    <script>
        var fullText = '<%= InfomessageValue %>';
        var index = 0;
        var interval = setInterval(function() {
            var infomessage = document.getElementById('<%= Infomessage.ClientID %>');
            if (index < fullText.length) {
                infomessage.innerHTML += fullText.charAt(index);
                index++;
            } else {
                clearInterval(interval);
            }
        }, 10); 
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="chat-container">
            <!--Nombre de la IA-->
            <div class="chat-tab"><asp:Label runat="server" Id="nombre" Text="Label"></asp:Label></div>


            <!--Contenedor para la conversacion-->
            <div class="text-container">
                <!--Mensaje de aclaración-->
                <div class="chat-messages"><p><asp:Label Id="Infomessage" runat="server" TextMode="HtmlDecode"></asp:Label></p></div>

                <!--Caja-->
                <div><p><asp:Label Id="Label1" runat="server" Text="asdasdasdasd"></asp:Label></p></div>
            </div>
        </div>
    </form>
</body>
</html>
