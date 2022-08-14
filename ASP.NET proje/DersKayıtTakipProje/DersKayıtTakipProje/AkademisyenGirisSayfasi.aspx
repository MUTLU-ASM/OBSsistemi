<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AkademisyenGirisSayfasi.aspx.cs" Inherits="DersKayıtTakipProje.AkademisyenGirisSayfasi" %>

<!doctype html>
<html>
  <head>
    <title>Personel Giriş</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>   html  {
      background: url(web-Ogrenci-giris/arkaplanresim.jpg) no-repeat center center fixed; 
      -webkit-background-size: cover;
     -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
}
</style>
  </head>
  <body runat="server">

      <form id="form1" runat="server">
    <div class="container container position-absolute top-50 start-50 translate-middle">
        <div class="row">
          <div class="col">
            
          </div>
          <div class="col-5 "style="justify-content-center">


    <div class="container px-4">
        <div class="row gx-5">
          <div class="col">
           <div class="p-3 border bg-light rounded border border-3 border border-secondary shadow-lg p-3 mb-5 bg-body rounded">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:ImageButton ID="ImageButton1" runat="server" style="margin-left: 100px;" class="img-thumbnail rounded-circle" ImageUrl="~/web-Personel-Giriş/personellogo.png" Height="170px" Width="172px" PostBackUrl="~/OgrenciGirisSayfası.aspx"/>

            <p class="fs-1 mx-auto"style="font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; width: 400px;">AKADEMİK PERSONEL</p>


            <div class="mb-4 row mx-auto" style="width: 500px;">
                <label for="staticEmail" class="col-sm-2 col-form-label fw-bold">Kullanıcı:</label>
                <div class="col-sm-8 ">
                    <asp:TextBox ID="txtAd" runat="server" Height="36px" Width="320px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAd" EnableClientScript="False" ErrorMessage="Kullanıcı Adınızı Giriniz!!" Font-Bold="True" Font-Size="14pt" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
              </div>
            <div class="mb-3 row mx-auto" style="width: 500px;">
               <label for="inputPassword" class="col-sm-2 col-form-label fw-bold">&nbsp;&nbsp;&nbsp; Şifre:</label>
             <div class="col-sm-8">
                 <asp:TextBox ID="txtSifre" runat="server" Height="36px" Width="320px" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" EnableClientScript="False" ErrorMessage="Şifrenizi Giriniz!!" Font-Bold="True" Font-Size="14pt" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 <br />
                 <asp:Label ID="lblHata" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#CC0000" Text="Label" Visible="False"></asp:Label>
                 <br>
                 <asp:Button ID="btnOturumAc" runat="server" Text="Oturum Aç" Width="265px" Height="43px" Font-Names="Sitka Subheading Semibold" Font-Size="Large" OnClick="btnOturumAc_Click" />
             </div>
            </div>
            
           </div>
          </div>
        </div>
      </div>

          </div>
          <div class="col">
            
          </div>
        </div>
      </div>

       </form>
  </body>
</html>