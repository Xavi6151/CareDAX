<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Depresion.aspx.cs" Inherits="CareDAX.Frontend.HTML.Depresion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clasificación de Depresión</title>
    <link rel="stylesheet" href="../CSS/Estilos_depresion.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dep-container">
            <div class="dep-description">
                <asp:Label ID="description" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
