<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ansiedad.aspx.cs" Inherits="CareDAX.Frontend.HTML.Ansiedad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clasificación de Ansiedad</title>
    <link rel="stylesheet" href="../CSS/Estilos_ansiedad.css" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h1 class="text-center mb-4">Clasificación de Ansiedad</h1>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <asp:Label ID="description" runat="server" Text="Label"></asp:Label>
                            </div>

                            <div class="ans-table form-group">
                                <asp:Table ID="table1" CssClass="table" runat="server">
                                    <%--Fila 1--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblCol1" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:Label ID="lblCol2" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:Label ID="lblCol3" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:Label ID="lblCol4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:Label ID="lblCol5" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 2--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues1" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb1" runat="server" GroupName="Group1" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb2" runat="server" GroupName="Group1" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb3" runat="server" GroupName="Group1" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb4" runat="server" GroupName="Group1" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 3--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues2" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb5" runat="server" GroupName="Group2" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb6" runat="server" GroupName="Group2" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb7" runat="server" GroupName="Group2" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb8" runat="server" GroupName="Group2" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 4--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues3" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb9" runat="server" GroupName="Group3" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb10" runat="server" GroupName="Group3" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb11" runat="server" GroupName="Group3" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb12" runat="server" GroupName="Group3" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 5--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb13" runat="server" GroupName="Group4" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb14" runat="server" GroupName="Group4" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb15" runat="server" GroupName="Group4" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb16" runat="server" GroupName="Group4" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 6--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues5" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb17" runat="server" GroupName="Group5" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb18" runat="server" GroupName="Group5" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb19" runat="server" GroupName="Group5" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb20" runat="server" GroupName="Group5" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 7--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues6" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb21" runat="server" GroupName="Group6" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb22" runat="server" GroupName="Group6" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb23" runat="server" GroupName="Group6" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb24" runat="server" GroupName="Group6" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 8--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues7" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb25" runat="server" GroupName="Group7" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb26" runat="server" GroupName="Group7" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb27" runat="server" GroupName="Group7" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb28" runat="server" GroupName="Group7" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 9--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues8" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb29" runat="server" GroupName="Group8" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb30" runat="server" GroupName="Group8" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb31" runat="server" GroupName="Group8" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb32" runat="server" GroupName="Group8" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 10--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues9" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb33" runat="server" GroupName="Group9" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb34" runat="server" GroupName="Group9" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb35" runat="server" GroupName="Group9" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb36" runat="server" GroupName="Group9" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 11--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues10" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb37" runat="server" GroupName="Group10" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb38" runat="server" GroupName="Group10" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb39" runat="server" GroupName="Group10" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb40" runat="server" GroupName="Group10" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 12--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues11" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb41" runat="server" GroupName="Group11" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb42" runat="server" GroupName="Group11" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb43" runat="server" GroupName="Group11" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb44" runat="server" GroupName="Group11" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 13--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues12" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb45" runat="server" GroupName="Group12" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb46" runat="server" GroupName="Group12" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb47" runat="server" GroupName="Group12" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb48" runat="server" GroupName="Group12" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 14--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues13" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb49" runat="server" GroupName="Group13" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb50" runat="server" GroupName="Group13" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb51" runat="server" GroupName="Group13" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb52" runat="server" GroupName="Group13" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 15--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues14" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb53" runat="server" GroupName="Group14" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb54" runat="server" GroupName="Group14" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb55" runat="server" GroupName="Group14" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb56" runat="server" GroupName="Group14" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 16--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues15" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb57" runat="server" GroupName="Group15" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb58" runat="server" GroupName="Group15" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb59" runat="server" GroupName="Group15" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb60" runat="server" GroupName="Group15" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 17--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues16" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb61" runat="server" GroupName="Group16" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb62" runat="server" GroupName="Group16" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb63" runat="server" GroupName="Group16" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb64" runat="server" GroupName="Group16" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 18--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues17" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb65" runat="server" GroupName="Group17" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb66" runat="server" GroupName="Group17" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb67" runat="server" GroupName="Group17" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb68" runat="server" GroupName="Group17" /></asp:TableCell>
                                    </asp:TableRow>

                                    <%--Fila 19--%>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="lblQues18" runat="server" Text="Label"></asp:Label></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb69" runat="server" GroupName="Group18" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb70" runat="server" GroupName="Group18" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb71" runat="server" GroupName="Group18" /></asp:TableCell>
                                        <asp:TableCell>
                                            <asp:RadioButton ID="rdb72" runat="server" GroupName="Group18" /></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                            <%--Botones de regresar y calcular--%>
                            <div class="form-group text-center">
                                <asp:Button ID="btnReturn" CssClass="btn1 btn btn-secondary mr-2" runat="server" Text="Button" OnClick="btnReturn_Click" />
                                <asp:Button ID="btnCalculate" CssClass="btn1 btn btn-primary" runat="server" Text="Button" OnClick="btnCalculate_Click" />
                            </div>
                        </div>
    </form>
</body>
</html>
