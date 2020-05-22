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
    public partial class UpdateContact : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"data source=WIAMELKASSAH;database=Location_Voiture;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { btnSupprimer.Enabled = false; }
            RemplirGridView();
            txtEmail.Width = 300;
            txtMessage.Width = 300;
            txtNom.Width = 300;
            txtObjet.Width = 300;
            btnAjouter.Width = 150;
            btnSupprimer.Width = 150;
            btnVider.Width = 150;
            btnModifier.Width = 150;
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Contact.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            if (txtEmail.Text != "" && txtMessage.Text != "" && txtNom.Text != "" && txtObjet.Text != "")
            {
            SqlCommand sqlCmd = new SqlCommand("ContactCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@ContactID", hfContactID.Value == "" ? 0 : Convert.ToInt32(hfContactID.Value));
            sqlCmd.Parameters.AddWithValue("@Nom", txtNom.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Objet", txtObjet.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Message", txtMessage.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string ContactID = hfContactID.Value;
            if (ContactID == "")
            {
                    lblErrorMessage.Text = "";
                    lblSuccesMessage.Text = "L'opération de l'ajout est terminée avec succès!";
            }
            else
            {
                lblErrorMessage.Text = "";
                lblSuccesMessage.Text = "La mise à jour est faite avec succès!";
            }
            RemplirGridView();
            Vider();
            }
            else
            {
                lblSuccesMessage.Text = "";
                lblErrorMessage.Text = "Veuillez remplir tous les champs!!! Merci.";
            }
        }

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Contact.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlCommand sqlCmd = new SqlCommand("ContactDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@ContactID", Convert.ToInt32(hfContactID.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Vider();
            RemplirGridView();
            lblSuccesMessage.Text = "La suppression est faite par succés!";
            lblErrorMessage.Text = "";
        }

        protected void lnkOnClick(object sender, EventArgs e)
        {
            btnModifier.Visible = false;
            btnSupprimer.Visible = true;
            GV_Contact.Visible = false;
            var LocationID = ((LinkButton)sender).CommandArgument;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@ContactID", LocationID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfContactID.Value = LocationID.ToString();
            if (dtbl.Rows.Count > 0)
            {
                txtNom.Text = dtbl.Rows[0]["Nom"].ToString();
                txtEmail.Text = dtbl.Rows[0]["Email"].ToString();
                txtObjet.Text = dtbl.Rows[0]["Objet"].ToString();
                txtMessage.Text = dtbl.Rows[0]["MessageC"].ToString();
            }
            else
            {
                txtNom.Text = "No value";
            }
            btnAjouter.Text = "Mise à jour";
            btnSupprimer.Enabled = true;
            lblSuccesMessage.Text = lblErrorMessage.Text = "";
        }
        protected void btnModifier_Click(object sender, EventArgs e)
        {
            lblSuccesMessage.Text = lblErrorMessage.Text = "";
        }

        protected void btnVider_Click(object sender, EventArgs e)
        {
            Vider();
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Contact.Visible = true;
            lblSuccesMessage.Text = lblErrorMessage.Text = "";
        }
        public void Vider()
        {
            hfContactID.Value = "";
            txtNom.Text = txtMessage.Text = txtEmail.Text = txtObjet.Text = "";
            btnAjouter.Text = "Ajouter";
            btnSupprimer.Enabled = false;
        }

        void RemplirGridView()
        {
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            GV_Contact.DataSource = dtbl;
            GV_Contact.DataBind();
        }
    }
}