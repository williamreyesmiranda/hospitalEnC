<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCitas.aspx.cs" Inherits="Hospital.frmCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
            margin:auto;
        }
        .auto-style3 {
            width: 137px;
            text-align: center;
            font-weight: bold;
        }
        .auto-style4 {
            width: 208px;
            text-align: left;
        }
        .auto-style5 {}
        .auto-style6 {}
        .auto-style7 {}
        .auto-style8 {}
        .auto-style9 {}
        .auto-style10 {}
        .auto-style11 {
            color: #FF0000;
            text-align: left;
        }
        .auto-style12 {
            font-weight: 700;
        }
        .auto-style13 {
            font-weight: 700;
        }
        .auto-style14 {
            font-weight: 700;
        }
        .auto-style15 {
            font-weight: 700;
        }
        .auto-style16 {
            width: 137px;
            height: 23px;
            text-align: center;
        }
        .auto-style17 {
            width: 208px;
            height: 23px;
            text-align: left;
        }
        .auto-style18 {
            height: 23px;
            width: 162px;
        }
        .auto-style19 {
            width: 162px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>ASIGNACION DE CITAS</strong></p>
       
        <table class="auto-style2" style="width:70%">
            <tr>
                <td class="auto-style3">Cod cita</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCodCita" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Button ID="btnConfirmarCita" runat="server" CssClass="auto-style12" Text="Confirmar Cita" Width="150px" OnClick="btnConfirmarCita_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="lblConfirmarCita" runat="server" CssClass="auto-style11" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Fecha</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtFecha" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Hora</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtHora" runat="server" CssClass="auto-style5" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Cod Paciente</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCodPaciente" runat="server" CssClass="auto-style6" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Button ID="btnBuscarPaciente" runat="server" CssClass="auto-style13" Text="Buscar Paciente" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblPaciente" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Cod Médico</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCodMedico" runat="server" CssClass="auto-style7" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:Button ID="btnBuscarMedico" runat="server" CssClass="auto-style14" Text="Buscar Médico" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Label ID="lblMedico" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style3">Vlr Consulta</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtVlrConsulta" runat="server" CssClass="auto-style8" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Diagnóstico</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDiagnostico" runat="server" CssClass="auto-style9" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Acompañante</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAcompañante" runat="server" CssClass="auto-style10" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Button ID="btnGuardarCita" runat="server" CssClass="auto-style15" Text="Guardar Cita" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
        </table>
           
    </form>
</body>
</html>
