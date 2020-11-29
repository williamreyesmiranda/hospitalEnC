<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCitas.aspx.cs" Inherits="Hospital.frmCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.4/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.4/dist/sweetalert2.css">
    <style type="text/css">
        body{
             font-family:'Century Gothic';
        }
        .titulo {
            text-align: left;
            font-weight: bold;
            font-size: 25px;
            color:#80deff;
            background-color:#152f5e;
            padding:15px;
        }
        
    </style>
</head>
<body style="background-color:#d7f3fc" >
    <div>
        <img src="https://github.com/williamreyesmiranda/img/blob/main/banner1.png?raw=true" alt="Alternate Text" style="width:100%" />
    </div>
    <p class="titulo">
            Asignación de Citas</p>
    <div class="container col-md-8 mt-5">
        <div class="form-group col-md-9 my auto" style="background-color: #ffffff; padding:20px; border-radius:10px">
    <form id="form1" class="form-sm" runat="server">
        
        
  <div class="form-row ">
    <div class="form-group col-md-4">
      <label for="txtCodCita" style="font-weight:bold;">Codigo Cita</label>
        <asp:TextBox runat="server" CssClass="form-control " 
               id="txtCodCita" 
               style="border-radius:6px;"/>
       
               
    </div>

    <div class="form-group col-md-3 ml-2 my-auto">
        <asp:Button ID="btnConfirmarCita"
                Class=""
                Text="Confirmar Cita"
                runat="server" 
                style="margin-top:17px; 
                       border-radius:50px;
                       background-color:#80deff;
                       border:none;
                       padding:8px;
                       color:#152f5e;
                       font-weight:bold;"
                onclick="btnConfirmarCita_Click"/>
    </div>
      
          <asp:Label Text="" 
              class=""
              ID="lblMensaje" 
              runat="server"
              />
      
  </div>
    <div Class="form-row">
         <div class="form-group col-md-6">
             <label for="txtFecha" style="font-weight:bold;">Fecha</label>
                <asp:TextBox runat="server" class="form-control"
               id="txtFecha" ReadOnly="True"/>
             
     </div>

       
         <div class="form-group col-md-6">
           <label for="txtHora" style="font-weight:bold;">Hora</label>
             <asp:TextBox runat="server"  Class="form-control"
               id="txtHora" ReadOnly="True"/>
            
     </div>


 </div>
                <br />
                <hr />
                <br />

  <div class="form-row ">
    <div class="form-group col-md-4">
      <label for="txtCodPaciente" style="font-weight:bold;">Código Paciente</label>
        <asp:TextBox runat="server" 
               class="form-control " 
               id="txtCodPaciente" 
               style="border-radius:6px;" ReadOnly="True"/>
        
    </div>

    <div class="form-group col-md-3 ml-3 my-auto">
        <asp:Button ID="btnBuscarPaciente"
                class=""
                Text="Buscar Paciente"
                runat="server" 
                style="margin-top:17px; 
                       border-radius:50px;
                       background-color:#80deff;
                       border:none;
                       padding:8px;
                       color:#152f5e;
                       font-weight:bold;" Enabled="False" 
                OnClick="btnBuscarPaciente_Click"/>
    </div>
      <div class="form-group col-md-3 ml-3 my-auto">
      <asp:Label runat="server" 
               class="" 
               id="lblPaciente" 
               style="margin-top:17px; 
                       padding:8px;
                       color:#152f5e;
                       font-weight:bold;"/>
    </div>
  </div>

      <div class="form-row ">
    <div class="form-group col-md-4">
      <label for="txtCodMedico" style="font-weight:bold;">Código Médico</label>
        <asp:TextBox runat="server" 
                class="form-control" 
                id="txtCodMedico" 
                style="border-radius:6px;" ReadOnly="True"/>
       
    </div>

    <div class="form-group col-md-3 ml-3 my-auto">
        <asp:Button ID="btnBuscarMedico"
                class=""
                Text="Buscar Médico"
                runat="server" 
                style="margin-top:17px; 
                       border-radius:50px;
                       background-color:#80deff;
                       border:none;
                       padding:8px;
                       color:#152f5e;
                       font-weight:bold;" Enabled="False" OnClick="btnBuscarMedico_Click"/>
    </div>
          <div class="form-group col-md-3 ml-3 my-auto">
      <asp:Label runat="server" 
               class="" 
               id="lblMedico" 
               style="margin-top:17px; 
                       padding:8px;
                       color:#152f5e;
                       font-weight:bold;"/>
    </div>

  </div>

                <br />
                <hr />
                <br />
                
 <div class="form-row">
         <div class="form-group col-md-6">
           <label for="txtVlrConsulta" style="font-weight:bold;">Valor de Consulta</label>
             <asp:TextBox runat="server" 
                 class="form-control"
                 id="txtVlrConsulta"
                 placeholder="" ReadOnly="True"/>
             
     </div>

       
         <div class="form-group col-md-6">
           <label for="txtAcompañante" style="font-weight:bold;">Nombre del Acompañante</label>
             <asp:TextBox runat="server" 
                  class="form-control"
               id="txtAcompañante" ReadOnly="True"/>
         </div>

 </div>
           <div class="form-group">
           <label for="txtDiagnostico" style="font-weight:bold;">Diagnostico</label>
               <asp:TextBox runat="server" 
                    class="form-control"
               id="txtDiagnostico" ReadOnly="True"/>
                              
     </div>

<div class="form-row">
<div class="form-group col-md-6">
       <asp:Button ID="btnGuardarCita"
                class="btn"
                Text="Guardar"
                runat="server" 
                style="margin-top:17px; 
                       border-radius:50px;
                       background-color:#80deff;
                       border:none;
                       padding:8px;
                       color:#152f5e;
                       font-weight:bold;
                       width:100%;"
            onclick="btnGuardarCita_Click" Enabled="False" />
    </div>

<div class="form-group col-md-6">
        <asp:Button ID="btnLimpiar"
                OnClick="btnLimpiar_Click"
                class=""
                Text="Limpiar"
                runat="server" 
                style="margin-top:17px; 
                       border-radius:50px;
                       background-color:#152f5e;
                       border:none;
                       padding:8px;
                       color:#80deff;
                       font-weight:bold;
                       width:100%;" Enabled="False" />
    </div>
</div>
 
</form>
   </div>
        </div>
        
           
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <p>
        &nbsp;</p>
</body>
</html>
