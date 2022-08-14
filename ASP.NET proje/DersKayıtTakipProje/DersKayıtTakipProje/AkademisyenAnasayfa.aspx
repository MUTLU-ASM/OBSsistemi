<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AkademisyenAnasayfa.aspx.cs" Inherits="DersKayıtTakipProje.AkademisyenAnasayfa" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Personel Sayfası</title>
</head>
<body style="background-color: rgb(190, 210, 223);">
    
            <form id="form1" runat="server">
    
            <!-- Üst Menü -->
    <ul class="nav nav-tabs fs-5 fw-bold "style="margin:10px; font: 1em sans-serif;">
        <img  src="Web-Personel-Sayfası/akçakoca%20myo.jpg" class="img-thumbnail rounded-circle" style="height: 100px; margin-left: 20px;" alt="...">
        <li class="nav-item"style="margin:25px;">
          <a class="nav-link active" aria-current="page" href="#">Öğrenci Ders Kayıt Listesi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
      </ul>
          <a class="nav-link active" aria-current="page" href="#">
                <asp:Panel ID="Panel1" runat="server">
                    <a aria-current="page" class="nav-link active" href="#">
                    <asp:Label ID="Label1" runat="server" Font-Names="Modern No. 20" Font-Size="15pt" ForeColor="Black" Text="Akademisyen :"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lblAdSoyad" runat="server" Font-Names="Modern No. 20" Font-Size="15pt" ForeColor="Black" Text="Label"></asp:Label>
                    <asp:Label ID="lblEposta" runat="server" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
                    </a>&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Height="320px" Width="1476px">
                        <Columns>
                            <asp:BoundField DataField="ad" HeaderText="Ad" SortExpression="ad" />
                            <asp:BoundField DataField="soyad" HeaderText="Soyad" SortExpression="soyad" />
                            <asp:BoundField DataField="no" HeaderText="No" SortExpression="no" />
                            <asp:BoundField DataField="sinif" HeaderText="Sınıf" SortExpression="sinif" />
                            <asp:BoundField DataField="SecDers1" HeaderText="Ders-1" SortExpression="SecDers1" />
                            <asp:BoundField DataField="SecDers2" HeaderText="Ders-2" SortExpression="SecDers2" />
                            <asp:BoundField DataField="SecDers3" HeaderText="Ders-3" SortExpression="SecDers3" />
                            <asp:BoundField DataField="SecDers4" HeaderText="Ders-4" SortExpression="SecDers4" />
                            <asp:BoundField DataField="SecDers5" HeaderText="Ders-5" SortExpression="SecDers5" />
                            <asp:BoundField DataField="SecDers6" HeaderText="Ders-6" SortExpression="SecDers6" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OkulDersKayitProjesiConnectionString %>" SelectCommand="SELECT Tbl_Ogrenci.ad, Tbl_Ogrenci.soyad, Tbl_Ogrenci.no, Tbl_Ogrenci.sinif, Tbl_Basvuru.SecDers1, Tbl_Basvuru.SecDers2, Tbl_Basvuru.SecDers3, Tbl_Basvuru.SecDers4, Tbl_Basvuru.SecDers5, Tbl_Basvuru.SecDers6 FROM Tbl_Basvuru INNER JOIN Tbl_Ogrenci ON Tbl_Basvuru.OgrenciID = Tbl_Ogrenci.OgrenciID"></asp:SqlDataSource>
                </asp:Panel>
                </a>&nbsp;&nbsp;
            </form>

</body>
</html>
