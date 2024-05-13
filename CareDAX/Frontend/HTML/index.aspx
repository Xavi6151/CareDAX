
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CareDAX.Frontend.HTML.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio</title>
    <link rel="stylesheet" href="../CSS/Estios_index.css" type="text/css" />
</head>
<body class="container">
    <form id="form1" runat="server">
        <div>
            <div class="form-container">
                <p class="title">Inicio de Sesión</p>
                        
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <!-- Aquí colocas los elementos que quieres actualizar -->
                        <asp:Label ID="lblMensajeError" class="subtitle" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
             
                <div class="input-group">
                    <label for="TextBox1">Usuario</label>
                    <asp:TextBox ID="TextBox1" class="caja" runat="server"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="TextBox2">Contraseña</label>
                    <asp:TextBox ID="TextBox2" type="password" class="caja" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="btnEnviar" class="sign" runat="server" Text="ENTRAR" OnClick="btnEnviar_Click"/>
                <asp:Button ID="btnPTS" class="sign" runat="server" Text="REGISTRARSE" OnClick="btnPTS_Click" />
            </div>
        </div>
    </form>
</body>
</html>
