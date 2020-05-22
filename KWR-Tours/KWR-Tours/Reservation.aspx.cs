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
    public partial class Reservation : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"data source=WIAMELKASSAH;database=Location_Voiture;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { btnSupprimer.Enabled = false; }
            RemplirGridView();
            txtdateDepot.Width = 295;
            txtdateReservation.Width = 295;
            txtNbrDepot.Width = 295;
            txtNbrReserver.Width = 295;
            txtMarque.Width = 295;
            txtEmail.Width = 295;
            txtNomComplet.Width = 295;
            txtNumTel.Width = 295;
            btnModifier.Width = 150;
            btnAjouter.Width = 150;
            btnSupprimer.Width = 150;
            btnVider.Width = 150;
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            btnModifier.Visible = true;
            btnSupprimer.Visible = false;
            GV_Reservation.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            if (txtdateDepot.Text != "" && txtdateReservation.Text != "" && txtMarque.Text != "" && txtNomComplet.Text != "" && txtNumTel.Text != "" && txtEmail.Text != "" && txtNbrDepot.Text != "" && txtNbrReserver.Text != "")
            {
            SqlCommand sqlCmd = new SqlCommand("ReservationCreateOrUpdate", sqlCon);
            sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@ReservationID", hfReservationID.Value == "" ? 0 : Convert.ToInt32(hfReservationID.Value));
            sqlCmd.Parameters.AddWithValue("@Marque", txtMarque.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Reserver", txtNbrReserver.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@date_rev", txtdateReservation.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Depose", txtNbrDepot.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Date_dep", txtdateDepot.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@NomComplet", txtNomComplet.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Tel", txtNumTel.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string ReservationID = hfReservationID.Value;
            if (ReservationID == "")
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
            GV_Reservation.Visible = true;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlCommand sqlCmd = new SqlCommand("ReservationDeleteByID", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@ReservationID", Convert.ToInt32(hfReservationID.Value));
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
            GV_Reservation.Visible = false;
            var LocationID = ((LinkButton)sender).CommandArgument;
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("ReservationViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@ReservationID", LocationID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            hfReservationID.Value = LocationID.ToString();
            if (dtbl.Rows.Count > 0)
            {
                txtMarque.Text = dtbl.Rows[0]["Marque"].ToString();
                txtNbrReserver.Text = dtbl.Rows[0]["Reserver"].ToString();
                txtdateReservation.Text = dtbl.Rows[0]["date_rev"].ToString();
                txtNbrDepot.Text = dtbl.Rows[0]["depose"].ToString();
                txtdateDepot.Text = dtbl.Rows[0]["datr_dep"].ToString();
                txtNomComplet.Text = dtbl.Rows[0]["NomComplet"].ToString();
                txtEmail.Text = dtbl.Rows[0]["Email"].ToString();
                txtNumTel.Text = dtbl.Rows[0]["Tele"].ToString();
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
            GV_Reservation.Visible = true;
            lblSuccesMessage.Text = lblErrorMessage.Text = "";
        }

        void Vider()
        {
            hfReservationID.Value = "";
            txtNomComplet.Text = txtMarque.Text = txtNumTel.Text = txtNbrDepot.Text = txtdateDepot.Text = txtNbrReserver.Text = txtdateReservation.Text = txtEmail.Text = "";
            btnAjouter.Text = "Ajouter";
            btnSupprimer.Enabled = false;
        }
        void RemplirGridView()
        {
            if (sqlCon.State == System.Data.ConnectionState.Closed)
            {
                sqlCon.Open();
            }
            SqlDataAdapter sqlDa = new SqlDataAdapter("ReservationViewAll", sqlCon);
            sqlDa.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            GV_Reservation.DataSource = dtbl;
            GV_Reservation.DataBind();
        }
    }
}