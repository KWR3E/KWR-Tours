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
    public partial class index1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=WIAMELKASSAH;DATABASE=Location_Voiture;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            afficher();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand comd = new SqlCommand("insert into Reserver values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + datepicker.Text + "','" + DropDownList3.SelectedValue + "','" + datepicker2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")", con);
            comd.ExecuteNonQuery();
            DropDownList1.SelectedValue = "Selectionner la marque";
            DropDownList2.SelectedValue = "Réserver";
            DropDownList3.SelectedValue = "Déposer";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            datepicker.Text = "";
            datepicker2.Text = "";
            afficher();
        }
        public void afficher()
        {
            SqlCommand comd = con.CreateCommand();
            comd.CommandType = new CommandType();
            comd.CommandText = ("select * from Reserver");
            comd.ExecuteNonQuery();
            DataSet dt = new DataSet();
            IDataAdapter adp = new SqlDataAdapter(comd);
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        /*protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand comd = new SqlCommand("insert into Restez values ('" + TextBox4.Text + "')", con);
            comd.ExecuteNonQuery();

            afficher1();
        }
        public void afficher1()
        {
            SqlCommand comd1 = con.CreateCommand();
            comd1.CommandType = new CommandType();
            comd1.CommandText = ("select * from Restez");
            comd1.ExecuteNonQuery();
            DataSet dt1 = new DataSet();
            IDataAdapter adp1 = new SqlDataAdapter(comd1);
            adp1.Fill(dt1);
        }*/
    }
}