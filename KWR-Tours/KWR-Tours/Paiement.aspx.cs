using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace projet_voiture
{
    public partial class Paiement : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"data source=WIAMELKASSAH;database=Location_Voiture;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            afficher();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string value = "";
            if (DropDownList1.SelectedItem.Text == "SELECTIONNER UNE MARQUE" || nom.Text == "" || adresse.Text == "" || tel.Text == "" || date.Text == "")
            {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "Veuillez remplir tous les champs!!! Merci."; }
            else
            {
                lblErrorMessage.Text = "";
                lblErrorMessage.Visible = false;
                lblSuccesMessage.Visible = true;
                lblSuccesMessage.Text = "Insertion Effectuée!";
                if (type_payement1.Checked)
                value = type_payement1.Text;
                else
                value = type_payement2.Text;
                SqlCommand comd = new SqlCommand("insert into louer values ('" + DropDownList1.SelectedItem.Text + "','" + nom.Text + "','" + adresse.Text + "'," + tel.Text + ",'" + date.Text + "','Paypal')", con);
                comd.ExecuteNonQuery();
                afficher();
                Response.Redirect(Request.RawUrl);
            }
        }
        public void afficher()
        {
            SqlCommand comd = con.CreateCommand();
            comd.CommandType = new CommandType();
            comd.CommandText = ("select * from louer");
            comd.ExecuteNonQuery();
            DataSet dt = new DataSet();
            IDataAdapter adp = new SqlDataAdapter(comd);
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}