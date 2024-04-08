<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Puntuacion.aspx.cs" Inherits="CareDAX.Frontend.HTML.Puntuacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recomendaciones eficientes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="selection"/>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="selection"/>
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="selection"/>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btnSiguiente_Click"/>
        </div>
    </form>
</body>
</html>
