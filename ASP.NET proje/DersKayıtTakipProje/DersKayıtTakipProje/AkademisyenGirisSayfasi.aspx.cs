using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DersKayıtTakipProje
{
    public partial class AkademisyenGirisSayfasi : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("data source=DESKTOP-SBTQ48V\\SQLEXPRESS;initial catalog=OkulDersKayitProjesi;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOturumAc_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Ogretmen where eposta=@p1 and sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", txtAd.Text);
            komut.Parameters.AddWithValue("@p2", txtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ad", txtAd.Text);
                Response.Redirect("https://localhost:44350/AkademisyenAnasayfa.aspx");
            }
            else
            {
                lblHata.Text = "Hatalı Kullanıcı Adı Veya Şifre Girişi!!!";
                txtSifre.Focus();
                this.lblHata.Visible = true;
            }
            baglanti.Close();
        }
    }
}