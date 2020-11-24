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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmarCita_Click(object sender, EventArgs e)
        {
            if(txtCodCita.Text == "")
            {
                lblConfirmarCita.Visible = true;
                lblConfirmarCita.Text = "no se ha asignado codigo de la cita....";
                txtCodCita.Focus();

            }
            else
            {
                DataSet ds = new DataSet();
                oEntCitas.Cod_cita = txtCodCita.Text;
                ds = oNegCitas.consultar_cita(oEntCitas);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblConfirmarCita.Visible = true;
                    lblConfirmarCita.Text = "El codigo está disponible para agregar cita";
                    txtFecha.Focus();
                }
                else
                {
                    txtFecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();
                    txtHora.Text = ds.Tables[0].Rows[0]["hora"].ToString();
                    txtCodPaciente.Text = ds.Tables[0].Rows[0]["Id_paciente"].ToString();
                    txtCodMedico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();
                    txtVlrConsulta.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txtDiagnostico.Text = ds.Tables[0].Rows[0][" diagnostico"].ToString();
                    txtAcompañante.Text = ds.Tables[0].Rows[0]["Nom_acompanant"].ToString();

                }
            }
        }
    }
}