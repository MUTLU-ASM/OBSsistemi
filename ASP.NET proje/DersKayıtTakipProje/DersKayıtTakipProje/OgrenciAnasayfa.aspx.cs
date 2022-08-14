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
    public partial class OgrenciAnasayfa : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("data source=DESKTOP-SBTQ48V\\SQLEXPRESS;initial catalog=OkulDersKayitProjesi;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework");
        SqlConnection baglanti2 = new SqlConnection("data source=DESKTOP-SBTQ48V\\SQLEXPRESS;initial catalog=OkulDersKayitProjesi;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework");
        protected void Page_Load(object sender, EventArgs e)
        {
            txtEposta.Text  = Session["ad"].ToString();

            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Ogrenci Where eposta=@p1",baglanti);
            komut.Parameters.AddWithValue("@p1", txtEposta.Text);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                lblID.Text = dr[0].ToString();
                txtAd.Text = dr[1].ToString();
                txtSoyad.Text = dr[2].ToString();
                txtNo.Text = dr[3].ToString();
                dropEgitim.Text = dr[4].ToString();
                txtEposta.Text= dr[5].ToString();

                SqlDataAdapter da = new SqlDataAdapter("select d.ad as[Dersler],o.ad +' '+o.soyad as[Öğretmenler] from Tbl_Ders d,Tbl_Ogretmen o  where o.OgretmenID=d.ogretmenID and donem="+dropEgitim.Text, baglanti);
                DataSet Ds = new DataSet();
                da.Fill(Ds);
                GridView1.DataSource = Ds;
                GridView1.DataBind();

                SqlCommand komut2 = new SqlCommand("select Ad from Tbl_Ders where donem="+dropEgitim.Text, baglanti);
                SqlDataReader dr2 = komut2.ExecuteReader();
                while (dr2.Read())
                {
                    ListItem litem = new ListItem();
                    litem.Text = dr2["ad"].ToString();
                    DropDownList1.Items.Add(litem);
                    DropDownList2.Items.Add(litem);
                    DropDownList3.Items.Add(litem);
                    DropDownList4.Items.Add(litem);
                    DropDownList5.Items.Add(litem);
                    DropDownList6.Items.Add(litem);
                }

                SqlCommand komut3 = new SqlCommand("select d.ad from Tbl_Not n,Tbl_Ogrenci o,Tbl_Ders d where o.OgrenciID=n.ogrenciID and d.dersID=n.dersID and durum='false' and o.OgrenciID="+lblID.Text, baglanti);
                SqlDataReader dr3 = komut3.ExecuteReader();
                while (dr3.Read())
                {
                    ListItem litem = new ListItem();
                    litem.Text = dr3["ad"].ToString();
                    DropDownList7.Items.Add(litem);
                    DropDownList8.Items.Add(litem);
                }
            }
            baglanti.Close();

           
        }
        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            DersSecim1.Text = DropDownList1.SelectedValue;
            DersSecim2.Text = DropDownList2.SelectedValue;
            DersSecim3.Text = DropDownList3.SelectedValue;
            DersSecim4.Text = DropDownList4.SelectedValue;
            DersSecim5.Text = DropDownList5.SelectedValue;
            DersSecim6.Text = DropDownList6.SelectedValue;
        }
        

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand("select o.ad,o.soyad,o.eposta from Tbl_Basvuru b, Tbl_Ogrenci o where o.OgrenciID = b.ogrenciID and o.ad =@p1 and o.soyad =@p2 and o.no=@p3", baglanti);
            sorgu.Parameters.AddWithValue("@p1", txtAd.Text);
            sorgu.Parameters.AddWithValue("@p2", txtSoyad.Text);
            sorgu.Parameters.AddWithValue("@p3", txtNo.Text);
            SqlDataReader dr = sorgu.ExecuteReader();
            if (dr.Read())
            {
                lblHata.Text = "Bu kullanıcı Daha Önce Başvuru Yapmıştır!!!";
                this.lblHata.Visible = true;
            }

            else
            {
                baglanti2.Open();
                SqlCommand komut = new SqlCommand("insert into Tbl_Basvuru(OgrenciID,SecDers1,SecDers2,SecDers3,SecDers4,SecDers5,SecDers6) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7)", baglanti2);
                komut.Parameters.AddWithValue("@p1", lblID.Text);
                komut.Parameters.AddWithValue("@p2", DersSecim1.Text);
                komut.Parameters.AddWithValue("@p3", DersSecim2.Text);
                komut.Parameters.AddWithValue("@p4", DersSecim3.Text);
                komut.Parameters.AddWithValue("@p5", DersSecim4.Text);
                komut.Parameters.AddWithValue("@p6", DersSecim5.Text);
                komut.Parameters.AddWithValue("@p7", DersSecim6.Text);
                komut.ExecuteNonQuery(); //Sorguyu çalıştır ekle-sil-güncelle de kullanılır.
                baglanti2.Close();
                this.lblHata.Visible = true;
                lblHata.Text = "Başvurunuz Başarıyla Kaydedildi!!!";
            }
            baglanti.Close();
        }


        protected void btnKalınanDers_Click(object sender, EventArgs e)
        {
            DersSecim6.Text = DropDownList7.SelectedValue;
            DersSecim5.Text = DropDownList8.SelectedValue;
        }
    }
}