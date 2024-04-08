<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ansiedad.aspx.cs" Inherits="CareDAX.Frontend.HTML.Ansiedad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clasificación de Ansiedad</title>
    <link rel="stylesheet" href="../CSS/Estilos_ansiedad.css" type="text/css"/>
</head>
    
<body>
    <form id="form1" runat="server">
    <div class="ans-container">
        <div class="ans-description">
            <asp:Label Id="description" runat="server" Text="Label"></asp:Label>
        </div>

        <div class="ans-table">
            <asp:Table Id="table1" CssClass="ans-table1" runat="server">
                <%--Fila 1--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblCol1" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:Label Id="lblCol2" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:Label Id="lblCol3" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:Label Id="lblCol4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:Label Id="lblCol5" runat="server" Text="Label"></asp:Label></asp:TableCell>
                </asp:TableRow>

                <%--Fila 2--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues1" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb1" runat="server" GroupName="Group1" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb2" runat="server" GroupName="Group1" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb3" runat="server" GroupName="Group1" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb4" runat="server" GroupName="Group1" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 3--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues2" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb5" runat="server" GroupName="Group2" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb6" runat="server" GroupName="Group2" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb7" runat="server" GroupName="Group2" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb8" runat="server" GroupName="Group2" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 4--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues3" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb9" runat="server" GroupName="Group3" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb10" runat="server" GroupName="Group3" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb11" runat="server" GroupName="Group3" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb12" runat="server" GroupName="Group3" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 5--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb13" runat="server" GroupName="Group4" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb14" runat="server" GroupName="Group4" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb15" runat="server" GroupName="Group4" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb16" runat="server" GroupName="Group4" /></asp:TableCell>
                </asp:TableRow>

                 <%--Fila 6--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues5" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb17" runat="server" GroupName="Group5" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb18" runat="server" GroupName="Group5" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb19" runat="server" GroupName="Group5" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb20" runat="server" GroupName="Group5" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 7--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues6" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb21" runat="server" GroupName="Group6" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb22" runat="server" GroupName="Group6" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb23" runat="server" GroupName="Group6" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb24" runat="server" GroupName="Group6" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 8--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues7" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb25" runat="server" GroupName="Group7" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb26" runat="server" GroupName="Group7" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb27" runat="server" GroupName="Group7" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb28" runat="server" GroupName="Group7" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 9--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues8" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb29" runat="server" GroupName="Group8" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb30" runat="server" GroupName="Group8" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb31" runat="server" GroupName="Group8" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb32" runat="server" GroupName="Group8" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 10--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues9" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb33" runat="server" GroupName="Group9" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb34" runat="server" GroupName="Group9" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb35" runat="server" GroupName="Group9" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb36" runat="server" GroupName="Group9" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 11--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues10" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb37" runat="server" GroupName="Group10" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb38" runat="server" GroupName="Group10" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb39" runat="server" GroupName="Group10" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb40" runat="server" GroupName="Group10" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 12--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues11" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb41" runat="server" GroupName="Group11" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb42" runat="server" GroupName="Group11" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb43" runat="server" GroupName="Group11" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb44" runat="server" GroupName="Group11" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 13--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues12" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb45" runat="server" GroupName="Group12" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb46" runat="server" GroupName="Group12" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb47" runat="server" GroupName="Group12" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb48" runat="server" GroupName="Group12" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 14--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues13" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb49" runat="server" GroupName="Group13" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb50" runat="server" GroupName="Group13" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb51" runat="server" GroupName="Group13" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb52" runat="server" GroupName="Group13" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 15--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues14" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb53" runat="server" GroupName="Group14" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb54" runat="server" GroupName="Group14" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb55" runat="server" GroupName="Group14" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb56" runat="server" GroupName="Group14" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 16--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues15" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb57" runat="server" GroupName="Group15" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb58" runat="server" GroupName="Group15" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb59" runat="server" GroupName="Group15" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb60" runat="server" GroupName="Group15" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 17--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues16" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb61" runat="server" GroupName="Group16" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb62" runat="server" GroupName="Group16" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb63" runat="server" GroupName="Group16" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb64" runat="server" GroupName="Group16" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 18--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues17" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb65" runat="server" GroupName="Group17" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb66" runat="server" GroupName="Group17" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb67" runat="server" GroupName="Group17" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb68" runat="server" GroupName="Group17" /></asp:TableCell>
                </asp:TableRow>

                <%--Fila 19--%>
                <asp:TableRow>
                    <asp:TableCell><asp:Label Id="lblQues18" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb69" runat="server" GroupName="Group18" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb70" runat="server" GroupName="Group18" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb71" runat="server" GroupName="Group18" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton Id="rdb72" runat="server" GroupName="Group18" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <%--Botones de regresar y calcular--%>
        <div class="anxiety_buttons">
            <asp:Button Id="btnReturn" CssClass="btn1" runat="server" Text="Button" OnClick="btnReturn_Click" />
            <asp:Button Id="btnCalculate" CssClass="btn1" runat="server" Text="Button" OnClick="btnCalculate_Click" />
        </div>
    </div>
</form>
</body>
</html>
