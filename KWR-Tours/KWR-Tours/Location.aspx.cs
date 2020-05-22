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
    public partial class Location : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"data source=WIAMELKASSAH;database=Location_Voiture;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { btnSupprimer.Enabled = false; }
            RemplirGridView();
            txtAdresse.Width = 300;
            txtdateop.Width = 300;
            txtMarque.Width = 300;
            txtNumTel.Width = 300;
            txtTypePay.Width = 300;
            txtNomComplet.Width = 300;
            btnAjouter.Width = 150;
            btnSupprimer.Width = 150;
            btnVider.Width = 150;
            btnModifier.Width = 150;
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Location.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            if (txtAdresse.Text != "" && txtdateop.Text != "" && txtMarque.Text != "" && txtNomComplet.Text != "" && txtNumTel.Text != "" && txtTypePay.Text != "")
            {
            SqlCommand sqlCmd = new SqlCommand("LocationCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@LocationID", hfLocationID.Value == "" ? 0 : Convert.ToInt32(hfLocationID.Value));
            sqlCmd.Parameters.AddWithValue("@Marque", txtMarque.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@NomComplet", txtNomComplet.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Adresse", txtAdresse.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Tel", txtNumTel.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@DateOperation", txtdateop.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@typePay", txtTypePay.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string LocationID = hfLocationID.Value;
            if (LocationID == "")
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

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Location.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlCommand sqlCmd = new SqlCommand("LocationDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@LocationID", Convert.ToInt32(hfLocationID.Value));
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
            GV_Location.Visible = false;
            var LocationID = ((LinkButton)sender).CommandArgument;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("LocationViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@LocationID", LocationID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfLocationID.Value = LocationID.ToString();
            if (dtbl.Rows.Count > 0)
            {
                txtMarque.Text = dtbl.Rows[0]["Marque"].ToString();
                txtNomComplet.Text = dtbl.Rows[0]["NomComplet"].ToString();
                txtAdresse.Text = dtbl.Rows[0]["Adresse"].ToString();
                txtNumTel.Text = dtbl.Rows[0]["Tel"].ToString();
                txtdateop.Text = dtbl.Rows[0]["DateOperation"].ToString();
                txtTypePay.Text = dtbl.Rows[0]["TypePaiement"].ToString();
            }
            else
            {
                txtNomComplet.Text = "No value";
            }
            btnAjouter.Text = "Mise à jour";
            btnSupprimer.Enabled = true;
            lblSuccesMessage.Text = "";
            lblErrorMessage.Text = "";
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
            GV_Location.Visible = true;
            lblSuccesMessage.Text = lblErrorMessage.Text = "";
        }

        public void Vider()
        {
            hfLocationID.Value = "";
            txtNomComplet.Text = txtMarque.Text = txtNumTel.Text = txtAdresse.Text = txtdateop.Text = txtTypePay.Text = "";
            btnAjouter.Text = "Ajouter";
            btnSupprimer.Enabled = false;
        }

        void RemplirGridView()
        {
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("LocationViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            GV_Location.DataSource = dtbl;
            GV_Location.DataBind();
        }
    }
}