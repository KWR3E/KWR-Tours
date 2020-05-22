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
    public partial class UpdateVoiture : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"data source=WIAMELKASSAH;database=Location_Voiture;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { btnSupprimer.Enabled = false; }
            RemplirGridView();
            txtNumMatricule.Width = 300;
            txtPuissance.Width = 300;
            txtxCouleur.Width = 300;
            txtNombrePlaces.Width = 300;
            txtModele.Width = 300;
            txtConsommation.Width = 300;
            txtMarque.Width = 300;
            btnAjouter.Width = 150;
            btnSupprimer.Width = 150;
            btnVider.Width = 150;
            btnModifier.Width = 150;
        }
        protected void btnVider_Click(object sender, EventArgs e)
        {
            Vider();
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Voiture.Visible = true;
            lblErrorMessage.Text = "";
            lblSuccesMessage.Text = "";
        }

        public void Vider()
        {
            hfVoitureID.Value = "";
            txtConsommation.Text = txtMarque.Text = txtModele.Text = txtNombrePlaces.Text = txtNumMatricule.Text = txtPuissance.Text = txtxCouleur.Text = "";
            btnAjouter.Text = "Ajouter";
            btnSupprimer.Enabled = false;
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Voiture.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            if (txtConsommation.Text != "" && txtMarque.Text != "" && txtModele.Text != "" && txtNombrePlaces.Text != "" && txtNumMatricule.Text != "" && txtPuissance.Text != "" && txtxCouleur.Text != "")
            {
            SqlCommand sqlCmd = new SqlCommand("VoitureCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@VoitureID", hfVoitureID.Value == "" ? 0 : Convert.ToInt32(hfVoitureID.Value));
            sqlCmd.Parameters.AddWithValue("@NumMatr", txtNumMatricule.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Marque", txtMarque.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Modele", txtModele.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Puissance", txtPuissance.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@NombrePlace", txtNombrePlaces.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Consommation", txtConsommation.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Couleur", txtxCouleur.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string VoitureID = hfVoitureID.Value;
            if (VoitureID == "")
            {
                lblErrorMessage.Text = "";
                lblSuccesMessage.Text = "L'opération de l'ajout est terminée avec succès!";
            }
            else
            {
                lblErrorMessage.Text = "";
                lblSuccesMessage.Text = "La mise à jour est faite avec succès!";
            }
            Vider();
            RemplirGridView();
            }
            else
            {
                lblSuccesMessage.Text = "";
                lblErrorMessage.Text = "Veuillez remplir tous les champs!!! Merci.";
            }
        }
        void RemplirGridView()
        {
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("VoituresViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            GV_Voiture.DataSource = dtbl;
            GV_Voiture.DataBind();
        }

        protected void lnkOnClick(object sender, EventArgs e)
        {
            btnModifier.Visible = false;
            btnSupprimer.Visible = true;
            GV_Voiture.Visible = false;
            var VoitureID = ((LinkButton)sender).CommandArgument;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("VoituresViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@VoitureID", VoitureID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfVoitureID.Value = VoitureID.ToString();
            if (dtbl.Rows.Count > 0)
            {
                txtNumMatricule.Text = dtbl.Rows[0]["NumMatr"].ToString();
                txtMarque.Text = dtbl.Rows[0]["Marque"].ToString();
                txtModele.Text = dtbl.Rows[0]["Modele"].ToString();
                txtPuissance.Text = dtbl.Rows[0]["Puissance"].ToString();
                txtNombrePlaces.Text = dtbl.Rows[0]["NombrePlace"].ToString();
                txtConsommation.Text = dtbl.Rows[0]["Consommation"].ToString();
                txtxCouleur.Text = dtbl.Rows[0]["Couleur"].ToString();
            }
            else
            {
                txtNumMatricule.Text = "No value";
            }
            btnAjouter.Text = "Mise à jour";
            btnSupprimer.Enabled = true;
            lblSuccesMessage.Text = "";
            lblErrorMessage.Text = "";
        }

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Voiture.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlCommand sqlCmd = new SqlCommand("VoituresDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@VoitureID", Convert.ToInt32(hfVoitureID.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Vider();
            RemplirGridView();
            lblSuccesMessage.Text = "La suppression est faite par succés!";
            lblErrorMessage.Text = "";
        }

        protected void btnModifier_Click(object sender, EventArgs e)
        {
            lblSuccesMessage.Text = lblErrorMessage.Text = "";
        }

    }
}