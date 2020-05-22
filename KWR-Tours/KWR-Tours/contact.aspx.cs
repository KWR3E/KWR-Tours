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
    public partial class contact : System.Web.UI.Page
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
            SqlCommand comd = new SqlCommand("insert into Contact values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            comd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            afficher();
        }
        public void afficher()
        {
            SqlCommand comd = con.CreateCommand();
            comd.CommandType = new CommandType();
            comd.CommandText = ("select * from Contact");
            comd.ExecuteNonQuery();
            DataSet dt = new DataSet();
            IDataAdapter adp = new SqlDataAdapter(comd);
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}