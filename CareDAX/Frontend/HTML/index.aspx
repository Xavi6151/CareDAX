
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CareDAX.Frontend.HTML.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="btnEnviar" runat="server" Text="Button" OnClick="btnEnviar_Click" />
            <asp:Button ID="btnPTS" runat="server" Text="Button" OnClick="btnPTS_Click" />
        </div>
    </form>
</body>
</html>
