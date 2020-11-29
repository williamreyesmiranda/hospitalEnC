using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CapaEntidad;
using CapaRegNegocio;


namespace Hospital
{
    public partial class frmCitas : System.Web.UI.Page
    {

        CNegocioCitas oNegCitas = new CNegocioCitas();
        CEntidadCitas oEntCitas = new CEntidadCitas();
        CNegocioPacientes oNegPacientes = new CNegocioPacientes();
        CEntidadPacientes oEntPacientes = new CEntidadPacientes();
        CNegocioMedicos oNegMedicos = new CNegocioMedicos();
        CEntidadMedicos oEntMedicos = new CEntidadMedicos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmarCita_Click(object sender, EventArgs e)
        {
            if(txtCodCita.Text == "")
            {
                
                lblMensaje.Text = "<script>Swal.fire({title: 'Se debe ingresar un codigo de cita', text: '', icon: 'error',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                txtAcompañante.Text = "";
                txtCodCita.Text = "";
                txtCodMedico.Text = "";
                txtDiagnostico.Text = "";
                txtCodPaciente.Text = "";
                txtFecha.Text = "";
                txtHora.Text = "";
                txtVlrConsulta.Text = "";
                lblPaciente.Text = "";
                lblMedico.Text = "";
                txtAcompañante.ReadOnly = true;
                txtCodMedico.ReadOnly = true;
                txtDiagnostico.ReadOnly = true;
                txtCodPaciente.ReadOnly = true;
                txtFecha.ReadOnly = true;
                txtHora.ReadOnly = true;
                txtVlrConsulta.ReadOnly = true;
                btnBuscarMedico.Enabled = false;
                btnBuscarPaciente.Enabled = false;
                btnGuardarCita.Enabled = false;
                btnLimpiar.Enabled = false;
                txtCodCita.Focus();
                
            }
            else
            {
                DataSet ds = new DataSet();
                oEntCitas.Cod_cita = txtCodCita.Text;
                ds = oNegCitas.consultar_cita(oEntCitas);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    
                    lblMensaje.Text = "<script>Swal.fire({title: 'Este código está disponible para ingresar una cita nueva', text: '', icon: 'success',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                    txtAcompañante.Text = "";
                    txtCodMedico.Text = "";
                    txtDiagnostico.Text = "";
                    txtCodPaciente.Text = "";
                    txtFecha.Text = "";
                    txtHora.Text = "";
                    txtVlrConsulta.Text = "";
                    lblPaciente.Text = "";
                    lblMedico.Text = "";
                    txtAcompañante.ReadOnly=false;
                    txtCodMedico.ReadOnly = false;
                    txtDiagnostico.ReadOnly = false;
                    txtCodPaciente.ReadOnly = false;
                    txtFecha.ReadOnly = false;
                    txtHora.ReadOnly = false;
                    txtVlrConsulta.ReadOnly = false;
                    btnBuscarMedico.Enabled = true;
                    btnBuscarPaciente.Enabled = true;
                    btnGuardarCita.Enabled = true;
                    btnLimpiar.Enabled = true;
                    txtFecha.Focus();
                }
                else
                {
                    lblMensaje.Text = "<script>Swal.fire({title: 'Este código Existe', text: '', icon: 'info',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                    txtFecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();
                    txtHora.Text = ds.Tables[0].Rows[0]["hora"].ToString();
                    txtCodPaciente.Text = ds.Tables[0].Rows[0]["Id_paciente"].ToString();
                    txtCodMedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    txtVlrConsulta.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txtDiagnostico.Text = ds.Tables[0].Rows[0]["diagnostico"].ToString();
                    txtAcompañante.Text = ds.Tables[0].Rows[0]["Nom_acompanante"].ToString();
                    lblPaciente.Text = "";
                    lblMedico.Text = "";
                    txtAcompañante.ReadOnly = true;
                    txtCodMedico.ReadOnly = true;
                    txtDiagnostico.ReadOnly = true;
                    txtCodPaciente.ReadOnly = true;
                    txtFecha.ReadOnly = true;
                    txtHora.ReadOnly = true;
                    txtVlrConsulta.ReadOnly = true;
                    btnBuscarMedico.Enabled = false;
                    btnBuscarPaciente.Enabled = false;
                    btnGuardarCita.Enabled = false;
                    btnLimpiar.Enabled = false;

                }
            }
        }

        protected void btnGuardarCita_Click(object sender, EventArgs e)
        {
            oEntCitas.Cod_cita = txtCodCita.Text;
            oEntCitas.Fecha =Convert.ToDateTime(txtFecha.Text);
            oEntCitas.Hora = Convert.ToDateTime(txtHora.Text);
            oEntCitas.Id_paciente1 = txtCodPaciente.Text;
            oEntCitas.Id_medico = txtCodMedico.Text;
            oEntCitas.Valor = Convert.ToInt32(txtVlrConsulta.Text);
            oEntCitas.Diagnostico = txtDiagnostico.Text;
            oEntCitas.Nom_acompanante1 = txtAcompañante.Text;

            if (oNegCitas.guardar_cita(oEntCitas))
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "<script>Swal.fire({title: 'Consulta Guardada', text: '', icon: 'success',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                txtAcompañante.Text = "";
                txtCodCita.Text = "";
                txtCodMedico.Text = "";
                txtDiagnostico.Text = "";
                txtCodPaciente.Text = "";
                txtFecha.Text = "";
                txtHora.Text = "";
                txtVlrConsulta.Text = "";
                lblPaciente.Text = "";
                lblMedico.Text = "";
                txtAcompañante.ReadOnly = true;
                txtCodMedico.ReadOnly = true;
                txtDiagnostico.ReadOnly = true;
                txtCodPaciente.ReadOnly = true;
                txtFecha.ReadOnly = true;
                txtHora.ReadOnly = true;
                txtVlrConsulta.ReadOnly = true;
                btnBuscarMedico.Enabled = false;
                btnBuscarPaciente.Enabled = false;
                btnGuardarCita.Enabled = false;
                btnLimpiar.Enabled = false;
                txtCodCita.Focus();
            }
            else
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "<script>Swal.fire({title: 'Error al guardar consulta', text: '', icon: 'error',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
            }

        }

        public void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtAcompañante.Text = "";
            txtCodCita.Text = "";
            txtCodMedico.Text = "";
            txtDiagnostico.Text = "";
            txtCodPaciente.Text = "";
            txtFecha.Text = "";
            txtHora.Text = "";
            txtVlrConsulta.Text = "";
            lblPaciente.Text = "";
            lblMedico.Text = "";
            txtAcompañante.ReadOnly = true;
            txtCodMedico.ReadOnly = true;
            txtDiagnostico.ReadOnly = true;
            txtCodPaciente.ReadOnly = true;
            txtFecha.ReadOnly = true;
            txtHora.ReadOnly = true;
            txtVlrConsulta.ReadOnly = true;
            btnBuscarMedico.Enabled = false;
            btnBuscarPaciente.Enabled = false;
            btnGuardarCita.Enabled = false;
            btnLimpiar.Enabled = false;
            txtCodCita.Focus();
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            if (txtCodPaciente.Text == "")
            {

                lblMensaje.Text = "<script>Swal.fire({title: 'Ingrese un código de paciente', text: '', icon: 'error',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                lblPaciente.Text = "";
                txtCodPaciente.Focus();

            }
            else
            {
                DataSet ds = new DataSet();
                oEntPacientes.Id_paciente1 = txtCodPaciente.Text;
                ds = oNegPacientes.consultar_Paciente(oEntPacientes);
                if (ds.Tables[0].Rows.Count == 0)
                {

                    lblMensaje.Text = "<script>Swal.fire({title: 'Este código no pertenece a ningún paciente activo', text: '', icon: 'error',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                    txtCodPaciente.Text = "";
                    lblPaciente.Text = "";
                    }
                else
                {
                    lblPaciente.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                    txtCodMedico.Focus();
                }
            }
        }

        protected void btnBuscarMedico_Click(object sender, EventArgs e)
        {
            if (txtCodMedico.Text == "")
            {

                lblMensaje.Text = "<script>Swal.fire({title: 'Ingrese un código de médico', text: '', icon: 'error',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                lblMedico.Text = "";
                txtCodMedico.Focus();

            }
            else
            {
                DataSet ds = new DataSet();
                oEntMedicos.Id_medico = txtCodMedico.Text;
                ds = oNegMedicos.consultar_Medico(oEntMedicos);
                if (ds.Tables[0].Rows.Count == 0)
                {

                    lblMensaje.Text = "<script>Swal.fire({title: 'Este código no pertenece a ningún médico Activo', text: '', icon: 'error',  showConfirmButton: false,timer: 2000, allowOutsideClick: false, allowEscapeKey: false, allowEnterKey: false})</script>";
                    txtCodMedico.Text = "";
                    lblMedico.Text = "";
                }
                else
                {
                    lblMedico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                    txtCodMedico.Focus();
                }
            }

        }
    }
}