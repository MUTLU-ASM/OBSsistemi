<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OgrenciAnasayfa.aspx.cs" Inherits="DersKayıtTakipProje.OgrenciAnasayfa" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Öğrenci Sayfası</title>
    <style type="text/css">
        .auto-style1 {
            height: 1px;
            font-size: large;
        }
        .auto-style2 {
            margin-bottom: 40;
        }
        .auto-style3 {
            flex: 0 0 auto;
            width: 25%;
            margin-bottom: 0px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            margin-bottom: .5rem;
            width: 49px;
        }
        .auto-style6 {
            text-decoration: underline;
            font-size: 15pt;
        }
        .auto-style7 {
            color: #CC0000;
            font-size: 15pt;
        }
        .auto-style8 {
            height: 25px;
        }
    </style>
</head>
<body style="background-color: rgb(190, 210, 223);">
    <form id="form1" runat="server">
            <!-- Üst Menü -->
    <ul class="nav nav-tabs fs-5 fw-bold "style="margin:10px; font: 1em sans-serif;">
        <img  src="Web-Ogrenci-Sayfası/akçakoca%20myo.jpg" class="img-thumbnail rounded-circle" style="height: 100px; margin-left: 20px;" alt="...">
        <li class="nav-item"style="margin:25px;">
          <a class="nav-link active" aria-current="page" href="#">Ders Kayıt</a>
        </li>
      </ul>

      <div class="container px-4">
        <div class="row gx-5">
          <div class="col">
           <div class="p-3 border bg-light">
            
            <!-- Öğretmen Ders Kontenjan Listesi -->

            <table class="table table table-hover ">
              <thead>
              </thead>
              <tbody>
                <tr>
                  <td class="auto-style8"><span class="auto-style6">
                      <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="561px" Height="354px">
                          <FooterStyle BackColor="#CCCC99" ForeColor="Black" Wrap="True" />
                          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Wrap="True" />
                          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F7F7F7" />
                          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                          <SortedDescendingCellStyle BackColor="#E5E5E5" />
                          <SortedDescendingHeaderStyle BackColor="#242121" />
                      </asp:GridView>
                      </span></td>
                </tr>

              </tbody>
            </table>



           </div>
          </div>
          <div class="col">
            <div class="p-3 border bg-light">
            
                <p style="font-family:'Times New Roman', Times, serif; font-size: 24px; background-color: #FFFFFF; color: #000000; text-decoration: underline; font-style: inherit; font-weight: bold;" class="auto-style1"> Lütfen eksiksiz ders seçimi yapınız.<p style="font-family:'Times New Roman', Times, serif; font-size: large;"> &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="579px">
                <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>

                </asp:DropDownList>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="33px" Width="579px">
                        <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>
                    </asp:DropDownList>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="33px" Width="579px">
                        <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>
                    </asp:DropDownList>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="33px" Width="579px">
                        <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>
                    </asp:DropDownList>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="33px" Width="579px">
                        <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>
                    </asp:DropDownList>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:DropDownList ID="DropDownList6" runat="server" Height="33px" Width="579px">
                        <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>
                    </asp:DropDownList>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:Button ID="btnOnayla" runat="server" Height="35px" OnClick="btnOnayla_Click" Text="Onayla" Width="573px" />


            </div>
          </div>
        </div>
      </div>

             <br><br>

      <div class="container px-4">
        <div class="row gx-5">
          <div class="col">
           <div class="p-3 border bg-light"style="font-family:'Times New Roman', Times, serif; font-size: large;"><span class="auto-style6"><strong>Bilgilendirme </strong></span> <br><br> <span class="auto-style7">1-) Kalmış olduğunuz derslerdenden en fazla iki ders alabilirsiniz.<br />
               <br />
               2-) Lütfen Kalınan 2 dersiniz var ise ders seçimlerinde sırasıyla 4 tane ders seçiniz.</span></div>
          </div>
          <div class="col">
            <div class="p-3 border bg-light" style="font-family:'Times New Roman', Times, serif; font-size: large;"><span class="auto-style6"><strong>Kaldığı Dersler<br />
                </strong></span><br />
                    <asp:DropDownList ID="DropDownList7" runat="server" Height="33px" Width="579px">
                        <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>
                    </asp:DropDownList>
                <br />
                <br />
                    <asp:DropDownList ID="DropDownList8" runat="server" Height="33px" Width="579px">
                        <asp:ListItem>Bir Ders Seçiniz.</asp:ListItem>
                    </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="btnKalınanDers" runat="server" Height="33px" OnClick="btnKalınanDers_Click" Text="Onayla" Width="565px" />
              </div>
            </div>
          </div>
        </div>
      &nbsp;<br><br>

      <div class="container px-4">
        <div class="row gx-5">
          <div class="col">
           <div class="p-3 border bg-light">
             
<!-- Kişsel Bilgi  -->

         <div class="row g-3">
                <div class="col-md-4">
                  &nbsp;<label for="validationDefault02" class="auto-style5">Ad</label><br />
&nbsp;<asp:TextBox ID="txtAd" runat="server" Height="37px" Width="171px" Enabled="False"></asp:TextBox>
                    <asp:Label ID="lblID" runat="server" Text="ID" Visible="False"></asp:Label>
                </div>
                <div class="col-md-4">
                  <label for="validationDefault02" class="auto-style5">Soyad</label>&nbsp;
                    <br />
                    <asp:TextBox ID="txtSoyad" runat="server" Height="37px" Width="171px" Enabled="False"></asp:TextBox>
                </div>
                <div class="col-md-4">
                  &nbsp;<div class="input-group">
                    <span class="input-group-text" id="inputGroupPrepend2">@</s
                      <asp:TextBox ID="txtEposta" runat="server" Height="47px" Width="128px" Enabled="False"></asp:TextBox><br />
&nbsp;</div>
                </div>
                <div class="col-md-6">
                  <label for="validationDefault03" class="form-label">Öğrenci Numaranız
                    <asp:TextBox ID="txtNo" runat="server" Height="37px" Width="260px" Enabled="False"></asp:TextBox>
                </div>
                <div class="auto-style3">
                  <label for="validationDefault04" class="form-label">Dönem</la&nbsp;
                    <br />
                    <asp:DropDownList ID="dropEgitim" runat="server" CssClass="auto-style2" Height="37px" Width="151px" Enabled="False">
                        <asp:ListItem>Dönem</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </div>
                <div class="col-12">
                    <asp:Button ID="btnGonder" runat="server" Text="Gönder" Height="37px" Width="146px" OnClick="btnGonder_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblHata" runat="server" Font-Bold="True" Font-Size="11pt" ForeColor="#CC0000" Text="Label" Visible="False"></asp:Label>
                </div>
              </div>

           </div>
          </div>
          <div class="col">
            <!-- Seçilmiş Ders Listesi  -->

            <div class="p-3 border bg-light">
              <p style="font-family:'Times New Roman', Times, serif; font-size: 24px; text-decoration: underline; font-style: inherit; color: #000000; font-weight: bold;" class="auto-style4"> Seçmiş Olduğunuz Dersler.ler.</p>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> &nbsp;<asp:Label ID="Label1" runat="server" Text="1. "></asp:Label>
                    <asp:Label ID="DersSecim1" runat="server" Text="Ders Seçimi"></asp:Label>
                </p>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:Label ID="Label2" runat="server" Text="2. "></asp:Label>
                    <asp:Label ID="DersSecim2" runat="server" Text="Ders Seçimi"></asp:Label>
                </p>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:Label ID="Label3" runat="server" Text="3. "></asp:Label>
                    <asp:Label ID="DersSecim3" runat="server" Text="Ders Seçimi"></asp:Label>
                </p>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:Label ID="Label4" runat="server" Text="4. "></asp:Label>
                    <asp:Label ID="DersSecim4" runat="server" Text="Ders Seçimi"></asp:Label>
                </p>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:Label ID="Label5" runat="server" Text="5. "></asp:Label>
                    <asp:Label ID="DersSecim5" runat="server" Text="Ders Seçimi"></asp:Label>
                </p>
                <p style="font-family:'Times New Roman', Times, serif; font-size: large;"> 
                    <asp:Label ID="Label6" runat="server" Text="6. "></asp:Label>
                    <asp:Label ID="DersSecim6" runat="server" Text="Ders Seçimi"></asp:Label>
                </p>
              </div>
          </div>
        </div>
      </div>
            <br> 
        </form>
</body>
</html>