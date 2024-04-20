
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CareDAX.Frontend.HTML.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
    <link rel="stylesheet" href="../../Content/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../CSS/Estios_index.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <h1>CareDaX</h1>
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                    <asp:Button ID="btnEnviar" class="btn btn-success" runat="server" Text="Iniciar" OnClick="btnEnviar_Click" />
                    <asp:Button ID="btnPTS" class="btn btn-dark" runat="server" Text="Extra" OnClick="btnPTS_Click" />
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
