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

            <div class="dep-table">
                <asp:Table ID="table1" CssClass="dep-table1" runat="server">
                <%--Fila 1--%>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2"><asp:Label Id="lblCol0" runat="server" Text="Label"></asp:Label></asp:TableCell>
                </asp:TableRow>

                <%--Fila 2--%>
                <asp:TableRow CssClass="rdb-align">
                    <asp:TableCell><asp:Label Id="lblquest1" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButton Id="rdb1" runat="server" GroupName="Group1"/><br/>
                        <asp:RadioButton Id="rdb2" runat="server" GroupName="Group1"/><br/>
                        <asp:RadioButton Id="rdb3" runat="server" GroupName="Group1"/><br/>
                        <asp:RadioButton Id="rdb4" runat="server" GroupName="Group1"/><br/>
                        <asp:RadioButton Id="rdb5" runat="server" GroupName="Group1"/><br/>
                    </asp:TableCell>
                </asp:TableRow>

                <%--Fila 3--%>
                <asp:TableRow CssClass="rdb-align">
                    <asp:TableCell><asp:Label Id="lblquest2" runat="server" Text="Label"></asp:Label></asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButton Id="rdb6" runat="server" GroupName="Group2"/><br/>
                        <asp:RadioButton Id="rdb7" runat="server" GroupName="Group2"/><br/>
                        <asp:RadioButton Id="rdb8" runat="server" GroupName="Group2"/><br/>
                        <asp:RadioButton Id="rdb9" runat="server" GroupName="Group2"/><br/>
                        <asp:RadioButton Id="rdb10" runat="server" GroupName="Group2"/><br/>
                    </asp:TableCell>
                </asp:TableRow>

                    <%--Fila 4--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest3" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb11" runat="server" GroupName="Group3"/><br/>
                            <asp:RadioButton Id="rdb12" runat="server" GroupName="Group3"/><br/>
                            <asp:RadioButton Id="rdb13" runat="server" GroupName="Group3"/><br/>
                            <asp:RadioButton Id="rdb14" runat="server" GroupName="Group3"/><br/>
                            <asp:RadioButton Id="rdb15" runat="server" GroupName="Group3"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 5--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb16" runat="server" GroupName="Group4"/><br/>
                            <asp:RadioButton Id="rdb17" runat="server" GroupName="Group4"/><br/>
                            <asp:RadioButton Id="rdb18" runat="server" GroupName="Group4"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 6--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest5" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb21" runat="server" GroupName="Group5"/><br/>
                            <asp:RadioButton Id="rdb22" runat="server" GroupName="Group5"/><br/>
                            <asp:RadioButton Id="rdb23" runat="server" GroupName="Group5"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 7--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest6" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb26" runat="server" GroupName="Group6"/><br/>
                            <asp:RadioButton Id="rdb27" runat="server" GroupName="Group6"/><br/>
                            <asp:RadioButton Id="rdb28" runat="server" GroupName="Group6"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 8--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest7" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb31" runat="server" GroupName="Group7"/><br/>
                            <asp:RadioButton Id="rdb32" runat="server" GroupName="Group7"/><br/>
                            <asp:RadioButton Id="rdb33" runat="server" GroupName="Group7"/><br/>
                            <asp:RadioButton Id="rdb34" runat="server" GroupName="Group7"/><br/>
                            <asp:RadioButton Id="rdb35" runat="server" GroupName="Group7"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 9--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest8" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb36" runat="server" GroupName="Group8"/><br/>
                            <asp:RadioButton Id="rdb37" runat="server" GroupName="Group8"/><br/>
                            <asp:RadioButton Id="rdb38" runat="server" GroupName="Group8"/><br/>
                            <asp:RadioButton Id="rdb39" runat="server" GroupName="Group8"/><br/>
                            <asp:RadioButton Id="rdb40" runat="server" GroupName="Group8"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 10--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest9" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb41" runat="server" GroupName="Group9"/><br/>
                            <asp:RadioButton Id="rdb42" runat="server" GroupName="Group9"/><br/>
                            <asp:RadioButton Id="rdb43" runat="server" GroupName="Group9"/><br/>
                            <asp:RadioButton Id="rdb44" runat="server" GroupName="Group9"/><br/>
                            <asp:RadioButton Id="rdb45" runat="server" GroupName="Group9"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 11--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest10" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb46" runat="server" GroupName="Group10"/><br/>
                            <asp:RadioButton Id="rdb47" runat="server" GroupName="Group10"/><br/>
                            <asp:RadioButton Id="rdb48" runat="server" GroupName="Group10"/><br/>
                            <asp:RadioButton Id="rdb49" runat="server" GroupName="Group10"/><br/>
                            <asp:RadioButton Id="rdb50" runat="server" GroupName="Group10"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 12--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest11" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb51" runat="server" GroupName="Group11"/><br/>
                            <asp:RadioButton Id="rdb52" runat="server" GroupName="Group11"/><br/>
                            <asp:RadioButton Id="rdb53" runat="server" GroupName="Group11"/><br/>
                            <asp:RadioButton Id="rdb54" runat="server" GroupName="Group11"/><br/>
                            <asp:RadioButton Id="rdb55" runat="server" GroupName="Group11"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 13--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest12" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb56" runat="server" GroupName="Group12"/><br/>
                            <asp:RadioButton Id="rdb57" runat="server" GroupName="Group12"/><br/>
                            <asp:RadioButton Id="rdb58" runat="server" GroupName="Group12"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 14--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest13" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb61" runat="server" GroupName="Group13"/><br/>
                            <asp:RadioButton Id="rdb62" runat="server" GroupName="Group13"/><br/>
                            <asp:RadioButton Id="rdb63" runat="server" GroupName="Group13"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 15--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest14" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb66" runat="server" GroupName="Group14"/><br/>
                            <asp:RadioButton Id="rdb67" runat="server" GroupName="Group14"/><br/>
                            <asp:RadioButton Id="rdb68" runat="server" GroupName="Group14"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 16--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest15" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb71" runat="server" GroupName="Group15"/><br/>
                            <asp:RadioButton Id="rdb72" runat="server" GroupName="Group15"/><br/>
                            <asp:RadioButton Id="rdb73" runat="server" GroupName="Group15"/><br/>
                            <asp:RadioButton Id="rdb74" runat="server" GroupName="Group15"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 17--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest16" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb76" runat="server" GroupName="Group16"/><br/>
                            <asp:RadioButton Id="rdb77" runat="server" GroupName="Group16"/><br/>
                            <asp:RadioButton Id="rdb78" runat="server" GroupName="Group16"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>

                    <%--Fila 18--%>
                    <asp:TableRow CssClass="rdb-align">
                        <asp:TableCell><asp:Label Id="lblquest17" runat="server" Text="Label"></asp:Label></asp:TableCell>
                        <asp:TableCell>
                            <asp:RadioButton Id="rdb81" runat="server" GroupName="Group17"/><br/>
                            <asp:RadioButton Id="rdb82" runat="server" GroupName="Group17"/><br/>
                            <asp:RadioButton Id="rdb83" runat="server" GroupName="Group17"/><br/>
                        </asp:TableCell>
                    </asp:TableRow>


                </asp:Table>
            </div>
                <%--Botones de regresar y calcular--%>
                <div class="dep_buttons">
                        <asp:Button Id="btnReturn" CssClass="btn1" runat="server" Text="Button" OnClick="btnReturn_Click"/>
                        <asp:Button Id="btnCalculate" CssClass="btn1" runat="server" Text="Button" OnClick="btnCalculate_Click"/>
                </div>
        </div>
    </form>
</body>
</html>
