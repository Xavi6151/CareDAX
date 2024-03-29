<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="CareDAX.Frontend.HTML.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Principal</title>
    <link rel="stylesheet" href="../CSS/Estilos_Principal.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="prin-container">
            <div class="image_user">
                <asp:Image Id="Image_User" runat="server" ImageUrl="~/Images/hombre.png"/> <%--Se puede cambiar hombre por mujer--%>
            </div>

            <div class="words">

                <div class="est_words">
                    <asp:Label Id="Label1" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label2" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label3" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Button Id="Button1" runat="server" Text="Button" OnClick="Button1_Click"/><br/>
                </div>

                <div class="ans_words">
                    <asp:Label Id="Label4" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label5" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label6" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Button Id="Button2" runat="server" Text="Button" OnClick="Button2_Click"/><br/>
                </div>

                <div class="dep_words">
                    <asp:Label Id="Label7" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label8" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label9" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label10" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Label Id="Label11" runat="server" Text="Label"></asp:Label><br/>
                    <asp:Button Id="Button3" runat="server" Text="Button" OnClick="Button3_Click"/><br/>
                </div>
            </div>
            <div class="IA">
                <asp:Button Id="Button4" runat="server" Text="Button" OnClick="Button4_Click"/><br/>
            </div>

        </div>
    </form>
</body>
</html>
