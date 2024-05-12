<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DAXIA.aspx.cs" Inherits="CareDAX.Frontend.HTML.DAXIA" %>

<!DOCTYPE html> <!--FormWeb-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DAXIA</title>
    <link rel="stylesheet" href="../CSS/Estilos_DAXIA.css"/>
        <script>
            window.addEventListener('load', function () {
                document.addEventListener('keydown', function (e) {
                    if (e.key === 'Enter') {
                        e.preventDefault();
                    }
                });
            });
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
    <!--Ayuda del mensaje 1-->
    <script src="https://code.jquery.com/jquery-3.7.1.slim.min.js" integrity="sha256-kmHvs0B+OpCW5GVHUNjv9rOmY0IvSIRcf7zGUDTDQM8=" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="chat-container">
                    <!--Nombre de la IA-->
                    <div class="chat-tab"><asp:Label runat="server" Id="nombre" Text="Label"></asp:Label></div>

                    <!--Contenedor para la conversacion-->
                    <div class="text-container">
                        <!--Mensaje de aclaración-->
                        <div class="chat-messages"><p><asp:Label Id="Infomessage" runat="server" TextMode="HtmlDecode"></asp:Label></p></div>

                        <!--Mensaje 1 del usuario-->
                        <div class="chat-messages1" id="labelContainer" runat="server"><p><asp:Label Id="Label1" runat="server" TextMode="HtmlDecode"></asp:Label></p></div>

                        <!--Mensaje Recomendaciones-->
                        <div class="chat-messages2" id="lblRecomendaciones" runat="server"><p><asp:Label Id="Label2" runat="server" TextMode="HtmlDecode"></asp:Label></p>
                            <!--<p runat="server" id="lbl21"></p>-->
                        </div>
                    </div>

                    <!--Parte de escritura para el usuario-->
                    <div class="User-Writing">
                        <div class="input-container">
                            <asp:TextBox Id="Input_User" CssClass="Write-input" runat="server" placeholder="Escribe aquí"></asp:TextBox>
                            <asp:Button Id="btnEnviar" runat="server" Text="" OnClick="btnEnviar_Click" UseSubmitBehavior="false"/>
                            <asp:Button Id="btnRegresar" runat="server" Text="" OnClick="btnRegresar_Click" UseSubmitBehavior="false"/>
                        </div>
                    </div>
                </div>
                <asp:Timer Id="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>
                <asp:Timer Id="Timer2" runat="server" OnTick="Timer2_Tick"></asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
