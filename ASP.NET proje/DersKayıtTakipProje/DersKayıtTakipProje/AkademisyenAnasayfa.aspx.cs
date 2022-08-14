using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DersKayıtTakipProje
{
    public partial class AkademisyenAnasayfa : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("data source=DESKTOP-SBTQ48V\\SQLEXPRESS;initial catalog=OkulDersKayitProjesi;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework");
        protected void Page_Load(object sender, EventArgs e)
        {
            lblEposta.Text = Session["ad"].ToString();

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select ad,soyad From Tbl_Ogretmen Where eposta=@p1", baglanti);
            komut.Parameters.AddWithValue("@p1", lblEposta.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                lblAdSoyad.Text = dr[0] + " " + dr[1];
            }
            
          baglanti.Close();
        }
    }
}