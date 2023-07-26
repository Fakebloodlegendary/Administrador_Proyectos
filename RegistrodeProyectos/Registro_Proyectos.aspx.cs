using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrodeProyectos
{
    public partial class Registro_Proyectos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionBD"].ConnectionString);

        void Limpiar()
        {
            Proyecto.Text = "";
            Archivo.Text = "";
            Categoria.Text = "";
            Empleado.Text = "";
            Estado.Text = "";
            Comentario.Text = "";
            Fecha.Text = "";
            UltimaModificacion.Text = "";
            CreadoPor.Text = "";
            ModificadoPor.Text = "";
            Componente.Text = "";
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            if (Proyecto.Text == "" || Archivo.Text == "" || Categoria.Text == "" || Empleado.Text == "" || Estado.Text == "" || Comentario.Text == "" || Fecha.Text == "" || UltimaModificacion.Text == "" || CreadoPor.Text == "" || ModificadoPor.Text == "" || Componente.Text == "")
            {
                lblError.Text = "Ningun campo puede quedar vacio!";
            }
            else
            {
                conexion.Open();
                SqlCommand cnn = new SqlCommand("Insert into Proyecto values('"+Proyecto.Text+"','"+Archivo.Text+"','"+Categoria.Text+"','"+Empleado.Text+"','"+Estado.Text+"','"+Comentario.Text+"','"+Fecha.Text+"','"+UltimaModificacion.Text+"','"+CreadoPor.Text+"','"+ModificadoPor.Text+"','"+Componente.Text+"')))", conexion);
                cnn.ExecuteNonQuery();
                Limpiar();
                    
            }
        }

    }
    
   
}