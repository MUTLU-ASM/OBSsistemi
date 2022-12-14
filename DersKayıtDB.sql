USE [OkulDersKayitProjesi]
GO
/****** Object:  Table [dbo].[Tbl_Basvuru]    Script Date: 27.05.2022 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Basvuru](
	[basvuruID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[SecDers1] [varchar](50) NULL,
	[SecDers2] [varchar](50) NULL,
	[SecDers3] [varchar](50) NULL,
	[SecDers4] [varchar](50) NULL,
	[SecDers5] [varchar](50) NULL,
	[SecDers6] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Basvuru] PRIMARY KEY CLUSTERED 
(
	[basvuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Bolum]    Script Date: 27.05.2022 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Bolum](
	[bolumID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Bolum] PRIMARY KEY CLUSTERED 
(
	[bolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ders]    Script Date: 27.05.2022 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ders](
	[dersID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NULL,
	[ogretmenID] [int] NULL,
	[donem] [nchar](10) NULL,
 CONSTRAINT [PK_Tbl_Ders] PRIMARY KEY CLUSTERED 
(
	[dersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Not]    Script Date: 27.05.2022 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Not](
	[ogrenciID] [int] NULL,
	[dersID] [int] NULL,
	[vize] [tinyint] NULL,
	[final] [tinyint] NULL,
	[ort] [tinyint] NULL,
	[durum] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ogrenci]    Script Date: 27.05.2022 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ogrenci](
	[OgrenciID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[no] [int] NULL,
	[sinif] [tinyint] NULL,
	[eposta] [varchar](50) NULL,
	[sifre] [varchar](50) NULL,
	[bolumID] [int] NULL,
 CONSTRAINT [PK_Tbl_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[OgrenciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Ogretmen]    Script Date: 27.05.2022 01:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Ogretmen](
	[OgretmenID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NULL,
	[soyad] [varchar](50) NULL,
	[eposta] [varchar](50) NULL,
	[sifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Ogretmen] PRIMARY KEY CLUSTERED 
(
	[OgretmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Basvuru] ON 

INSERT [dbo].[Tbl_Basvuru] ([basvuruID], [OgrenciID], [SecDers1], [SecDers2], [SecDers3], [SecDers4], [SecDers5], [SecDers6]) VALUES (2, 1, N'İnternet Programcılığı', N'Sayısal Elektronik', N'Görsel Programlama', N'Doğa ve Bilim', N'İngilizce', N'Tarih')
INSERT [dbo].[Tbl_Basvuru] ([basvuruID], [OgrenciID], [SecDers1], [SecDers2], [SecDers3], [SecDers4], [SecDers5], [SecDers6]) VALUES (7, 2, N'Veri Tabanı', N'Programlama Temelleri', N'MikroDenetleyici', N'Matematik', N'Web Tasarım Temelleri', N'Sistem Analizi')
SET IDENTITY_INSERT [dbo].[Tbl_Basvuru] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Bolum] ON 

INSERT [dbo].[Tbl_Bolum] ([bolumID], [ad]) VALUES (1, N'Bilgisayar Programcılığı')
INSERT [dbo].[Tbl_Bolum] ([bolumID], [ad]) VALUES (2, N'Yazılım Mühendisliği')
SET IDENTITY_INSERT [dbo].[Tbl_Bolum] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Ders] ON 

INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (1, N'İnternet Programcılığı', 1, N'2         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (2, N'Sayısal Elektronik', 2, N'2         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (3, N'Görsel Programlama', 3, N'2         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (4, N'Veri Tabanı', 1, N'3         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (5, N'Programlama Temelleri', 3, N'3         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (6, N'MikroDenetleyici', 2, N'3         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (7, N'Matematik', 1, N'3         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (8, N'Web Tasarım Temelleri', 3, N'3         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (9, N'Tarih', 4, N'1         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (10, N'İngilizce', 5, N'1         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (11, N'Edebiyat', 4, N'1         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (12, N'Sistem Analizi', 2, N'3         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (13, N'Kişisel Gelişim', 4, N'1         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (14, N'Girişimcilik', 5, N'1         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (15, N'İlk Yardım', 5, N'1         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (16, N'Doğa ve Bilim', 4, N'2         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (17, N'İnsan ve Toplum', 2, N'2         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (18, N'Algoritmalar', 3, N'2         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (19, N'Siber Güvenlik', 1, N'4         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (20, N'Robotik', 3, N'4         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (21, N'Yapay Zeka', 3, N'4         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (22, N'Veri Bilimi ve Analitiği', 2, N'4         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (23, N'Bilgisayar Ağları', 1, N'4         ')
INSERT [dbo].[Tbl_Ders] ([dersID], [ad], [ogretmenID], [donem]) VALUES (24, N'Yazılım Testi', 2, N'4         ')
SET IDENTITY_INSERT [dbo].[Tbl_Ders] OFF
GO
INSERT [dbo].[Tbl_Not] ([ogrenciID], [dersID], [vize], [final], [ort], [durum]) VALUES (1, 9, NULL, NULL, 45, 0)
INSERT [dbo].[Tbl_Not] ([ogrenciID], [dersID], [vize], [final], [ort], [durum]) VALUES (1, 2, NULL, NULL, 60, 1)
INSERT [dbo].[Tbl_Not] ([ogrenciID], [dersID], [vize], [final], [ort], [durum]) VALUES (1, 10, NULL, NULL, 25, 0)
GO
SET IDENTITY_INSERT [dbo].[Tbl_Ogrenci] ON 

INSERT [dbo].[Tbl_Ogrenci] ([OgrenciID], [ad], [soyad], [no], [sinif], [eposta], [sifre], [bolumID]) VALUES (1, N'Asım', N'Mutlu', 201502053, 2, N'asim@gmail.com', N'123456', 1)
INSERT [dbo].[Tbl_Ogrenci] ([OgrenciID], [ad], [soyad], [no], [sinif], [eposta], [sifre], [bolumID]) VALUES (2, N'Ahmet', N'Burak', 201502000, 3, N'ahmet@gmail.com', N'123456', 2)
SET IDENTITY_INSERT [dbo].[Tbl_Ogrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Ogretmen] ON 

INSERT [dbo].[Tbl_Ogretmen] ([OgretmenID], [ad], [soyad], [eposta], [sifre]) VALUES (1, N'Serdar ', N'Arpacı', N'serdar@gmail.com', N'123456')
INSERT [dbo].[Tbl_Ogretmen] ([OgretmenID], [ad], [soyad], [eposta], [sifre]) VALUES (2, N'Emrah', N'Mercan', N'emrah@gmail.com', N'123456')
INSERT [dbo].[Tbl_Ogretmen] ([OgretmenID], [ad], [soyad], [eposta], [sifre]) VALUES (3, N'Erdi', N'Yalçın', N'erdi@gmail.com', N'123456')
INSERT [dbo].[Tbl_Ogretmen] ([OgretmenID], [ad], [soyad], [eposta], [sifre]) VALUES (4, N'İpek', N'Akyol', N'ipek@gmail.com', N'123456')
INSERT [dbo].[Tbl_Ogretmen] ([OgretmenID], [ad], [soyad], [eposta], [sifre]) VALUES (5, N'Osman ', N'Şeker', N'osman@gmail.com', N'123456789')
SET IDENTITY_INSERT [dbo].[Tbl_Ogretmen] OFF
GO
ALTER TABLE [dbo].[Tbl_Basvuru]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Basvuru_Tbl_Ogrenci1] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Tbl_Ogrenci] ([OgrenciID])
GO
ALTER TABLE [dbo].[Tbl_Basvuru] CHECK CONSTRAINT [FK_Tbl_Basvuru_Tbl_Ogrenci1]
GO
ALTER TABLE [dbo].[Tbl_Ders]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Ders_Tbl_Ogretmen] FOREIGN KEY([ogretmenID])
REFERENCES [dbo].[Tbl_Ogretmen] ([OgretmenID])
GO
ALTER TABLE [dbo].[Tbl_Ders] CHECK CONSTRAINT [FK_Tbl_Ders_Tbl_Ogretmen]
GO
ALTER TABLE [dbo].[Tbl_Not]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Not_Tbl_Ders] FOREIGN KEY([dersID])
REFERENCES [dbo].[Tbl_Ders] ([dersID])
GO
ALTER TABLE [dbo].[Tbl_Not] CHECK CONSTRAINT [FK_Tbl_Not_Tbl_Ders]
GO
ALTER TABLE [dbo].[Tbl_Not]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Not_Tbl_Ogrenci] FOREIGN KEY([ogrenciID])
REFERENCES [dbo].[Tbl_Ogrenci] ([OgrenciID])
GO
ALTER TABLE [dbo].[Tbl_Not] CHECK CONSTRAINT [FK_Tbl_Not_Tbl_Ogrenci]
GO
ALTER TABLE [dbo].[Tbl_Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Ogrenci_Tbl_Bolum] FOREIGN KEY([bolumID])
REFERENCES [dbo].[Tbl_Bolum] ([bolumID])
GO
ALTER TABLE [dbo].[Tbl_Ogrenci] CHECK CONSTRAINT [FK_Tbl_Ogrenci_Tbl_Bolum]
GO
