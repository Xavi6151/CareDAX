﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="CareDAX.Frontend.HTML.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../CSS/Estios_Registro.css" type="text/css" />
</head>
<body class="contenedor">
    <form id="form1" runat="server">
        <div>
            <div class="contenedorFormulario">
                <p class="mainTitle">CareDAX</p>
                <p class="title" style="margin-bottom: 0;">Registro</p>
                <p id="precio" class="title">Precio: $100 MXN</p>

                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <!-- Aquí colocas los elementos que quieres actualizar -->
                        <asp:Label ID="lblMensajeError" class="subtitle" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="cajaGrupo">
                    <input id="CheckBox1" type="checkbox" onclick="cambiar()" />
                    <label for="CheckBox1" style="display: inline;">Empresa</label>
                </div>
                
                <div id="empresa" style="display: none;">
                    <div class="cajaGrupo">
                        <label for="TextBox1">Nombre de la empresa</label>
                        <asp:TextBox ID="TextBox1" class="caja" runat="server"></asp:TextBox>
                    </div>
                    <div class="cajaGrupo">
                        <label for="TextBox6">Cantidad de personas</label>
                        <asp:TextBox ID="TextBox6" type="number" class="caja" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="cajaGrupo">
                    <label for="TextBox7">Correo</label>
                    <asp:TextBox ID="TextBox7" type="email" class="caja" runat="server"></asp:TextBox>
                </div>
                <div class="cajaGrupo">
                    <label for="TextBox2">Titular</label>
                    <asp:TextBox ID="TextBox2" class="caja" runat="server"></asp:TextBox>
                </div>
                <div class="cajaGrupo">
                    <label for="TextBox3">Número de la tarjeta</label>
                    <asp:TextBox ID="TextBox3" class="caja" runat="server" MaxLength="16"></asp:TextBox>
                </div>

                <div class="grupoDoble">
                    <div class="cajaGrupo cajaPersonalizada">
                        <label for="TextBox4">Vencimiento</label>
                    <asp:TextBox ID="TextBox4" class="caja" runat="server"></asp:TextBox>
                </div>
                    <div class="cajaGrupo cajaPersonalizada">
                    <label for="TextBox5">CVV</label>
                    <asp:TextBox ID="TextBox5" class="caja" runat="server"></asp:TextBox>
                </div>
                </div>               

                <div class="cajaBotones">
                    <asp:Button ID="btnRegresar" class="sign" runat="server" Text="Regresar" OnClick="btnRegresar_Click" />
                    <asp:Button ID="btnRegistrar" class="sign" runat="server" Text="CONTRATAR" OnClick="btnRegistrar_Click" />
                </div>

            </div>
        </div>
    </form>
</body>
</html>
<script>
    var desplegado = false;
    function cambiar() {
        if (desplegado) {
            document.getElementById("empresa").style.display = "none";
            desplegado = false;
            document.getElementById("precio").innerText = "Precio: $100 MXN";
        }
        else {
            document.getElementById("empresa").style.display = "block";
            desplegado = true;
            document.getElementById("precio").innerText = "Precio por persona:\n$100 MXN";
        }

    }
</script>
