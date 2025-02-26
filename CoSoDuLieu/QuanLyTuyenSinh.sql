
USE [master]
GO


/****** Object:  Database [QLTSDH]     ******/
CREATE DATABASE [QLTSDH]
GO

USE [QLTSDH]
GO


/****** Object:  Table [dbo].[dangnhap]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangnhap](
	[taikhoan] [nvarchar](20) NOT NULL,
	[matkhau] [nvarchar](50) NOT NULL,
	[quyen] [nvarchar](20) NULL,
	[quenmk] [nvarchar](20) NULL,
	[trangthai] [int] NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dantoc]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dantoc](
	[madt] [nvarchar](5) NOT NULL,
	[tendt] [nvarchar](50) NULL,
 CONSTRAINT [PK_dantoc] PRIMARY KEY CLUSTERED 
(
	[madt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[diadiem]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diadiem](
	[madd] [int] IDENTITY(1,1) NOT NULL,
	[tendd] [nvarchar](50) NULL,
	[namthi] [int] NULL,
	[phong] [int] NULL,
 CONSTRAINT [PK_maphongthi] PRIMARY KEY CLUSTERED 
(
	[madd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[diem]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diem](
	[mamon] [int] NULL,
	[sophach] [int] NOT NULL,
	[diem] [float] NULL,
	[namthi] [int] NULL,
	[phongthi] [int] NULL,
 CONSTRAINT [PK_diem] PRIMARY KEY CLUSTERED 
(
	[sophach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[doituong]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doituong](
	[madt] [nchar](2) NOT NULL,
	[tendoituong] [nvarchar](max) NULL,
	[diemut] [float] NULL,
 CONSTRAINT [PK_doituong] PRIMARY KEY CLUSTERED 
(
	[madt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giaodien]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaodien](
	[chon] [int] NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[giaodien] WITH ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[huyen]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[huyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matinh] [int] NULL,
	[mahuyen] [int] NOT NULL,
	[tenhuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_huyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khuvuc]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuvuc](
	[makv] [nvarchar](10) NOT NULL,
	[tenkv] [nvarchar](50) NULL,
	[diemcong] [float] NULL,
 CONSTRAINT [PK_khuvuc] PRIMARY KEY CLUSTERED 
(
	[makv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mamon]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mamon](
	[mamon] [int] NOT NULL,
	[tenmon] [nvarchar](50) NULL,
 CONSTRAINT [PK_mamon] PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[maquyen]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquyen](
	[ma] [nvarchar](20) NOT NULL,
	[ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_maquyen] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[namthi]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[namthi](
	[ma] [int] NOT NULL,
	[namthi] [nvarchar](10) NULL,
 CONSTRAINT [PK_namthi] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nganh]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nganh](
	[manganh] [nvarchar](10) NOT NULL,
	[tennganh] [nvarchar](50) NULL,
	[chitieu] [int] NULL,
 CONSTRAINT [PK_nganh] PRIMARY KEY CLUSTERED 
(
	[manganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phach]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phach](
	[mon] [int] NULL,
	[sobd] [nvarchar](10) NULL,
	[phongthi] [nvarchar](10) NULL,
	[namthi] [int] NULL,
	[pid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phach] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phongthi]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phongthi](
	[sbd] [nvarchar](20) NULL,
	[sophongthi] [int] NULL,
	[namthi] [int] NULL,
	[bothi] [int] NULL,
	[mon] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phongthi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thisinh]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thisinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sobd] [nvarchar](10) NULL,
	[hots] [nvarchar](50) NULL,
	[tents] [nvarchar](10) NULL,
	[ngaysinh] [datetime] NULL,
	[gioitinh] [nvarchar](3) NULL,
	[matinh] [int] NULL,
	[mahuyen] [int] NULL,
	[cmt] [nvarchar](10) NULL,
	[hokhau] [nvarchar](100) NULL,
	[dantoc] [nvarchar](5) NULL,
	[dt_ut] [nchar](2) NULL,
	[khuvuc] [nvarchar](10) NULL,
	[nganhdk] [nvarchar](10) NULL,
	[namthi] [int] NULL,
	[dcbaotin] [nvarchar](250) NULL,
	[namtn] [int] NULL,
 CONSTRAINT [PK_thisinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tinh]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tinh](
	[matinh] [int] NOT NULL,
	[tentinh] [nvarchar](20) NULL,
 CONSTRAINT [PK_tinh] PRIMARY KEY CLUSTERED 
(
	[matinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[view_hoso]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_hoso]
AS
SELECT      TOP (100) PERCENT id, LTRIM(RTRIM(STR(matinh))) + LTRIM(STR(id)) AS mahoso, sobd, hots + ' ' + tents AS hovaten, ngaysinh, gioitinh, 
                        matinh, mahuyen, cmt, hokhau, dt_ut, khuvuc, nganhdk, dantoc, namthi, dcbaotin, namtn
FROM          dbo.thisinh
ORDER BY tents

GO
/****** Object:  View [dbo].[view_giaybaothi]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_giaybaothi]
AS
SELECT DISTINCT 
                        TOP (100) PERCENT dbo.view_hoso.sobd, dbo.view_hoso.hovaten, dbo.view_hoso.ngaysinh, dbo.view_hoso.gioitinh, dbo.view_hoso.dt_ut, 
                        dbo.view_hoso.khuvuc, dbo.view_hoso.nganhdk, dbo.phongthi.sophongthi, dbo.diadiem.tendd, dbo.view_hoso.namthi, 
                        dbo.view_hoso.mahoso
FROM          dbo.view_hoso INNER JOIN
                        dbo.phongthi ON dbo.view_hoso.sobd = dbo.phongthi.sbd AND dbo.view_hoso.namthi = dbo.phongthi.namthi INNER JOIN
                        dbo.diadiem ON dbo.phongthi.sophongthi = dbo.diadiem.phong AND dbo.view_hoso.namthi = dbo.diadiem.namthi AND 
                        dbo.phongthi.namthi = dbo.diadiem.namthi
ORDER BY dbo.view_hoso.sobd

GO
/****** Object:  View [dbo].[view_phach]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_phach]
AS
SELECT      dbo.phach.pid AS maphach, dbo.phach.mon, dbo.phach.phongthi, dbo.phach.sobd, dbo.phach.namthi, dbo.mamon.tenmon, dbo.diadiem.tendd, 
                        dbo.diadiem.phong
FROM          dbo.phach INNER JOIN
                        dbo.mamon ON dbo.phach.mon = dbo.mamon.mamon INNER JOIN
                        dbo.diadiem ON dbo.phach.phongthi = dbo.diadiem.phong AND dbo.phach.namthi = dbo.diadiem.namthi

GO
/****** Object:  View [dbo].[view_diem]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_diem]
AS
SELECT      TOP (100) PERCENT dbo.view_phach.sobd, dbo.diem.sophach, dbo.diem.mamon, dbo.view_hoso.hovaten, dbo.view_hoso.ngaysinh, 
                        dbo.view_hoso.gioitinh, dbo.view_hoso.dantoc, dbo.diem.diem, dbo.view_hoso.namthi
FROM          dbo.diem INNER JOIN
                        dbo.view_phach ON dbo.diem.sophach = dbo.view_phach.maphach INNER JOIN
                        dbo.view_hoso ON dbo.view_phach.sobd = dbo.view_hoso.sobd AND dbo.view_phach.namthi = dbo.view_hoso.namthi AND 
                        dbo.diem.namthi = dbo.view_hoso.namthi
ORDER BY dbo.view_phach.sobd, dbo.diem.mamon

GO
/****** Object:  View [dbo].[view_diemmon]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_diemmon]
AS
SELECT      sobd, hovaten, diem, namthi, dantoc, gioitinh, ngaysinh, CASE mamon WHEN 1 THEN diem END AS mon1, 
                        CASE mamon WHEN 2 THEN diem END AS mon2, CASE mamon WHEN 3 THEN diem END AS mon3, sophach
FROM          dbo.view_diem
GROUP BY sobd, hovaten, diem, mamon, namthi, dantoc, gioitinh, ngaysinh, sophach

GO
/****** Object:  View [dbo].[view_tongdiem]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_tongdiem]
AS
SELECT      dbo.view_diemmon.sobd, dbo.view_diemmon.hovaten, dbo.view_diemmon.namthi, dbo.dantoc.tendt, dbo.view_diemmon.gioitinh, 
                        dbo.view_diemmon.ngaysinh, MAX(dbo.view_diemmon.mon1) AS toan, MAX(dbo.view_diemmon.mon2) AS ly, MAX(dbo.view_diemmon.mon3) 
                        AS hoa, SUM(dbo.view_diemmon.diem) AS tongdiem
FROM          dbo.view_diemmon INNER JOIN
                        dbo.dantoc ON dbo.view_diemmon.dantoc = dbo.dantoc.madt
GROUP BY dbo.view_diemmon.sobd, dbo.view_diemmon.hovaten, dbo.view_diemmon.namthi, dbo.view_diemmon.dantoc, dbo.view_diemmon.gioitinh, 
                        dbo.view_diemmon.ngaysinh, dbo.dantoc.tendt

GO
/****** Object:  View [dbo].[view_tongdiem_cong]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_tongdiem_cong]
AS
SELECT      dbo.view_tongdiem.sobd, dbo.view_tongdiem.hovaten, dbo.view_tongdiem.namthi, dbo.view_tongdiem.tendt, dbo.thisinh.cmt, 
                        dbo.thisinh.matinh, dbo.thisinh.mahuyen, dbo.thisinh.nganhdk, dbo.thisinh.dt_ut, dbo.thisinh.khuvuc, dbo.view_tongdiem.gioitinh, 
                        dbo.view_tongdiem.ngaysinh, dbo.view_tongdiem.toan, dbo.view_tongdiem.ly, dbo.view_tongdiem.hoa, dbo.view_tongdiem.tongdiem, 
                        dbo.view_tongdiem.tongdiem + dbo.khuvuc.diemcong + dbo.doituong.diemut AS tongdiemcong, dbo.nganh.tennganh
FROM          dbo.view_tongdiem INNER JOIN
                        dbo.thisinh ON dbo.view_tongdiem.sobd = dbo.thisinh.sobd AND dbo.view_tongdiem.namthi = dbo.thisinh.namthi INNER JOIN
                        dbo.khuvuc ON dbo.thisinh.khuvuc = dbo.khuvuc.makv INNER JOIN
                        dbo.doituong ON dbo.thisinh.dt_ut = dbo.doituong.madt INNER JOIN
                        dbo.nganh ON dbo.thisinh.nganhdk = dbo.nganh.manganh

GO
/****** Object:  View [dbo].[view_bothi]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_bothi]
AS
SELECT      dbo.phongthi.sbd, dbo.phongthi.sophongthi, dbo.phongthi.namthi, dbo.phongthi.bothi, dbo.phongthi.mon, dbo.phongthi.id, 
                        dbo.view_hoso.hovaten
FROM          dbo.phongthi INNER JOIN
                        dbo.view_hoso ON dbo.phongthi.sbd = dbo.view_hoso.sobd AND dbo.phongthi.namthi = dbo.view_hoso.namthi

GO
/****** Object:  View [dbo].[view_phongthi]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_phongthi]
AS
SELECT      TOP (100) PERCENT dbo.thisinh.sobd, dbo.thisinh.hots + ' ' + dbo.thisinh.tents AS hovaten, dbo.thisinh.ngaysinh, dbo.thisinh.gioitinh, 
                        dbo.phongthi.namthi, dbo.diadiem.phong, dbo.diadiem.tendd, dbo.thisinh.hokhau
FROM          dbo.thisinh INNER JOIN
                        dbo.phongthi ON dbo.thisinh.sobd = dbo.phongthi.sbd AND dbo.thisinh.namthi = dbo.phongthi.namthi INNER JOIN
                        dbo.diadiem ON dbo.phongthi.sophongthi = dbo.diadiem.phong AND dbo.thisinh.namthi = dbo.diadiem.namthi
ORDER BY dbo.thisinh.sobd

GO
INSERT [dbo].[dangnhap] ([taikhoan], [matkhau], [quyen], [quenmk], [trangthai]) VALUES (N'admin', N'12345', N'admin', N'admin@123', 1)
INSERT [dbo].[dangnhap] ([taikhoan], [matkhau], [quyen], [quenmk], [trangthai]) VALUES (N'admin1', N'12345', N'mod', N'123456', 0)
INSERT [dbo].[dangnhap] ([taikhoan], [matkhau], [quyen], [quenmk], [trangthai]) VALUES (N'dinhphong', N'12345', N'mod', N'123456', 0)
INSERT [dbo].[dangnhap] ([taikhoan], [matkhau], [quyen], [quenmk], [trangthai]) VALUES (N'ngochiep', N'12345', N'mod', N'123456', 0)
INSERT [dbo].[dangnhap] ([taikhoan], [matkhau], [quyen], [quenmk], [trangthai]) VALUES (N'trannam', N'12345', N'admin', N'khacnhap', 0)
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT1', N'Kinh')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT10', N'Gia Rai')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT11', N'Ê Đê')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT12', N'Ba na')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT13', N'Sán Chay')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT14', N'Chăm')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT15', N'Sơ đăng')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT2', N'Tày')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT3', N'Thái')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT4', N'Mường')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT5', N'Hoa')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT6', N'Khơ Me')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT7', N'Nùng')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT8', N'Hơ Mông')
INSERT [dbo].[dantoc] ([madt], [tendt]) VALUES (N'DT9', N'Dao')
SET IDENTITY_INSERT [dbo].[diadiem] ON 

INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (13, N'A4 - 202', 2023, 1)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (14, N'A4 - 203', 2023, 2)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (15, N'A4 - 204', 2023, 3)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (16, N'A4 - 205', 2023, 4)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (18, N'A7 - 202', 2023, 2)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (19, N'A4 - 208', 2023, 3)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (20, N'A4 - 205', 2023, 4)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (21, N'A4 - 206', 2023, 5)
INSERT [dbo].[diadiem] ([madd], [tendd], [namthi], [phong]) VALUES (22, N'A4 - 202', 2023, 1)
SET IDENTITY_INSERT [dbo].[diadiem] OFF
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 491, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 492, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 493, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 494, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 495, 2, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 496, 3, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 497, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 498, 4, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 499, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 500, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 501, 7.5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 502, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 503, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 504, 7, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 505, 4, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 506, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 507, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 508, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 509, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 510, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 511, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 512, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 513, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 514, 9, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 515, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 516, 4, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 517, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 518, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 519, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 520, 3, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 521, 10, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 522, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 523, 9, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 524, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 525, 3, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 526, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 527, 7, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 528, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 529, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 530, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 531, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 532, 7, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 533, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 534, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 535, 9, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 536, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 537, 3, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 538, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 539, 7, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 540, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 541, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 542, 9, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 543, 5.5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 544, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 545, 6, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 546, 9, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 547, 8, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 548, 5, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 549, 3, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 550, 7, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 551, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 552, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 553, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 554, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 555, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 556, 2, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 557, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 558, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 559, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 560, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 561, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 562, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 563, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 564, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 565, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 566, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 567, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 568, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 569, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 570, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 571, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 572, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 573, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 574, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 575, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 576, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 577, 6, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 578, 6, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 579, 6, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 580, 6, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 581, 3, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 582, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 583, 3, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 584, 6, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 585, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 586, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 587, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 588, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 589, 5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 590, 6, 2023, 2)
GO
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 591, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 592, 8, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 593, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 594, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 595, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 596, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 597, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 598, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 599, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 600, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 601, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 602, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 603, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 604, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 605, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 606, 7, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 607, 6.5, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 608, 9, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 609, 6, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 610, 6, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 611, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 612, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 613, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 614, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 615, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 616, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 617, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 618, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 619, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 620, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 621, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 622, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 623, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 624, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 625, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 626, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 627, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 628, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 629, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 630, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 631, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 632, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 633, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 634, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 635, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 636, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 637, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 638, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 639, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 640, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 641, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 642, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 643, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 644, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 645, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 646, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 647, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 648, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 649, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 650, 6, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 651, 8, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 652, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 653, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 654, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 655, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 656, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 657, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 658, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 659, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 660, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 661, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 662, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 663, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 664, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 665, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 666, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 667, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 668, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 669, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 670, 7, 2023, 3)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 671, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 672, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 673, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 674, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 675, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 676, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 677, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 678, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 679, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 680, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 681, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 682, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 683, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 684, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 685, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 686, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 687, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 688, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 689, 7, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 690, 6, 2023, 4)
GO
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 691, 9, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 692, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 693, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 694, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 695, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 696, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 697, 5, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 698, 5, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 699, 5, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 700, 5, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 701, 5, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 702, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 703, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 704, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 705, 6, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 706, 5, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 725, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 726, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 727, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 728, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 729, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 730, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 731, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 732, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 733, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 734, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 735, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 736, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 737, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 738, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 739, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 740, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 741, 8, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 742, 7, 2023, 4)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 763, 1, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 764, 1, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 765, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 766, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 767, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 768, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 769, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 770, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 771, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 772, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 773, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 774, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 775, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 776, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 777, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 778, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 779, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 780, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 781, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (2, 782, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 783, 1, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 784, 1, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 785, 1, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 786, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 787, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 788, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 789, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 790, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 791, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 792, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 793, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 794, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 795, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 796, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 797, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 798, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 799, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 800, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 801, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (3, 802, 0, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 803, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 804, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 805, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 806, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 807, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 808, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 809, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 810, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 811, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 812, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 813, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 814, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 815, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 816, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 817, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 818, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 819, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 820, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 821, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 822, NULL, 2023, 2)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 823, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 824, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 825, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 826, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 827, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 828, NULL, 2023, 1)
GO
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 829, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 830, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 831, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 832, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 833, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 834, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 835, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 836, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 837, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 838, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 839, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 840, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 841, NULL, 2023, 1)
INSERT [dbo].[diem] ([mamon], [sophach], [diem], [namthi], [phongthi]) VALUES (1, 842, NULL, 2023, 1)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'0 ', N'không phải đối tượng ưu tiên', 0)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'1 ', N'Công dân Việt Nam là người dân tộc thiểu số', 2)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'2 ', N'Công nhân ưu tú , chiến sĩ thi đua ', 2)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'3 ', N'Thương binh, bệnh binh, người hưởng chính sách như thương binh', 2)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'4 ', N'Con liệt sĩ ; Con thương binh ,bệnh binh ;  Con của Bà mẹ Việt Nam Anh hùng', 2)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'5 ', N'Thanh niên xung phong, Quân nhân, công an nhân dân ', 1)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'6 ', N'Con thương binh ,Con bệnh binh mất sức lao động dưới 81%', 1)
INSERT [dbo].[doituong] ([madt], [tendoituong], [diemut]) VALUES (N'7 ', N'Người lao động ưu tú , người được hưởng bằng cấp lao động sáng tạo', 1)
INSERT [dbo].[giaodien] ([chon]) VALUES (0)
SET IDENTITY_INSERT [dbo].[huyen] ON 

INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (1, 17, 9, N'Ba Chẽ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (2, 17, 10, N'Đông Triều')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (3, 17, 11, N'Yên Hưng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (4, 17, 12, N'Hoành Bồ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (5, 17, 14, N'Cô Tô')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (6, 18, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (7, 18, 1, N'TX Bắc Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (8, 18, 2, N'Yên Thế')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (9, 18, 3, N'Lục Ngạn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (10, 18, 4, N'Sơn Động')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (11, 18, 5, N'Lục Nam')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (12, 18, 6, N'Tân Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (13, 18, 7, N'Hiệp Hoà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (14, 18, 8, N'Lạng Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (15, 18, 9, N'Việt Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (16, 18, 10, N'Yên Dũng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (17, 19, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (18, 19, 1, N'TX Bắc Ninh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (19, 19, 2, N'Yên Phong')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (20, 19, 3, N'Quế Võ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (21, 19, 4, N'Tiên Du')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (22, 19, 5, N'Từ Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (23, 19, 6, N'Thuận Thành')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (24, 19, 7, N'Gia Bình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (25, 19, 8, N'Lương Tài')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (26, 20, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (27, 20, 1, N'TX  Hà Đông')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (28, 20, 2, N'TX Sơn Tây')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (29, 20, 3, N'Ba Vì')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (30, 20, 4, N'Phúc Thọ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (31, 20, 5, N'Thạch Thất')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (32, 20, 6, N'Quốc Oai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (33, 20, 7, N'Chương Mỹ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (34, 20, 8, N'Đan Phượng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (35, 20, 9, N'Hoài Đức')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (36, 20, 10, N'Thanh Oai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (37, 20, 11, N'Mỹ Đức')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (38, 20, 12, N'ứng Hoà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (39, 20, 13, N'Thường Tín')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (40, 20, 14, N'Phú Xuyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (41, 21, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (42, 21, 1, N'TP Hải Dương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (43, 21, 2, N'Chí Linh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (44, 21, 3, N'Nam Sách')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (45, 21, 4, N'Kinh Môn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (46, 21, 5, N'Gia Lộc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (47, 21, 6, N'Tứ Kỳ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (48, 21, 7, N'Thanh Miện')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (49, 21, 8, N'Ninh Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (50, 21, 9, N'Cẩm Giàng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (51, 21, 10, N'Thanh Hà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (52, 21, 11, N'Kim Thành')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (53, 21, 12, N'Huyện')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (54, 22, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (55, 22, 1, N'TX Hưng Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (56, 22, 2, N'Kim Động')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (57, 22, 3, N'Ân Thi')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (58, 22, 4, N'Khoái Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (59, 22, 5, N' Yên Mỹ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (60, 22, 6, N'Tiên Lữ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (61, 22, 7, N'Phù Cừ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (62, 22, 8, N'Mỹ Hào')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (63, 22, 9, N'Văn Lâm')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (64, 22, 10, N'Văn Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (65, 23, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (66, 23, 1, N'TX Hoà Bình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (67, 23, 2, N'Đà Bắc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (68, 23, 3, N'Mai Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (69, 23, 4, N'Tân Lạc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (70, 23, 5, N'Kỳ Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (71, 23, 6, N'Lương Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (72, 23, 7, N'Lương Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (73, 23, 8, N'Kim Bôi')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (74, 23, 9, N'Lạc Thuỷ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (75, 23, 10, N'Yên Thuỷ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (76, 23, 11, N'Cao Phong')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (77, 24, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (78, 24, 1, N'TX Phủ Lý')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (79, 24, 2, N'Duy Tiên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (80, 24, 3, N'Kim Bảng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (81, 24, 4, N'Lý Nhân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (82, 24, 5, N'Thanh Liêm')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (83, 24, 6, N'Bình Lục')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (84, 25, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (85, 25, 1, N'TP Nam Định')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (86, 25, 2, N'Mỹ Lộc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (87, 25, 3, N'Xuân Trường')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (88, 25, 4, N'Giao Thuỷ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (89, 25, 5, N'ý Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (90, 25, 6, N'Vụ Bản')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (91, 25, 7, N'Nam Trực')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (92, 25, 8, N'Trực Ninh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (93, 25, 9, N'Nghĩa Hưng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (94, 25, 10, N'Hải Hậu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (95, 26, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (96, 26, 1, N'TP Thái Bình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (97, 26, 2, N'Quỳnh Phụ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (98, 26, 3, N'Hưng Hà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (99, 26, 4, N'Đông Hưng')
GO
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (100, 26, 5, N'Vũ Thư')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (101, 26, 6, N'Kiến Xương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (102, 26, 7, N'Tiền Hải')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (103, 26, 8, N'Thái Thuỵ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (104, 27, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (105, 27, 1, N'TX Ninh Bình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (106, 27, 2, N'TX Tam Điệp')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (107, 27, 3, N'Nho Quan')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (108, 27, 4, N'Gia Viễn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (109, 27, 5, N'Hoa Lư')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (110, 27, 6, N'Yên Mô')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (111, 27, 7, N'Kim Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (112, 27, 8, N'Yên Khánh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (113, 28, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (114, 28, 1, N'TPThanh Hoá')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (115, 28, 2, N'TX Bỉm Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (116, 28, 3, N'TX Sầm Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (117, 28, 4, N'Quan Hoá')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (118, 28, 5, N'Quan Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (119, 28, 6, N'Mường Lát')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (120, 28, 7, N'Bà Thước')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (121, 28, 8, N'Thường Xuân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (122, 28, 9, N'Như Xuân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (123, 28, 10, N'Như Thanh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (124, 28, 11, N'Lang  Chánh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (125, 28, 12, N'Ngọc Lặc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (126, 28, 13, N'Thạch Thành')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (127, 28, 14, N'Cẩm Thuỷ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (128, 28, 15, N'Thọ Xuân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (129, 28, 16, N'Vĩnh Lộc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (130, 28, 17, N'Thiệu Hoá')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (131, 28, 18, N'Triệu Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (132, 28, 19, N'Nông Cống')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (133, 28, 20, N'Đông Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (134, 28, 21, N'Hà Trung')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (135, 28, 22, N' Hoằng Hoá')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (136, 28, 23, N'Nga Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (137, 28, 24, N'Hậu Lộc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (138, 28, 25, N'Quảng Xương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (139, 28, 26, N'Tĩnh Gia')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (140, 28, 27, N'Yên Định')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (141, 29, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (142, 29, 1, N'TP  Vinh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (143, 29, 2, N'TX Cửa Lò')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (144, 29, 3, N'Quỳ Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (145, 29, 4, N'Quỳ Hợp')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (146, 29, 5, N'Nghĩa Đàn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (147, 29, 6, N'Quỳnh Lưu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (148, 29, 7, N'Kỳ Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (149, 29, 8, N'Tương Dương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (150, 29, 9, N'Con Cuông')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (151, 29, 10, N'Tân Kỳ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (152, 29, 11, N' Yên Thành')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (153, 29, 12, N'Diễn Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (154, 29, 13, N'Anh Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (155, 29, 14, N'Đô Lương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (156, 29, 15, N'Thanh Chương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (157, 29, 16, N'Nghi Lộc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (158, 29, 17, N' Nam Đàn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (159, 29, 18, N'Hưng Nguyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (160, 29, 19, N'Quế Phong')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (161, 30, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (162, 30, 1, N'TX Hà Tĩnh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (163, 30, 2, N'TX Hồng Lĩnh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (164, 30, 3, N'Hương Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (165, 30, 4, N'Đức Thọ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (166, 30, 5, N'Nghi Xuân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (167, 30, 6, N'Can Lộc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (168, 30, 7, N'Hương Khê')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (169, 30, 8, N'Thạch Hà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (170, 30, 9, N'Cẩm Xuyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (171, 30, 10, N'Kỳ Anh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (172, 30, 11, N'Vũ Quang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (173, 1, 0, N'Thành Phố HN')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (174, 1, 1, N'Ba Đình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (175, 1, 2, N'Hoàn Kiếm')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (176, 1, 3, N'Hai Bà Trưng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (177, 1, 4, N'Đống Đa')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (178, 1, 5, N'Tây Hồ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (179, 1, 6, N'Cầu Giấy')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (180, 1, 7, N'Thanh Xuân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (181, 1, 8, N' Hoàng Mai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (182, 1, 9, N'Long Biên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (183, 1, 10, N'Từ Liêm')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (184, 1, 11, N'Thanh Trì')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (185, 1, 12, N'Gia lâm')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (186, 1, 13, N'Đông Anh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (187, 1, 14, N'Sóc Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (188, 2, 0, N'SởGD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (189, 2, 1, N'Quận Một')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (190, 2, 2, N'Quận Hai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (191, 2, 3, N'Quận Ba')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (192, 2, 4, N'Quận Bốn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (193, 2, 5, N'Quận Năm')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (194, 2, 6, N'Quận Sáu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (195, 2, 7, N'Quận Bẩy')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (196, 2, 8, N'Quận Tám')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (197, 2, 9, N'Quận Chín')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (198, 2, 12, N'Quận Mười Hai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (199, 2, 14, N' Tân Bình')
GO
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (200, 2, 15, N'Tân Phú')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (201, 2, 16, N' Bình Thạnh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (202, 2, 17, N'Phú Nhuận')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (203, 2, 18, N'Quận Thủ Đức')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (204, 2, 19, N'Quận Bình Tân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (205, 2, 20, N'Bình Chánh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (206, 2, 21, N'Củ Chi')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (207, 2, 22, N'Hóc Môn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (208, 2, 24, N'Cần Giờ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (209, 3, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (210, 3, 1, N'Hồng Bàng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (211, 3, 2, N'Lê Chân')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (212, 3, 3, N'Ngô Quyền')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (213, 3, 4, N'Kiến An')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (214, 3, 5, N'Hải An')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (215, 3, 6, N'TX Đồ Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (216, 3, 7, N'An Lão')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (217, 3, 8, N'Kiến Thuỵ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (218, 3, 9, N'Thuỷ Nguyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (219, 3, 10, N'An Dương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (220, 3, 11, N'Tiên Lãng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (221, 3, 12, N'Vĩnh Bảo')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (222, 3, 13, N'Cát Hải')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (223, 3, 14, N'Bạch Long Vĩ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (224, 4, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (225, 4, 1, N'Hải Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (226, 4, 2, N'Thanh Khê')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (227, 4, 3, N'Sơn Trà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (228, 4, 4, N'Ngũ Hành Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (229, 4, 5, N'kk')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (230, 4, 6, N'Cẩm Lệ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (231, 4, 7, N'Hoà Vang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (232, 5, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (233, 5, 1, N'TX Hà Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (234, 5, 2, N'Đồng Văn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (235, 5, 3, N'Mèo Vạc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (236, 5, 4, N'Yên Minh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (237, 5, 5, N'Quản Bạ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (238, 5, 6, N'Vị Xuyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (239, 5, 7, N'Bắc Mê')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (240, 5, 8, N'Hoàng Su Phì')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (241, 5, 9, N'Xín Mần')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (242, 5, 10, N'Bắc Quang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (243, 5, 11, N'Quang Bình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (244, 6, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (245, 6, 1, N'TX  Cao Bằng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (246, 6, 2, N'Bảo Lạc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (247, 6, 3, N'Thông Nông')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (248, 6, 4, N'Hà Quảng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (249, 6, 5, N'Trà Lĩnh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (250, 6, 6, N'Trùng Khánh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (251, 6, 7, N'Nguyên Bình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (252, 6, 8, N'Hoà An')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (253, 6, 9, N'Quảng Uyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (254, 6, 10, N'Thạch An')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (255, 6, 11, N'Tiên Lãng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (256, 6, 12, N' Bảo Lâm')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (257, 6, 13, N'Phục Hoà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (258, 7, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (259, 7, 1, N'TX Lai Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (260, 7, 2, N'Tam Đường')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (261, 7, 3, N'Phong Thổ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (262, 7, 4, N'Sinh Hồ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (263, 7, 5, N'Mường Tè')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (264, 7, 6, N'Than Uyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (265, 8, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (266, 8, 1, N'TP Lào Cai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (267, 8, 2, N'Xi Ma Cai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (268, 8, 3, N'Bát Xát')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (269, 8, 4, N'Bảo Thắng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (270, 8, 5, N'Sa Pa')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (271, 8, 6, N'Văn Bàn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (272, 8, 7, N'Bảo Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (273, 8, 8, N'Bắc Hà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (274, 8, 9, N'Mường Khương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (275, 9, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (276, 9, 1, N'TX Tuyên Quang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (277, 9, 2, N'Na Hang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (278, 9, 3, N'Chiêm Hoá')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (279, 9, 4, N'Hàm Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (280, 9, 5, N'Yên Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (281, 9, 6, N'Sơn Dương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (282, 10, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (283, 10, 1, N'TP Lạng Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (284, 10, 2, N'Tràng Định')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (285, 10, 3, N'Bình Gia')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (286, 10, 4, N'Văn Lãng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (287, 10, 5, N'Bắc Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (288, 10, 6, N'Văn Quan')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (289, 10, 7, N'Cao Lộc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (290, 10, 8, N'Lộc Bình')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (291, 10, 9, N'Chi Lăng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (292, 10, 10, N'Đình Lập')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (293, 10, 11, N'Hữu Lũng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (294, 12, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (295, 12, 1, N'TP  Thái Nguyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (296, 12, 2, N'TX Sông Công')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (297, 12, 3, N'Định Hoà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (298, 12, 4, N'Phú Lương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (299, 12, 5, N'Võ Nhai')
GO
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (300, 12, 6, N'Đại Từ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (301, 12, 7, N'Đồng Hỷ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (302, 12, 8, N'Lạng Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (303, 12, 9, N'Phổ Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (304, 13, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (305, 13, 1, N'TP Yên Bái')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (306, 13, 2, N'TX Nghĩa Lộ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (307, 13, 3, N'Văn Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (308, 13, 4, N'Yên Bĩnh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (309, 13, 5, N'Mù Cang Chải')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (310, 13, 6, N'Văn Chấn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (311, 13, 7, N'Trấn Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (312, 13, 8, N'Trạm Tờu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (313, 13, 9, N'Lục Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (314, 14, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (315, 14, 1, N'TX Sơn La')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (316, 14, 2, N'Quỳnh Nhai')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (317, 14, 3, N'Mường La')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (318, 14, 4, N'Thuận Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (319, 14, 5, N'Bắc Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (320, 14, 6, N'Phù Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (321, 14, 7, N'Mai Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (322, 14, 8, N'Yên Châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (323, 14, 9, N'Sông Mã')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (324, 14, 10, N'Mộc châu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (325, 14, 11, N'Sốp Cộp')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (326, 15, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (327, 15, 1, N'TP  Việt Trì')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (328, 15, 2, N'TX Phú Thọ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (329, 15, 3, N'Đoan Hùng')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (330, 15, 4, N'Thanh Ba')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (331, 15, 5, N'Hạ Hoà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (332, 15, 6, N'Cẩm Khê')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (333, 15, 7, N'Yên Lập')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (334, 15, 8, N'Lạng Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (335, 15, 9, N'Phù Ninh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (336, 15, 11, N'cat trang12')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (337, 15, 12, N'Thanh Thuỷ')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (338, 16, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (339, 16, 1, N'TX Vình Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (340, 16, 2, N'Tam Dương')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (341, 16, 3, N'Lập Thạch')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (342, 16, 4, N'Vĩnh Tường')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (343, 16, 5, N'Yên Lạc')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (344, 16, 6, N'Bình Xuyên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (345, 16, 7, N'Mê Linh')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (346, 16, 8, N'Lạng Giang')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (347, 16, 9, N'Tam Đảo')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (348, 17, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (349, 17, 1, N'TP Hạ Long')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (350, 17, 2, N'TX Cẩm Phả')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (351, 17, 3, N'TX Uông Bí')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (352, 17, 4, N'TX  Móng Cái')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (353, 17, 5, N'Bình Liêu')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (354, 17, 6, N'Đầm Hà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (355, 17, 7, N'Hải Hà')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (356, 17, 8, N'Tiên Yên')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (357, 11, 0, N'Sở GD&ĐT')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (358, 11, 1, N'Thị xã Bắc Kạn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (359, 11, 2, N'Huyện Chợ Đồn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (360, 11, 3, N'Huyện Bạch Thông')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (361, 11, 4, N'Huyện Na Rì')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (362, 11, 5, N'Huyện Ngân Sơn')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (363, 11, 6, N'Huyện Ba Bể')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (364, 11, 7, N'Huyện Chợ Mới')
INSERT [dbo].[huyen] ([id], [matinh], [mahuyen], [tenhuyen]) VALUES (365, 11, 8, N'Huyện Pác Nặm')
SET IDENTITY_INSERT [dbo].[huyen] OFF
INSERT [dbo].[khuvuc] ([makv], [tenkv], [diemcong]) VALUES (N'KV1', N'KHU VỰC 1', 1.5)
INSERT [dbo].[khuvuc] ([makv], [tenkv], [diemcong]) VALUES (N'KV2 ', N'KHU VỰC 2', 0.5)
INSERT [dbo].[khuvuc] ([makv], [tenkv], [diemcong]) VALUES (N'KV2-NT', N'KHU VỰC 2 NT', 1)
INSERT [dbo].[khuvuc] ([makv], [tenkv], [diemcong]) VALUES (N'KV3', N'KHU VỰC 3', 0)
INSERT [dbo].[mamon] ([mamon], [tenmon]) VALUES (1, N'Toán')
INSERT [dbo].[mamon] ([mamon], [tenmon]) VALUES (2, N'Lý')
INSERT [dbo].[mamon] ([mamon], [tenmon]) VALUES (3, N'Hóa')
INSERT [dbo].[maquyen] ([ma], [ten]) VALUES (N'admin', N'Người Quản Trị Cao Nhất ')
INSERT [dbo].[maquyen] ([ma], [ten]) VALUES (N'mod', N'Quản Lý Chung')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2012, N'Năm 2012')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2013, N'Năm 2013')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2014, N'Năm 2014')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2015, N'Năm 2015')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2016, N'Năm 2016')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2017, N'Năm 2017')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2018, N'Năm 2018')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2019, N'Năm 2019')
INSERT [dbo].[namthi] ([ma], [namthi]) VALUES (2020, N'Năm 2020')
UPDATE [dbo].[namthi] SET [namthi] = N'Năm 2023'
INSERT [dbo].[nganh] ([manganh], [tennganh], [chitieu]) VALUES (N'D340301', N'Kế Toán', NULL)
INSERT [dbo].[nganh] ([manganh], [tennganh], [chitieu]) VALUES (N'D480101', N'Khoa Học Máy Tính', NULL)
INSERT [dbo].[nganh] ([manganh], [tennganh], [chitieu]) VALUES (N'D480201', N'Công Nghệ Thông Tin', NULL)
INSERT [dbo].[nganh] ([manganh], [tennganh], [chitieu]) VALUES (N'D510205', N'Công Nghệ Chế Tạo Máy', NULL)
INSERT [dbo].[nganh] ([manganh], [tennganh], [chitieu]) VALUES (N'D510206', N'Công Nghệ Hàn', NULL)
INSERT [dbo].[nganh] ([manganh], [tennganh], [chitieu]) VALUES (N'D510301', N'Công Nghệ Kỹ Thuật Điện Tử', NULL)
INSERT [dbo].[nganh] ([manganh], [tennganh], [chitieu]) VALUES (N'D510303', N'Công Nghệ Tự Động', NULL)
SET IDENTITY_INSERT [dbo].[phach] ON 

INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0001', N'1', 2012, 491)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0002', N'1', 2012, 492)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0003', N'1', 2012, 493)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0004', N'1', 2012, 494)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0005', N'1', 2012, 495)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0006', N'1', 2012, 496)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0007', N'1', 2012, 497)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0008', N'1', 2012, 498)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0009', N'1', 2012, 499)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0010', N'1', 2012, 500)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0011', N'1', 2012, 501)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0012', N'1', 2012, 502)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0013', N'1', 2012, 503)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0014', N'1', 2012, 504)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0015', N'1', 2012, 505)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0016', N'1', 2012, 506)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0017', N'1', 2012, 507)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0018', N'1', 2012, 508)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0019', N'1', 2012, 509)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0020', N'1', 2012, 510)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0001', N'1', 2012, 511)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0002', N'1', 2012, 512)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0003', N'1', 2012, 513)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0004', N'1', 2012, 514)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0005', N'1', 2012, 515)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0006', N'1', 2012, 516)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0007', N'1', 2012, 517)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0008', N'1', 2012, 518)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0009', N'1', 2012, 519)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0010', N'1', 2012, 520)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0011', N'1', 2012, 521)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0012', N'1', 2012, 522)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0013', N'1', 2012, 523)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0014', N'1', 2012, 524)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0015', N'1', 2012, 525)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0016', N'1', 2012, 526)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0017', N'1', 2012, 527)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0018', N'1', 2012, 528)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0019', N'1', 2012, 529)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0020', N'1', 2012, 530)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0001', N'1', 2012, 531)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0002', N'1', 2012, 532)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0003', N'1', 2012, 533)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0004', N'1', 2012, 534)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0005', N'1', 2012, 535)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0006', N'1', 2012, 536)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0007', N'1', 2012, 537)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0008', N'1', 2012, 538)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0009', N'1', 2012, 539)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0010', N'1', 2012, 540)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0011', N'1', 2012, 541)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0012', N'1', 2012, 542)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0013', N'1', 2012, 543)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0014', N'1', 2012, 544)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0015', N'1', 2012, 545)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0016', N'1', 2012, 546)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0017', N'1', 2012, 547)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0018', N'1', 2012, 548)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0019', N'1', 2012, 549)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0020', N'1', 2012, 550)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0021', N'2', 2012, 551)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0022', N'2', 2012, 552)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0023', N'2', 2012, 553)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0024', N'2', 2012, 554)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0025', N'2', 2012, 555)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0026', N'2', 2012, 556)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0027', N'2', 2012, 557)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0028', N'2', 2012, 558)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0029', N'2', 2012, 559)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0030', N'2', 2012, 560)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0031', N'2', 2012, 561)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0032', N'2', 2012, 562)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0033', N'2', 2012, 563)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0034', N'2', 2012, 564)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0035', N'2', 2012, 565)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0036', N'2', 2012, 566)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0037', N'2', 2012, 567)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0038', N'2', 2012, 568)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0039', N'2', 2012, 569)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0040', N'2', 2012, 570)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0021', N'2', 2012, 571)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0022', N'2', 2012, 572)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0023', N'2', 2012, 573)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0024', N'2', 2012, 574)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0025', N'2', 2012, 575)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0026', N'2', 2012, 576)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0027', N'2', 2012, 577)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0028', N'2', 2012, 578)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0029', N'2', 2012, 579)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0030', N'2', 2012, 580)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0031', N'2', 2012, 581)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0032', N'2', 2012, 582)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0033', N'2', 2012, 583)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0034', N'2', 2012, 584)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0035', N'2', 2012, 585)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0036', N'2', 2012, 586)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0037', N'2', 2012, 587)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0038', N'2', 2012, 588)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0039', N'2', 2012, 589)
UPDATE [dbo].[phach]
SET [namthi] = 2023
GO
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0040', N'2', 2012, 590)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0021', N'2', 2012, 591)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0022', N'2', 2012, 592)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0023', N'2', 2012, 593)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0024', N'2', 2012, 594)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0025', N'2', 2012, 595)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0026', N'2', 2012, 596)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0027', N'2', 2012, 597)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0028', N'2', 2012, 598)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0029', N'2', 2012, 599)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0030', N'2', 2012, 600)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0031', N'2', 2012, 601)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0032', N'2', 2012, 602)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0033', N'2', 2012, 603)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0034', N'2', 2012, 604)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0035', N'2', 2012, 605)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0036', N'2', 2012, 606)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0037', N'2', 2012, 607)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0038', N'2', 2012, 608)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0039', N'2', 2012, 609)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0040', N'2', 2012, 610)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0041', N'3', 2012, 611)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0042', N'3', 2012, 612)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0043', N'3', 2012, 613)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0044', N'3', 2012, 614)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0045', N'3', 2012, 615)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0046', N'3', 2012, 616)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0047', N'3', 2012, 617)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0048', N'3', 2012, 618)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0049', N'3', 2012, 619)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0050', N'3', 2012, 620)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0051', N'3', 2012, 621)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0052', N'3', 2012, 622)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0053', N'3', 2012, 623)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0054', N'3', 2012, 624)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0055', N'3', 2012, 625)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0056', N'3', 2012, 626)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0057', N'3', 2012, 627)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0058', N'3', 2012, 628)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0059', N'3', 2012, 629)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0060', N'3', 2012, 630)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0041', N'3', 2012, 631)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0042', N'3', 2012, 632)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0043', N'3', 2012, 633)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0044', N'3', 2012, 634)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0045', N'3', 2012, 635)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0046', N'3', 2012, 636)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0047', N'3', 2012, 637)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0048', N'3', 2012, 638)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0049', N'3', 2012, 639)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0050', N'3', 2012, 640)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0051', N'3', 2012, 641)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0052', N'3', 2012, 642)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0053', N'3', 2012, 643)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0054', N'3', 2012, 644)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0055', N'3', 2012, 645)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0056', N'3', 2012, 646)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0057', N'3', 2012, 647)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0058', N'3', 2012, 648)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0059', N'3', 2012, 649)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0060', N'3', 2012, 650)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0041', N'3', 2012, 651)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0042', N'3', 2012, 652)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0043', N'3', 2012, 653)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0044', N'3', 2012, 654)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0045', N'3', 2012, 655)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0046', N'3', 2012, 656)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0047', N'3', 2012, 657)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0048', N'3', 2012, 658)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0049', N'3', 2012, 659)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0050', N'3', 2012, 660)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0051', N'3', 2012, 661)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0052', N'3', 2012, 662)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0053', N'3', 2012, 663)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0054', N'3', 2012, 664)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0055', N'3', 2012, 665)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0056', N'3', 2012, 666)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0057', N'3', 2012, 667)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0058', N'3', 2012, 668)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0059', N'3', 2012, 669)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0060', N'3', 2012, 670)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0061', N'4', 2012, 671)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0062', N'4', 2012, 672)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0063', N'4', 2012, 673)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0064', N'4', 2012, 674)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0065', N'4', 2012, 675)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0066', N'4', 2012, 676)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0067', N'4', 2012, 677)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0068', N'4', 2012, 678)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0069', N'4', 2012, 679)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0070', N'4', 2012, 680)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0071', N'4', 2012, 681)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0072', N'4', 2012, 682)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0073', N'4', 2012, 683)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0074', N'4', 2012, 684)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0075', N'4', 2012, 685)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0076', N'4', 2012, 686)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0077', N'4', 2012, 687)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0078', N'4', 2012, 688)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0061', N'4', 2012, 689)
UPDATE [dbo].[phach]
SET [namthi] = 2023
GO
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0062', N'4', 2012, 690)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0063', N'4', 2012, 691)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0064', N'4', 2012, 692)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0065', N'4', 2012, 693)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0066', N'4', 2012, 694)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0067', N'4', 2012, 695)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0068', N'4', 2012, 696)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0069', N'4', 2012, 697)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0070', N'4', 2012, 698)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0071', N'4', 2012, 699)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0072', N'4', 2012, 700)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0073', N'4', 2012, 701)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0074', N'4', 2012, 702)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0075', N'4', 2012, 703)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0076', N'4', 2012, 704)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0077', N'4', 2012, 705)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0078', N'4', 2012, 706)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0061', N'4', 2012, 725)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0062', N'4', 2012, 726)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0063', N'4', 2012, 727)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0064', N'4', 2012, 728)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0065', N'4', 2012, 729)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0066', N'4', 2012, 730)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0067', N'4', 2012, 731)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0068', N'4', 2012, 732)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0069', N'4', 2012, 733)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0070', N'4', 2012, 734)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0071', N'4', 2012, 735)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0072', N'4', 2012, 736)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0073', N'4', 2012, 737)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0074', N'4', 2012, 738)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0075', N'4', 2012, 739)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0076', N'4', 2012, 740)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0077', N'4', 2012, 741)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0078', N'4', 2012, 742)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0001', N'1', 2013, 763)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0002', N'1', 2013, 764)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0003', N'1', 2013, 765)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0004', N'1', 2013, 766)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0005', N'1', 2013, 767)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0006', N'1', 2013, 768)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0007', N'1', 2013, 769)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0008', N'1', 2013, 770)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0009', N'1', 2013, 771)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0010', N'1', 2013, 772)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0011', N'1', 2013, 773)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0012', N'1', 2013, 774)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0013', N'1', 2013, 775)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0014', N'1', 2013, 776)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0015', N'1', 2013, 777)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0016', N'1', 2013, 778)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0017', N'1', 2013, 779)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0018', N'1', 2013, 780)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0019', N'1', 2013, 781)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (2, N'SDKA0020', N'1', 2013, 782)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0001', N'1', 2013, 783)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0002', N'1', 2013, 784)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0003', N'1', 2013, 785)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0004', N'1', 2013, 786)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0005', N'1', 2013, 787)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0006', N'1', 2013, 788)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0007', N'1', 2013, 789)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0008', N'1', 2013, 790)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0009', N'1', 2013, 791)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0010', N'1', 2013, 792)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0011', N'1', 2013, 793)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0012', N'1', 2013, 794)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0013', N'1', 2013, 795)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0014', N'1', 2013, 796)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0015', N'1', 2013, 797)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0016', N'1', 2013, 798)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0017', N'1', 2013, 799)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0018', N'1', 2013, 800)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0019', N'1', 2013, 801)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (3, N'SDKA0020', N'1', 2013, 802)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0021', N'2', 2013, 803)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0022', N'2', 2013, 804)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0023', N'2', 2013, 805)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0024', N'2', 2013, 806)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0025', N'2', 2013, 807)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0026', N'2', 2013, 808)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0027', N'2', 2013, 809)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0028', N'2', 2013, 810)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0029', N'2', 2013, 811)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0030', N'2', 2013, 812)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0031', N'2', 2013, 813)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0032', N'2', 2013, 814)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0033', N'2', 2013, 815)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0034', N'2', 2013, 816)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0035', N'2', 2013, 817)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0036', N'2', 2013, 818)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0037', N'2', 2013, 819)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0038', N'2', 2013, 820)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0039', N'2', 2013, 821)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0040', N'2', 2013, 822)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0001', N'1', 2013, 823)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0002', N'1', 2013, 824)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0003', N'1', 2013, 825)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0004', N'1', 2013, 826)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0005', N'1', 2013, 827)
UPDATE [dbo].[phach]
SET [namthi] = 2023
GO
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0006', N'1', 2013, 828)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0007', N'1', 2013, 829)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0008', N'1', 2013, 830)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0009', N'1', 2013, 831)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0010', N'1', 2013, 832)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0011', N'1', 2013, 833)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0012', N'1', 2013, 834)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0013', N'1', 2013, 835)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0014', N'1', 2013, 836)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0015', N'1', 2013, 837)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0016', N'1', 2013, 838)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0017', N'1', 2013, 839)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0018', N'1', 2013, 840)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0019', N'1', 2013, 841)
INSERT [dbo].[phach] ([mon], [sobd], [phongthi], [namthi], [pid]) VALUES (1, N'SDKA0020', N'1', 2013, 842)
UPDATE [dbo].[phach]
SET [namthi] = 2023
SET IDENTITY_INSERT [dbo].[phach] OFF
SET IDENTITY_INSERT [dbo].[phongthi] ON 

INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0001', 1, 2012, 0, 1, 1037)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0001', 1, 2012, 0, 2, 1038)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0001', 1, 2012, 0, 3, 1039)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0002', 1, 2012, 0, 1, 1040)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0002', 1, 2012, 0, 2, 1041)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0002', 1, 2012, 0, 3, 1042)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0003', 1, 2012, 0, 1, 1043)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0003', 1, 2012, 0, 2, 1044)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0003', 1, 2012, 0, 3, 1045)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0004', 1, 2012, 0, 1, 1046)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0004', 1, 2012, 0, 2, 1047)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0004', 1, 2012, 0, 3, 1048)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0005', 1, 2012, 0, 1, 1049)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0005', 1, 2012, 0, 2, 1050)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0005', 1, 2012, 0, 3, 1051)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0006', 1, 2012, 0, 1, 1052)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0006', 1, 2012, 0, 2, 1053)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0006', 1, 2012, 0, 3, 1054)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0007', 1, 2012, 0, 1, 1055)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0007', 1, 2012, 0, 2, 1056)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0007', 1, 2012, 0, 3, 1057)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0008', 1, 2012, 0, 1, 1058)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0008', 1, 2012, 0, 2, 1059)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0008', 1, 2012, 0, 3, 1060)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0009', 1, 2012, 0, 1, 1061)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0009', 1, 2012, 0, 2, 1062)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0009', 1, 2012, 0, 3, 1063)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0010', 1, 2012, 0, 1, 1064)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0010', 1, 2012, 0, 2, 1065)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0010', 1, 2012, 0, 3, 1066)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0011', 1, 2012, 0, 1, 1067)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0011', 1, 2012, 0, 2, 1068)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0011', 1, 2012, 0, 3, 1069)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0012', 1, 2012, 0, 1, 1070)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0012', 1, 2012, 0, 2, 1071)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0012', 1, 2012, 0, 3, 1072)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0013', 1, 2012, 0, 1, 1073)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0013', 1, 2012, 0, 2, 1074)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0013', 1, 2012, 0, 3, 1075)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0014', 1, 2012, 0, 1, 1076)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0014', 1, 2012, 0, 2, 1077)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0014', 1, 2012, 0, 3, 1078)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0015', 1, 2012, 0, 1, 1079)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0015', 1, 2012, 0, 2, 1080)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0015', 1, 2012, 0, 3, 1081)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0016', 1, 2012, 0, 1, 1082)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0016', 1, 2012, 0, 2, 1083)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0016', 1, 2012, 0, 3, 1084)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0017', 1, 2012, 0, 1, 1085)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0017', 1, 2012, 0, 2, 1086)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0017', 1, 2012, 0, 3, 1087)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0018', 1, 2012, 0, 1, 1088)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0018', 1, 2012, 0, 2, 1089)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0018', 1, 2012, 0, 3, 1090)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0019', 1, 2012, 0, 1, 1091)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0019', 1, 2012, 0, 2, 1092)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0019', 1, 2012, 0, 3, 1093)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0020', 1, 2012, 0, 1, 1094)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0020', 1, 2012, 0, 2, 1095)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0020', 1, 2012, 0, 3, 1096)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0021', 2, 2012, 0, 1, 1097)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0021', 2, 2012, 0, 2, 1098)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0021', 2, 2012, 0, 3, 1099)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0022', 2, 2012, 0, 1, 1100)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0022', 2, 2012, 0, 2, 1101)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0022', 2, 2012, 0, 3, 1102)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0023', 2, 2012, 0, 1, 1103)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0023', 2, 2012, 0, 2, 1104)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0023', 2, 2012, 0, 3, 1105)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0024', 2, 2012, 0, 1, 1106)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0024', 2, 2012, 0, 2, 1107)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0024', 2, 2012, 0, 3, 1108)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0025', 2, 2012, 0, 1, 1109)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0025', 2, 2012, 0, 2, 1110)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0025', 2, 2012, 0, 3, 1111)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0026', 2, 2012, 0, 1, 1112)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0026', 2, 2012, 0, 2, 1113)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0026', 2, 2012, 0, 3, 1114)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0027', 2, 2012, 0, 1, 1115)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0027', 2, 2012, 0, 2, 1116)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0027', 2, 2012, 0, 3, 1117)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0028', 2, 2012, 0, 1, 1118)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0028', 2, 2012, 0, 2, 1119)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0028', 2, 2012, 0, 3, 1120)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0029', 2, 2012, 0, 1, 1121)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0029', 2, 2012, 0, 2, 1122)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0029', 2, 2012, 0, 3, 1123)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0030', 2, 2012, 0, 1, 1124)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0030', 2, 2012, 0, 2, 1125)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0030', 2, 2012, 0, 3, 1126)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0031', 2, 2012, 0, 1, 1127)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0031', 2, 2012, 0, 2, 1128)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0031', 2, 2012, 0, 3, 1129)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0032', 2, 2012, 0, 1, 1130)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0032', 2, 2012, 0, 2, 1131)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0032', 2, 2012, 0, 3, 1132)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0033', 2, 2012, 0, 1, 1133)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0033', 2, 2012, 0, 2, 1134)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0033', 2, 2012, 0, 3, 1135)
UPDATE [dbo].[phongthi]
SET [namthi] = 2023
GO
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0034', 2, 2012, 0, 1, 1136)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0034', 2, 2012, 0, 2, 1137)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0034', 2, 2012, 0, 3, 1138)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0035', 2, 2012, 0, 1, 1139)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0035', 2, 2012, 0, 2, 1140)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0035', 2, 2012, 0, 3, 1141)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0036', 2, 2012, 0, 1, 1142)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0036', 2, 2012, 0, 2, 1143)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0036', 2, 2012, 0, 3, 1144)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0037', 2, 2012, 0, 1, 1145)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0037', 2, 2012, 0, 2, 1146)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0037', 2, 2012, 0, 3, 1147)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0038', 2, 2012, 0, 1, 1148)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0038', 2, 2012, 0, 2, 1149)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0038', 2, 2012, 0, 3, 1150)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0039', 2, 2012, 0, 1, 1151)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0039', 2, 2012, 0, 2, 1152)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0039', 2, 2012, 0, 3, 1153)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0040', 2, 2012, 0, 1, 1154)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0040', 2, 2012, 0, 2, 1155)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0040', 2, 2012, 0, 3, 1156)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0041', 3, 2012, 0, 1, 1157)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0041', 3, 2012, 0, 2, 1158)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0041', 3, 2012, 0, 3, 1159)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0042', 3, 2012, 0, 1, 1160)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0042', 3, 2012, 0, 2, 1161)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0042', 3, 2012, 0, 3, 1162)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0043', 3, 2012, 0, 1, 1163)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0043', 3, 2012, 0, 2, 1164)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0043', 3, 2012, 0, 3, 1165)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0044', 3, 2012, 0, 1, 1166)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0044', 3, 2012, 0, 2, 1167)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0044', 3, 2012, 0, 3, 1168)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0045', 3, 2012, 0, 1, 1169)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0045', 3, 2012, 0, 2, 1170)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0045', 3, 2012, 0, 3, 1171)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0046', 3, 2012, 0, 1, 1172)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0046', 3, 2012, 0, 2, 1173)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0046', 3, 2012, 0, 3, 1174)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0047', 3, 2012, 0, 1, 1175)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0047', 3, 2012, 0, 2, 1176)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0047', 3, 2012, 0, 3, 1177)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0048', 3, 2012, 0, 1, 1178)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0048', 3, 2012, 0, 2, 1179)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0048', 3, 2012, 0, 3, 1180)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0049', 3, 2012, 0, 1, 1181)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0049', 3, 2012, 0, 2, 1182)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0049', 3, 2012, 0, 3, 1183)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0050', 3, 2012, 0, 1, 1184)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0050', 3, 2012, 0, 2, 1185)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0050', 3, 2012, 0, 3, 1186)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0051', 3, 2012, 0, 1, 1187)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0051', 3, 2012, 0, 2, 1188)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0051', 3, 2012, 0, 3, 1189)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0052', 3, 2012, 0, 1, 1190)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0052', 3, 2012, 0, 2, 1191)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0052', 3, 2012, 0, 3, 1192)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0053', 3, 2012, 0, 1, 1193)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0053', 3, 2012, 0, 2, 1194)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0053', 3, 2012, 0, 3, 1195)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0054', 3, 2012, 0, 1, 1196)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0054', 3, 2012, 0, 2, 1197)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0054', 3, 2012, 0, 3, 1198)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0055', 3, 2012, 0, 1, 1199)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0055', 3, 2012, 0, 2, 1200)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0055', 3, 2012, 0, 3, 1201)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0056', 3, 2012, 0, 1, 1202)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0056', 3, 2012, 0, 2, 1203)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0056', 3, 2012, 0, 3, 1204)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0057', 3, 2012, 0, 1, 1205)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0057', 3, 2012, 0, 2, 1206)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0057', 3, 2012, 0, 3, 1207)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0058', 3, 2012, 0, 1, 1208)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0058', 3, 2012, 0, 2, 1209)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0058', 3, 2012, 0, 3, 1210)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0059', 3, 2012, 0, 1, 1211)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0059', 3, 2012, 0, 2, 1212)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0059', 3, 2012, 0, 3, 1213)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0060', 3, 2012, 0, 1, 1214)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0060', 3, 2012, 0, 2, 1215)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0060', 3, 2012, 0, 3, 1216)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0061', 4, 2012, 0, 1, 1217)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0061', 4, 2012, 0, 2, 1218)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0061', 4, 2012, 0, 3, 1219)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0062', 4, 2012, 0, 1, 1220)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0062', 4, 2012, 0, 2, 1221)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0062', 4, 2012, 0, 3, 1222)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0063', 4, 2012, 0, 1, 1223)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0063', 4, 2012, 0, 2, 1224)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0063', 4, 2012, 0, 3, 1225)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0064', 4, 2012, 0, 1, 1226)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0064', 4, 2012, 0, 2, 1227)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0064', 4, 2012, 0, 3, 1228)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0065', 4, 2012, 0, 1, 1229)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0065', 4, 2012, 0, 2, 1230)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0065', 4, 2012, 0, 3, 1231)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0066', 4, 2012, 0, 1, 1232)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0066', 4, 2012, 0, 2, 1233)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0066', 4, 2012, 0, 3, 1234)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0067', 4, 2012, 0, 1, 1235)
UPDATE [dbo].[phongthi]
SET [namthi] = 2023
GO
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0067', 4, 2012, 0, 2, 1236)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0067', 4, 2012, 0, 3, 1237)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0068', 4, 2012, 0, 1, 1238)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0068', 4, 2012, 0, 2, 1239)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0068', 4, 2012, 0, 3, 1240)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0069', 4, 2012, 0, 1, 1241)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0069', 4, 2012, 0, 2, 1242)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0069', 4, 2012, 0, 3, 1243)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0070', 4, 2012, 0, 1, 1244)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0070', 4, 2012, 0, 2, 1245)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0070', 4, 2012, 0, 3, 1246)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0071', 4, 2012, 0, 1, 1247)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0071', 4, 2012, 0, 2, 1248)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0071', 4, 2012, 0, 3, 1249)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0072', 4, 2012, 0, 1, 1250)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0072', 4, 2012, 0, 2, 1251)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0072', 4, 2012, 0, 3, 1252)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0073', 4, 2012, 0, 1, 1253)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0073', 4, 2012, 0, 2, 1254)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0073', 4, 2012, 0, 3, 1255)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0074', 4, 2012, 0, 1, 1256)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0074', 4, 2012, 0, 2, 1257)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0074', 4, 2012, 0, 3, 1258)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0075', 4, 2012, 0, 1, 1259)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0075', 4, 2012, 0, 2, 1260)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0075', 4, 2012, 0, 3, 1261)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0076', 4, 2012, 0, 1, 1262)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0076', 4, 2012, 0, 2, 1263)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0076', 4, 2012, 0, 3, 1264)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0077', 4, 2012, 0, 1, 1265)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0077', 4, 2012, 0, 2, 1266)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0077', 4, 2012, 0, 3, 1267)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0078', 4, 2012, 0, 1, 1268)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0078', 4, 2012, 0, 2, 1269)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0078', 4, 2012, 0, 3, 1270)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0001', 1, 2013, 0, 1, 2150)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0001', 1, 2013, 0, 2, 2151)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0001', 1, 2013, 0, 3, 2152)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0002', 1, 2013, 0, 1, 2153)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0002', 1, 2013, 0, 2, 2154)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0002', 1, 2013, 0, 3, 2155)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0003', 1, 2013, 0, 1, 2156)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0003', 1, 2013, 0, 2, 2157)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0003', 1, 2013, 0, 3, 2158)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0004', 1, 2013, 0, 1, 2159)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0004', 1, 2013, 0, 2, 2160)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0004', 1, 2013, 0, 3, 2161)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0005', 1, 2013, 0, 1, 2162)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0005', 1, 2013, 0, 2, 2163)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0005', 1, 2013, 0, 3, 2164)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0006', 1, 2013, 0, 1, 2165)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0006', 1, 2013, 0, 2, 2166)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0006', 1, 2013, 0, 3, 2167)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0007', 1, 2013, 0, 1, 2168)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0007', 1, 2013, 0, 2, 2169)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0007', 1, 2013, 0, 3, 2170)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0008', 1, 2013, 0, 1, 2171)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0008', 1, 2013, 0, 2, 2172)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0008', 1, 2013, 0, 3, 2173)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0009', 1, 2013, 0, 1, 2174)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0009', 1, 2013, 0, 2, 2175)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0009', 1, 2013, 0, 3, 2176)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0010', 1, 2013, 0, 1, 2177)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0010', 1, 2013, 0, 2, 2178)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0010', 1, 2013, 0, 3, 2179)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0011', 1, 2013, 0, 1, 2180)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0011', 1, 2013, 0, 2, 2181)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0011', 1, 2013, 0, 3, 2182)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0012', 1, 2013, 0, 1, 2183)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0012', 1, 2013, 0, 2, 2184)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0012', 1, 2013, 0, 3, 2185)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0013', 1, 2013, 0, 1, 2186)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0013', 1, 2013, 0, 2, 2187)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0013', 1, 2013, 0, 3, 2188)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0014', 1, 2013, 0, 1, 2189)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0014', 1, 2013, 0, 2, 2190)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0014', 1, 2013, 0, 3, 2191)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0015', 1, 2013, 0, 1, 2192)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0015', 1, 2013, 0, 2, 2193)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0015', 1, 2013, 0, 3, 2194)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0016', 1, 2013, 0, 1, 2195)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0016', 1, 2013, 0, 2, 2196)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0016', 1, 2013, 0, 3, 2197)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0017', 1, 2013, 0, 1, 2198)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0017', 1, 2013, 0, 2, 2199)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0017', 1, 2013, 0, 3, 2200)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0018', 1, 2013, 0, 1, 2201)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0018', 1, 2013, 0, 2, 2202)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0018', 1, 2013, 0, 3, 2203)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0019', 1, 2013, 0, 1, 2204)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0019', 1, 2013, 0, 2, 2205)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0019', 1, 2013, 0, 3, 2206)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0020', 1, 2013, 0, 1, 2207)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0020', 1, 2013, 0, 2, 2208)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0020', 1, 2013, 0, 3, 2209)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0021', 2, 2013, 0, 1, 2210)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0021', 2, 2013, 0, 2, 2211)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0021', 2, 2013, 0, 3, 2212)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0022', 2, 2013, 0, 1, 2213)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0022', 2, 2013, 0, 2, 2214)
UPDATE [dbo].[phongthi]
SET [namthi] = 2023
GO
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0022', 2, 2013, 0, 3, 2215)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0023', 2, 2013, 0, 1, 2216)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0023', 2, 2013, 0, 2, 2217)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0023', 2, 2013, 0, 3, 2218)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0024', 2, 2013, 0, 1, 2219)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0024', 2, 2013, 0, 2, 2220)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0024', 2, 2013, 0, 3, 2221)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0025', 2, 2013, 0, 1, 2222)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0025', 2, 2013, 0, 2, 2223)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0025', 2, 2013, 0, 3, 2224)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0026', 2, 2013, 0, 1, 2225)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0026', 2, 2013, 0, 2, 2226)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0026', 2, 2013, 0, 3, 2227)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0027', 2, 2013, 0, 1, 2228)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0027', 2, 2013, 0, 2, 2229)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0027', 2, 2013, 0, 3, 2230)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0028', 2, 2013, 0, 1, 2231)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0028', 2, 2013, 0, 2, 2232)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0028', 2, 2013, 0, 3, 2233)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0029', 2, 2013, 0, 1, 2234)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0029', 2, 2013, 0, 2, 2235)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0029', 2, 2013, 0, 3, 2236)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0030', 2, 2013, 0, 1, 2237)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0030', 2, 2013, 0, 2, 2238)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0030', 2, 2013, 0, 3, 2239)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0031', 2, 2013, 0, 1, 2240)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0031', 2, 2013, 0, 2, 2241)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0031', 2, 2013, 0, 3, 2242)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0032', 2, 2013, 0, 1, 2243)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0032', 2, 2013, 0, 2, 2244)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0032', 2, 2013, 0, 3, 2245)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0033', 2, 2013, 0, 1, 2246)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0033', 2, 2013, 0, 2, 2247)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0033', 2, 2013, 0, 3, 2248)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0034', 2, 2013, 0, 1, 2249)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0034', 2, 2013, 0, 2, 2250)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0034', 2, 2013, 0, 3, 2251)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0035', 2, 2013, 0, 1, 2252)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0035', 2, 2013, 0, 2, 2253)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0035', 2, 2013, 0, 3, 2254)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0036', 2, 2013, 0, 1, 2255)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0036', 2, 2013, 0, 2, 2256)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0036', 2, 2013, 0, 3, 2257)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0037', 2, 2013, 0, 1, 2258)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0037', 2, 2013, 0, 2, 2259)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0037', 2, 2013, 0, 3, 2260)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0038', 2, 2013, 0, 1, 2261)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0038', 2, 2013, 0, 2, 2262)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0038', 2, 2013, 0, 3, 2263)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0039', 2, 2013, 0, 1, 2264)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0039', 2, 2013, 0, 2, 2265)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0039', 2, 2013, 0, 3, 2266)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0040', 2, 2013, 0, 1, 2267)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0040', 2, 2013, 0, 2, 2268)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0040', 2, 2013, 0, 3, 2269)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0041', 3, 2013, 0, 1, 2270)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0041', 3, 2013, 0, 2, 2271)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0041', 3, 2013, 0, 3, 2272)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0042', 3, 2013, 0, 1, 2273)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0042', 3, 2013, 0, 2, 2274)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0042', 3, 2013, 0, 3, 2275)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0043', 3, 2013, 0, 1, 2276)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0043', 3, 2013, 0, 2, 2277)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0043', 3, 2013, 0, 3, 2278)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0044', 3, 2013, 0, 1, 2279)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0044', 3, 2013, 0, 2, 2280)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0044', 3, 2013, 0, 3, 2281)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0045', 3, 2013, 0, 1, 2282)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0045', 3, 2013, 0, 2, 2283)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0045', 3, 2013, 0, 3, 2284)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0046', 3, 2013, 0, 1, 2285)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0046', 3, 2013, 0, 2, 2286)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0046', 3, 2013, 0, 3, 2287)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0047', 3, 2013, 0, 1, 2288)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0047', 3, 2013, 0, 2, 2289)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0047', 3, 2013, 0, 3, 2290)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0048', 3, 2013, 0, 1, 2291)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0048', 3, 2013, 0, 2, 2292)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0048', 3, 2013, 0, 3, 2293)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0049', 3, 2013, 0, 1, 2294)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0049', 3, 2013, 0, 2, 2295)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0049', 3, 2013, 0, 3, 2296)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0050', 3, 2013, 0, 1, 2297)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0050', 3, 2013, 0, 2, 2298)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0050', 3, 2013, 0, 3, 2299)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0051', 3, 2013, 0, 1, 2300)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0051', 3, 2013, 0, 2, 2301)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0051', 3, 2013, 0, 3, 2302)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0052', 3, 2013, 0, 1, 2303)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0052', 3, 2013, 0, 2, 2304)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0052', 3, 2013, 0, 3, 2305)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0053', 3, 2013, 0, 1, 2306)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0053', 3, 2013, 0, 2, 2307)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0053', 3, 2013, 0, 3, 2308)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0054', 3, 2013, 0, 1, 2309)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0054', 3, 2013, 0, 2, 2310)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0054', 3, 2013, 0, 3, 2311)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0055', 3, 2013, 0, 1, 2312)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0055', 3, 2013, 0, 2, 2313)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0055', 3, 2013, 0, 3, 2314)
UPDATE [dbo].[phongthi]
SET [namthi] = 2023
GO
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0056', 3, 2013, 0, 1, 2315)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0056', 3, 2013, 0, 2, 2316)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0056', 3, 2013, 0, 3, 2317)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0057', 3, 2013, 0, 1, 2318)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0057', 3, 2013, 0, 2, 2319)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0057', 3, 2013, 0, 3, 2320)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0058', 3, 2013, 0, 1, 2321)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0058', 3, 2013, 0, 2, 2322)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0058', 3, 2013, 0, 3, 2323)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0059', 3, 2013, 0, 1, 2324)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0059', 3, 2013, 0, 2, 2325)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0059', 3, 2013, 0, 3, 2326)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0060', 3, 2013, 0, 1, 2327)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0060', 3, 2013, 0, 2, 2328)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0060', 3, 2013, 0, 3, 2329)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0061', 4, 2013, 0, 1, 2330)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0061', 4, 2013, 0, 2, 2331)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0061', 4, 2013, 0, 3, 2332)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0062', 4, 2013, 0, 1, 2333)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0062', 4, 2013, 0, 2, 2334)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0062', 4, 2013, 0, 3, 2335)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0063', 4, 2013, 0, 1, 2336)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0063', 4, 2013, 0, 2, 2337)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0063', 4, 2013, 0, 3, 2338)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0064', 4, 2013, 0, 1, 2339)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0064', 4, 2013, 0, 2, 2340)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0064', 4, 2013, 0, 3, 2341)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0065', 4, 2013, 0, 1, 2342)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0065', 4, 2013, 0, 2, 2343)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0065', 4, 2013, 0, 3, 2344)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0066', 4, 2013, 0, 1, 2345)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0066', 4, 2013, 0, 2, 2346)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0066', 4, 2013, 0, 3, 2347)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0067', 4, 2013, 0, 1, 2348)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0067', 4, 2013, 0, 2, 2349)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0067', 4, 2013, 0, 3, 2350)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0068', 4, 2013, 0, 1, 2351)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0068', 4, 2013, 0, 2, 2352)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0068', 4, 2013, 0, 3, 2353)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0069', 4, 2013, 0, 1, 2354)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0069', 4, 2013, 0, 2, 2355)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0069', 4, 2013, 0, 3, 2356)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0070', 4, 2013, 0, 1, 2357)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0070', 4, 2013, 0, 2, 2358)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0070', 4, 2013, 0, 3, 2359)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0071', 4, 2013, 0, 1, 2360)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0071', 4, 2013, 0, 2, 2361)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0071', 4, 2013, 0, 3, 2362)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0072', 4, 2013, 0, 1, 2363)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0072', 4, 2013, 0, 2, 2364)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0072', 4, 2013, 0, 3, 2365)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0073', 4, 2013, 0, 1, 2366)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0073', 4, 2013, 0, 2, 2367)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0073', 4, 2013, 0, 3, 2368)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0074', 4, 2013, 0, 1, 2369)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0074', 4, 2013, 0, 2, 2370)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0074', 4, 2013, 0, 3, 2371)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0075', 4, 2013, 0, 1, 2372)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0075', 4, 2013, 0, 2, 2373)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0075', 4, 2013, 0, 3, 2374)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0076', 4, 2013, 0, 1, 2375)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0076', 4, 2013, 0, 2, 2376)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0076', 4, 2013, 0, 3, 2377)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0077', 4, 2013, 0, 1, 2378)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0077', 4, 2013, 0, 2, 2379)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0077', 4, 2013, 0, 3, 2380)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0078', 4, 2013, 0, 1, 2381)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0078', 4, 2013, 0, 2, 2382)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0078', 4, 2013, 0, 3, 2383)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0079', 4, 2013, 0, 1, 2384)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0079', 4, 2013, 0, 2, 2385)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0079', 4, 2013, 0, 3, 2386)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0080', 4, 2013, 0, 1, 2387)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0080', 4, 2013, 0, 2, 2388)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0080', 4, 2013, 0, 3, 2389)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0081', 5, 2013, 0, 1, 2390)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0081', 5, 2013, 0, 2, 2391)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0081', 5, 2013, 0, 3, 2392)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0082', 5, 2013, 0, 1, 2393)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0082', 5, 2013, 0, 2, 2394)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0082', 5, 2013, 0, 3, 2395)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0083', 5, 2013, 0, 1, 2396)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0083', 5, 2013, 0, 2, 2397)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0083', 5, 2013, 0, 3, 2398)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0084', 5, 2013, 0, 1, 2399)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0084', 5, 2013, 0, 2, 2400)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0084', 5, 2013, 0, 3, 2401)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0085', 5, 2013, 0, 1, 2402)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0085', 5, 2013, 0, 2, 2403)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0085', 5, 2013, 0, 3, 2404)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0086', 5, 2013, 0, 1, 2405)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0086', 5, 2013, 0, 2, 2406)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0086', 5, 2013, 0, 3, 2407)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0087', 5, 2013, 0, 1, 2408)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0087', 5, 2013, 0, 2, 2409)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0087', 5, 2013, 0, 3, 2410)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0088', 5, 2013, 0, 1, 2411)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0088', 5, 2013, 0, 2, 2412)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0088', 5, 2013, 0, 3, 2413)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0089', 5, 2013, 0, 1, 2414)
UPDATE [dbo].[phongthi]
SET [namthi] = 2023
GO
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0089', 5, 2013, 0, 2, 2415)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0089', 5, 2013, 0, 3, 2416)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0090', 5, 2013, 0, 1, 2417)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0090', 5, 2013, 0, 2, 2418)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0090', 5, 2013, 0, 3, 2419)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0091', 5, 2013, 0, 1, 2420)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0091', 5, 2013, 0, 2, 2421)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0091', 5, 2013, 0, 3, 2422)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0092', 5, 2013, 0, 1, 2423)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0092', 5, 2013, 0, 2, 2424)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0092', 5, 2013, 0, 3, 2425)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0093', 5, 2013, 0, 1, 2426)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0093', 5, 2013, 0, 2, 2427)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0093', 5, 2013, 0, 3, 2428)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0094', 5, 2013, 0, 1, 2429)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0094', 5, 2013, 0, 2, 2430)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0094', 5, 2013, 0, 3, 2431)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0095', 5, 2013, 0, 1, 2432)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0095', 5, 2013, 0, 2, 2433)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0095', 5, 2013, 0, 3, 2434)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0096', 5, 2013, 0, 1, 2435)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0096', 5, 2013, 0, 2, 2436)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0096', 5, 2013, 0, 3, 2437)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0097', 5, 2013, 0, 1, 2438)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0097', 5, 2013, 0, 2, 2439)
INSERT [dbo].[phongthi] ([sbd], [sophongthi], [namthi], [bothi], [mon], [id]) VALUES (N'SDKA0097', 5, 2013, 0, 3, 2440)
UPDATE [dbo].[phongthi]
SET [namthi] = 2023
SET IDENTITY_INSERT [dbo].[phongthi] OFF
SET IDENTITY_INSERT [dbo].[thisinh] ON 

INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (3, N'SDKA0014', N'trần thị  ', N'hoa', CAST(0x0000830100000000 AS DateTime), N'Nữ', 25, 1, N'163135789', N'34 Nguyễn Du - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (4, N'SDKA0031', N'trần thị ', N'linh', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 5, N'163135718', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (5, N'SDKA0059', N'phạm mạnh ', N'toàn', CAST(0x0000811200000000 AS DateTime), N'Nam', 25, 5, N'163135714', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (6, N'SDKA0036', N'phạm gia ', N'long', CAST(0x0000826900000000 AS DateTime), N'Nam', 25, 5, N'163135723', N'Ý Yên - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (8, N'SDKA0015', N'trần văn ', N'hòa', CAST(0x0000826900000000 AS DateTime), N'Nam', 25, 4, N'163135720', N'Giao Thuỷ - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (9, N'SDKA0004', N'phạm hoàng ', N'anh', CAST(0x0000826900000000 AS DateTime), N'Nữ', 25, 2, N'163135747', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (10, N'SDKA0020', N'Trần Văn ', N'Hoàn', CAST(0x0000826900000000 AS DateTime), N'Nam', 2, 2, N'163135712', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (12, N'SDKA0037', N'Trần Văn ', N'Long', CAST(0x0000826900000000 AS DateTime), N'Nam', 25, 2, N'163135721', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (13, N'SDKA0062', N'Trần Văn ', N'Tú', CAST(0x0000824300000000 AS DateTime), N'Nam', 25, 2, N'163135756', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (14, N'SDKA0065', N'Trần Văn ', N'Tuân', CAST(0x0000824300000000 AS DateTime), N'Nam', 1, 2, N'163135710', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (15, N'SDKA0026', N'Trần Văn ', N'Kham', CAST(0x000082C400000000 AS DateTime), N'Nam', 1, 2, N'163135712', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (16, N'SDKA0066', N'Trần Văn ', N'Tuấn', CAST(0x000082C400000000 AS DateTime), N'Nam', 2, 2, N'163135723', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (17, N'SDKA0042', N'Trần Văn ', N'Nghĩa', CAST(0x000082C400000000 AS DateTime), N'Nam', 1, 2, N'163135711', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (18, N'SDKA0021', N'nguyễn thị', N'hồng', CAST(0x000082C400000000 AS DateTime), N'Nữ', 25, 2, N'163135712', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (19, N'SDKA0052', N'nguyễn thị', N'sen', CAST(0x0000824300000000 AS DateTime), N'Nữ', 25, 2, N'163135713', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
UPDATE [dbo].[thisinh] 
SET [namthi] = 2023, [namtn] = 2017 
WHERE [id] IN (3, 4, 5, 6, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19);

INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (20, N'SDKA0027', N'nguyễn thị', N'lan', CAST(0x000082C400000000 AS DateTime), N'Nữ', 2, 2, N'163135714', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (21, N'SDKA0070', N'hoàng thanh', N'vân', CAST(0x000082C400000000 AS DateTime), N'Nữ', 1, 2, N'163135715', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (22, N'SDKA0038', N'Trần Văn ', N'long', CAST(0x000081FE00000000 AS DateTime), N'Nam', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV1', N'D340301', 2012, N'Thôn Mỹ , Xã Hoài , Hà Tây', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (23, N'SDKA0060', N'Trần Văn ', N'trung', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135788', N'Nghĩa Hưng - Nam Định', N'DT1', N'0 ', N'KV1', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (24, N'SDKA0028', N'Nguyễn Thị', N'Lan', CAST(0x000082C400000000 AS DateTime), N'Nữ', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (25, N'SDKA0023', N'Đinh Thị', N'Hương', CAST(0x000081DC00000000 AS DateTime), N'Nữ', 18, 3, N'163523683', N'Lục Ngạn - Hưng Yên', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (26, N'SDKA0049', N'Đỗ Thị', N'Quy', CAST(0x000081FC00000000 AS DateTime), N'Nữ', 24, 3, N'163523684', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (27, N'SDKA0035', N'Trần Tiến', N'Long', CAST(0x0000832A00000000 AS DateTime), N'Nam', 24, 4, N'163135715', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (28, N'SDKA0076', N'Lại Quang', N'Vượng', CAST(0x0000821800000000 AS DateTime), N'Nam', 24, 4, N'163523645', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (29, N'SDKA0061', N'Đinh Gia', N'Trường', CAST(0x000081FD00000000 AS DateTime), N'Nam', 24, 4, N'163523612', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (30, N'SDKA0007', N'Trần Văn', N'Bạch', CAST(0x0000822900000000 AS DateTime), N'Nam', 24, 4, N'163523681', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (31, N'SDKA0024', N'Hoàng Diệu', N'huyền', CAST(0x000082C400000000 AS DateTime), N'Nữ', 24, 4, N'163523683', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (32, N'SDKA0058', N'Ngô Văn', N'Toán', CAST(0x0000821800000000 AS DateTime), N'Nam', 24, 3, N'163523689', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (33, N'SDKA0048', N'Nguyễn bảo', N'Quốc', CAST(0x000082B000000000 AS DateTime), N'Nam', 23, 3, N'163523688', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (34, N'SDKA0077', N'Trịnh Tuấn', N'Vỹ', CAST(0x0000822900000000 AS DateTime), N'Nam', 23, 3, N'163523687', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (35, N'SDKA0067', N'Đỗ minh', N'tuấn', CAST(0x000081FD00000000 AS DateTime), N'Nam', 23, 3, N'163523686', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (36, N'SDKA0005', N'Trần tuấn', N'anh', CAST(0x0000832C00000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (37, N'SDKA0013', N'Nguyễn thu', N'hiền', CAST(0x000081DD00000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (38, N'SDKA0074', N'Trần Văn ', N'Vinh', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (39, N'SDKA0016', N'Trần Văn ', N'Hòa', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (40, N'SDKA0030', N'nguyễn thị', N'Linh', CAST(0x0000831000000000 AS DateTime), N'Nữ', 25, 8, N'163135788', N'Trực Ninh - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (41, N'SDKA0032', N'trần thị  ', N'Loan', CAST(0x0000830100000000 AS DateTime), N'Nữ', 25, 1, N'163135789', N'34 Nguyễn Du - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (42, N'SDKA0022', N'trần thị ', N'Huệ', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 5, N'163135718', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (43, N'SDKA0046', N'phạm mạnh ', N'Quân', CAST(0x0000811200000000 AS DateTime), N'Nam', 25, 5, N'163135714', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (44, N'SDKA0003', N'phạm gia ', N'anh', CAST(0x0000826900000000 AS DateTime), N'Nam', 25, 5, N'163135723', N'Ý Yên - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (45, N'SDKA0064', N'trần văn ', N'tú', CAST(0x0000826900000000 AS DateTime), N'Nam', 25, 4, N'163135720', N'Giao Thuỷ - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (46, N'SDKA0041', N'phạm hoàng ', N'minh', CAST(0x0000826900000000 AS DateTime), N'Nữ', 25, 2, N'163135747', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (47, N'SDKA0051', N'Trần Văn ', N'quyền', CAST(0x0000826900000000 AS DateTime), N'Nam', 2, 2, N'163135712', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (48, N'SDKA0001', N'Trần Văn ', N'an', CAST(0x0000826900000000 AS DateTime), N'Nam', 25, 2, N'163135721', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (49, N'SDKA0043', N'Trần Văn ', N'phong', CAST(0x0000824300000000 AS DateTime), N'Nam', 25, 2, N'163135756', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (50, N'SDKA0009', N'Trần Văn ', N'bình', CAST(0x0000824300000000 AS DateTime), N'Nam', 1, 2, N'163135710', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (51, N'SDKA0008', N'Trần Văn ', N'binh', CAST(0x000082C400000000 AS DateTime), N'Nam', 1, 2, N'163135712', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (52, N'SDKA0068', N'Trần Văn ', N'Tuấn', CAST(0x000082C400000000 AS DateTime), N'Nam', 2, 2, N'163135723', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (53, N'SDKA0019', N'Trần Văn ', N'Hoài', CAST(0x000082C400000000 AS DateTime), N'Nam', 1, 2, N'163135711', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (54, N'SDKA0011', N'nguyễn thị', N'đào', CAST(0x000082C400000000 AS DateTime), N'Nữ', 25, 2, N'163135712', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
UPDATE [dbo].[thisinh]
SET [namthi] = 2023, [namtn] = 2017
WHERE [id] IN (20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54)



INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (55, N'SDKA0053', N'nguyễn thị', N'thắm', CAST(0x0000824300000000 AS DateTime), N'Nữ', 25, 2, N'163135713', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (56, N'SDKA0029', N'nguyễn thị', N'lan', CAST(0x000082C400000000 AS DateTime), N'Nữ', 2, 2, N'163135714', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (57, N'SDKA0063', N'hoàng thanh', N'tú', CAST(0x000082C400000000 AS DateTime), N'Nữ', 1, 2, N'163135715', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (58, N'SDKA0075', N'Trần Văn ', N'vịnh', CAST(0x000081FE00000000 AS DateTime), N'Nam', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV1', N'D340301', 2012, N'Thôn Mỹ , Xã Hoài , Hà Tây', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (59, N'SDKA0050', N'Trần Văn ', N'quy', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135788', N'Nghĩa Hưng - Nam Định', N'DT1', N'0 ', N'KV1', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (60, N'SDKA0025', N'Nguyễn Thị', N'huyền', CAST(0x000082C400000000 AS DateTime), N'Nữ', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (61, N'SDKA0002', N'Đinh Thị', N'an', CAST(0x000081DC00000000 AS DateTime), N'Nữ', 18, 3, N'163523683', N'Lục Ngạn - Hưng Yên', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (62, N'SDKA0039', N'Đỗ Thị', N'mến', CAST(0x000081FC00000000 AS DateTime), N'Nữ', 24, 3, N'163523684', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (63, N'SDKA0045', N'Trần Tiến', N'Phương', CAST(0x0000832A00000000 AS DateTime), N'Nam', 24, 4, N'163135715', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (64, N'SDKA0073', N'Lại Quang', N'Vinh', CAST(0x0000821800000000 AS DateTime), N'Nam', 24, 4, N'163523645', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (65, N'SDKA0044', N'Đinh Gia', N'Phú', CAST(0x000081FD00000000 AS DateTime), N'Nam', 24, 4, N'163523612', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (66, N'SDKA0006', N'Trần Văn', N'Ba', CAST(0x0000822900000000 AS DateTime), N'Nam', 24, 4, N'163523681', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (67, N'SDKA0012', N'Hoàng Diệu', N'Diệu', CAST(0x000082C400000000 AS DateTime), N'Nữ', 24, 4, N'163523683', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (68, N'SDKA0057', N'Ngô Văn', N'Toán', CAST(0x0000821800000000 AS DateTime), N'Nam', 24, 3, N'163523689', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (69, N'SDKA0047', N'Nguyễn bảo', N'Quốc', CAST(0x000082B000000000 AS DateTime), N'Nam', 23, 3, N'163523688', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
-- Update namthi column to 2023
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] IN (55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69);

-- Update namtn column to 2017
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] IN (55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69);




INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (70, N'SDKA0078', N'Trịnh Văn', N'Vỹ', CAST(0x000081FF00000000 AS DateTime), N'Nam', 23, 3, N'163523687', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (71, N'SDKA0010', N'Đỗ minh', N'cao', CAST(0x000081FD00000000 AS DateTime), N'Nam', 23, 3, N'163523686', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (72, N'SDKA0069', N'Trần tuấn', N'tưởng', CAST(0x0000832C00000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (73, N'SDKA0040', N'Nguyễn thanh', N'minh', CAST(0x0000832B00000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (74, N'SDKA0071', N'Trần Văn ', N'Văn', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (75, N'SDKA0017', N'Trần Chí', N'Hòa', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (76, N'SDKA0055', N'phạm mạnh', N'tiến', CAST(0x0000811200000000 AS DateTime), N'Nam', 25, 5, N'163135714', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (77, N'SDKA0054', N'Trần tuấn', N'Thu', CAST(0x0000832C00000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (78, N'SDKA0018', N'Nguyễn thu', N'hòa', CAST(0x000081DD00000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (79, N'SDKA0056', N'Trần Văn ', N'Tính', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (80, N'SDKA0034', N'Trần Chí', N'Lộc', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (84, N'SDKA0072', N'Trần Văn', N'Viên', CAST(0x000082C400000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (86, N'SDKA0033', N'trần thị ', N'loan', CAST(0x000082B400000000 AS DateTime), N'Nữ', 25, 4, N'163135778', N'Ý Yên - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D480201', 2012, N'', 2006)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (177, N'SDKA0051', N'Trần Văn ', N'Nam', CAST(0x0000842900000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
-- Update namthi column to 2023
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] IN (70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 84, 86, 177);

-- Update namtn column to 2017
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] IN (70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 84, 86, 177);



INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (178, N'SDKA0046', N'nguyễn thị', N'mai', CAST(0x0000847E00000000 AS DateTime), N'Nữ', 25, 8, N'163135788', N'Trực Ninh - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (179, N'SDKA0017', N'trần thị  ', N'hoa', CAST(0x0000846F00000000 AS DateTime), N'Nữ', 25, 1, N'163135789', N'34 Nguyễn Du - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (180, N'SDKA0036', N'trần thị ', N'linh', CAST(0x0000843200000000 AS DateTime), N'Nam', 25, 5, N'163135718', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (181, N'SDKA0075', N'phạm mạnh ', N'toàn', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 5, N'163135714', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (182, N'SDKA0043', N'phạm gia ', N'long', CAST(0x000083D700000000 AS DateTime), N'Nam', 25, 5, N'163135723', N'Ý Yên - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (183, N'SDKA0018', N'trần văn ', N'hòa', CAST(0x000083D700000000 AS DateTime), N'Nam', 25, 4, N'163135720', N'Giao Thuỷ - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (184, N'SDKA0004', N'phạm hoàng ', N'anh', CAST(0x000083D700000000 AS DateTime), N'Nữ', 25, 2, N'163135747', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (185, N'SDKA0025', N'Trần Văn ', N'Hoàn', CAST(0x000083D700000000 AS DateTime), N'Nam', 2, 2, N'163135712', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (186, N'SDKA0042', N'Trần Văn ', N'Long', CAST(0x000083D700000000 AS DateTime), N'Nam', 25, 2, N'163135721', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (187, N'SDKA0078', N'Trần Văn ', N'Tú', CAST(0x000083D700000000 AS DateTime), N'Nam', 25, 2, N'163135756', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (188, N'SDKA0081', N'Trần Văn ', N'Tuân', CAST(0x000083D700000000 AS DateTime), N'Nam', 1, 2, N'163135710', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (189, N'SDKA0031', N'Trần Văn ', N'Kham', CAST(0x000083D700000000 AS DateTime), N'Nam', 1, 2, N'163135712', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (190, N'SDKA0082', N'Trần Văn ', N'Tuấn', CAST(0x000083D700000000 AS DateTime), N'Nam', 2, 2, N'163135723', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (191, N'SDKA0052', N'Trần Văn ', N'Nghĩa', CAST(0x000083ED00000000 AS DateTime), N'Nam', 1, 2, N'163135711', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (192, N'SDKA0026', N'nguyễn thị', N'hồng', CAST(0x000083ED00000000 AS DateTime), N'Nữ', 25, 2, N'163135712', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
-- Update namthi column to 2023 for new rows
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] IN (178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192);

-- Update namtn column to 2017 for new rows
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] IN (178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192);





INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (193, N'SDKA0064', N'nguyễn thị', N'sen', CAST(0x000083ED00000000 AS DateTime), N'Nữ', 25, 2, N'163135713', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (194, N'SDKA0032', N'nguyễn thị', N'lan', CAST(0x000083ED00000000 AS DateTime), N'Nữ', 2, 2, N'163135714', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (195, N'SDKA0087', N'hoàng thanh', N'vân', CAST(0x000083ED00000000 AS DateTime), N'Nữ', 1, 2, N'163135715', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (196, N'SDKA0044', N'Trần Văn ', N'long', CAST(0x0000836B00000000 AS DateTime), N'Nam', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV1', N'D340301', 2013, N'Thôn Mỹ , Xã Hoài , Hà Tây', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (197, N'SDKA0076', N'Trần Văn ', N'trung', CAST(0x0000836B00000000 AS DateTime), N'Nam', 25, 9, N'163135788', N'Nghĩa Hưng - Nam Định', N'DT1', N'0 ', N'KV1', N'D340301', 2013, N'', 2007)
GO
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (198, N'SDKA0033', N'Nguyễn Thị', N'Lan', CAST(0x0000836B00000000 AS DateTime), N'Nữ', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (199, N'SDKA0028', N'Đinh Thị', N'Hương', CAST(0x0000836B00000000 AS DateTime), N'Nữ', 18, 3, N'163523683', N'Lục Ngạn - Hưng Yên', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (200, N'SDKA0061', N'Đỗ Thị', N'Quy', CAST(0x0000836B00000000 AS DateTime), N'Nữ', 24, 3, N'163523684', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (201, N'SDKA0045', N'Trần Tiến', N'Long', CAST(0x0000836B00000000 AS DateTime), N'Nam', 24, 4, N'163135715', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (202, N'SDKA0096', N'Lại Quang', N'Vượng', CAST(0x0000838600000000 AS DateTime), N'Nam', 24, 4, N'163523645', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (203, N'SDKA0077', N'Đinh Gia', N'Trường', CAST(0x0000838600000000 AS DateTime), N'Nam', 24, 4, N'163523612', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (204, N'SDKA0008', N'Trần Văn', N'Bạch', CAST(0x0000838600000000 AS DateTime), N'Nam', 24, 4, N'163523681', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (205, N'SDKA0029', N'Hoàng Diệu', N'huyền', CAST(0x0000838600000000 AS DateTime), N'Nữ', 24, 4, N'163523683', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (206, N'SDKA0074', N'Ngô Văn', N'Toán', CAST(0x0000838600000000 AS DateTime), N'Nam', 24, 3, N'163523689', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (207, N'SDKA0059', N'Nguyễn bảo', N'Quốc', CAST(0x0000841E00000000 AS DateTime), N'Nam', 23, 3, N'163523688', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (208, N'SDKA0097', N'Trịnh Tuấn', N'Vỹ', CAST(0x0000841E00000000 AS DateTime), N'Nam', 23, 3, N'163523687', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (209, N'SDKA0083', N'Đỗ minh', N'tuấn', CAST(0x0000838600000000 AS DateTime), N'Nam', 23, 3, N'163523686', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (210, N'SDKA0005', N'Trần tuấn', N'anh', CAST(0x0000841E00000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
-- Update namthi column to 2023 for new rows
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] BETWEEN 193 AND 210;

-- Update namtn column to 2017 for new rows
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] BETWEEN 193 AND 210;






INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (211, N'SDKA0016', N'Nguyễn thu', N'hiền', CAST(0x0000838600000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (212, N'SDKA0094', N'Trần Văn ', N'Vinh', CAST(0x0000841E00000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (213, N'SDKA0019', N'Trần Văn ', N'Hòa', CAST(0x0000841E00000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (214, N'SDKA0035', N'nguyễn thị', N'Linh', CAST(0x0000841E00000000 AS DateTime), N'Nữ', 25, 8, N'163135788', N'Trực Ninh - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (215, N'SDKA0037', N'trần thị  ', N'Loan', CAST(0x0000841E00000000 AS DateTime), N'Nữ', 25, 1, N'163135789', N'34 Nguyễn Du - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (216, N'SDKA0027', N'trần thị ', N'Huệ', CAST(0x0000841E00000000 AS DateTime), N'Nam', 25, 5, N'163135718', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (217, N'SDKA0057', N'phạm mạnh ', N'Quân', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 5, N'163135714', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (218, N'SDKA0003', N'phạm gia ', N'anh', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 5, N'163135723', N'Ý Yên - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (219, N'SDKA0080', N'trần văn ', N'tú', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 4, N'163135720', N'Giao Thuỷ - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (220, N'SDKA0049', N'phạm hoàng ', N'minh', CAST(0x000083ED00000000 AS DateTime), N'Nữ', 25, 2, N'163135747', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (221, N'SDKA0063', N'Trần Văn ', N'quyền', CAST(0x000083ED00000000 AS DateTime), N'Nam', 2, 2, N'163135712', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (222, N'SDKA0001', N'Trần Văn ', N'an', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 2, N'163135721', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (223, N'SDKA0053', N'Trần Văn ', N'phong', CAST(0x000083B100000000 AS DateTime), N'Nam', 25, 2, N'163135756', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (224, N'SDKA0010', N'Trần Văn ', N'bình', CAST(0x000083ED00000000 AS DateTime), N'Nam', 1, 2, N'163135710', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (225, N'SDKA0009', N'Trần tuấn', N'binh', CAST(0x000083B100000000 AS DateTime), N'Nam', 1, 2, N'163135712', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (226, N'SDKA0084', N'Trần Văn ', N'Tuấn', CAST(0x000083ED00000000 AS DateTime), N'Nam', 2, 2, N'163135723', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (227, N'SDKA0024', N'Trần Văn ', N'Hoài', CAST(0x000083B100000000 AS DateTime), N'Nam', 1, 2, N'163135711', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (228, N'SDKA0013', N'nguyễn thị', N'đào', CAST(0x000083B100000000 AS DateTime), N'Nữ', 25, 2, N'163135712', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (229, N'SDKA0065', N'nguyễn thị', N'thắm', CAST(0x000083B100000000 AS DateTime), N'Nữ', 25, 2, N'163135713', N'Mỹ Lộc - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
-- Update namthi column to 2023 for new rows
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] BETWEEN 211 AND 229;

-- Update namtn column to 2017 for new rows
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] BETWEEN 211 AND 229;




INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (230, N'SDKA0034', N'nguyễn thị', N'lan', CAST(0x000083B100000000 AS DateTime), N'Nữ', 2, 2, N'163135714', N'Quận Hai - HCM', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (231, N'SDKA0079', N'hoàng thanh', N'tú', CAST(0x000083B100000000 AS DateTime), N'Nữ', 1, 2, N'163135715', N'Hoàn Kiếm - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (232, N'SDKA0095', N'Trần Văn ', N'vịnh', CAST(0x000083B100000000 AS DateTime), N'Nam', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV1', N'D340301', 2013, N'Thôn Mỹ , Xã Hoài , Hà Tây', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (233, N'SDKA0062', N'Trần Văn ', N'quy', CAST(0x0000841800000000 AS DateTime), N'Nam', 25, 9, N'163135788', N'Nghĩa Hưng - Nam Định', N'DT1', N'0 ', N'KV1', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (234, N'SDKA0030', N'Nguyễn Thị', N'huyền', CAST(0x0000841800000000 AS DateTime), N'Nữ', 1, 9, N'163135712', N'Long Biên - HN', N'DT1', N'0 ', N'KV2 ', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (235, N'SDKA0002', N'Đinh Thị', N'an', CAST(0x0000841800000000 AS DateTime), N'Nữ', 18, 3, N'163523683', N'Lục Ngạn - Hưng Yên', N'DT1', N'0 ', N'KV2-NT', N'D510205', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (236, N'SDKA0047', N'Đỗ Thị', N'mến', CAST(0x0000841800000000 AS DateTime), N'Nữ', 24, 3, N'163523684', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (237, N'SDKA0056', N'Trần Tiến', N'Phương', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 4, N'163135715', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (238, N'SDKA0093', N'Lại Quang', N'Vinh', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 4, N'163523645', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (239, N'SDKA0054', N'Đinh Gia', N'Phú', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 4, N'163523612', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (240, N'SDKA0006', N'Trần Văn', N'Ba', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 4, N'163523681', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (241, N'SDKA0014', N'Hoàng Diệu', N'Diệu', CAST(0x0000841800000000 AS DateTime), N'Nữ', 24, 4, N'163523683', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (242, N'SDKA0073', N'Ngô Văn', N'Toán', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 3, N'163523689', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (243, N'SDKA0058', N'Nguyễn bảo', N'Quốc', CAST(0x0000841800000000 AS DateTime), N'Nam', 23, 3, N'163523688', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (245, N'SDKA0011', N'Đỗ minh', N'cao', CAST(0x000083B100000000 AS DateTime), N'Nam', 23, 3, N'163523686', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (246, N'SDKA0085', N'Trần tuấn', N'tưởng', CAST(0x000083B100000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (247, N'SDKA0048', N'Nguyễn thanh', N'minh', CAST(0x000083B100000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (248, N'SDKA0088', N'Trần Văn ', N'Văn', CAST(0x000083B100000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
-- Update namthi column to 2023 for new rows
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] BETWEEN 230 AND 248;

-- Update namtn column to 2017 for new rows
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] BETWEEN 230 AND 248;





INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (249, N'SDKA0020', N'Trần Chí', N'Hòa', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (250, N'SDKA0068', N'phạm mạnh', N'tiến', CAST(0x0000811200000000 AS DateTime), N'Nam', 25, 5, N'163135714', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (251, N'SDKA0067', N'Trần tuấn', N'Thu', CAST(0x000083ED00000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (252, N'SDKA0021', N'Nguyễn thu', N'hòa', CAST(0x000083B100000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (253, N'SDKA0071', N'Trần Văn ', N'Tính', CAST(0x000083B100000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (254, N'SDKA0040', N'Trần Chí', N'Lộc', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (255, N'SDKA0090', N'Trần Văn', N'Viên', CAST(0x000083B100000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (256, N'SDKA0039', N'trần thị ', N'loan', CAST(0x000083ED00000000 AS DateTime), N'Nữ', 25, 4, N'163135778', N'Ý Yên - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D480201', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (257, N'SDKA0092', N'Lại Quang', N'Vinh', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 4, N'163523645', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (258, N'SDKA0055', N'Đinh Gia', N'Phú', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 4, N'163523612', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (259, N'SDKA0007', N'Trần Văn', N'Ba', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 4, N'163523681', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (260, N'SDKA0015', N'Hoàng Diệu', N'Diệu', CAST(0x0000841800000000 AS DateTime), N'Nữ', 24, 4, N'163523683', N'Lý Nhân - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (261, N'SDKA0072', N'Ngô Văn', N'Toán', CAST(0x0000841800000000 AS DateTime), N'Nam', 24, 3, N'163523689', N'Kim Bảng - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (262, N'SDKA0060', N'Nguyễn bảo', N'Quốc', CAST(0x0000841800000000 AS DateTime), N'Nam', 23, 3, N'163523688', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
-- Update namthi column to 2023 for new rows
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] BETWEEN 249 AND 262;

-- Update namtn column to 2017 for new rows
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] BETWEEN 249 AND 262;






INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (264, N'SDKA0012', N'Đỗ minh', N'cao', CAST(0x000083B100000000 AS DateTime), N'Nam', 23, 3, N'163523686', N'Đà Bắc - Hòa Bình', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (265, N'SDKA0086', N'Trần tuấn', N'tưởng', CAST(0x000083B100000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (266, N'SDKA0050', N'Nguyễn thanh', N'minh', CAST(0x000083B100000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (267, N'SDKA0089', N'Trần Văn ', N'Văn', CAST(0x000083B100000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (268, N'SDKA0022', N'Trần Chí', N'Hòa', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (269, N'SDKA0069', N'phạm mạnh', N'tiến', CAST(0x0000811200000000 AS DateTime), N'Nam', 25, 5, N'163135714', N'Ý Yên - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (270, N'SDKA0066', N'Trần tuấn', N'Thu', CAST(0x000083ED00000000 AS DateTime), N'Nam', 24, 2, N'163523645', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D510301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (271, N'SDKA0023', N'Nguyễn thu', N'hòa', CAST(0x000083B100000000 AS DateTime), N'Nữ', 24, 2, N'163523686', N'Duy Tiên - Hà Nam', N'DT1', N'0 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (272, N'SDKA0070', N'Trần Văn ', N'Tính', CAST(0x000083B100000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (273, N'SDKA0041', N'Trần Chí', N'Lộc', CAST(0x000083ED00000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (274, N'SDKA0091', N'Trần Văn', N'Viên', CAST(0x000083B100000000 AS DateTime), N'Nam', 25, 9, N'163135741', N'Nghĩa Hưng - Nam Định', N'DT1', N'1 ', N'KV2-NT', N'D340301', 2013, N'', 2007)
INSERT [dbo].[thisinh] ([id], [sobd], [hots], [tents], [ngaysinh], [gioitinh], [matinh], [mahuyen], [cmt], [hokhau], [dantoc], [dt_ut], [khuvuc], [nganhdk], [namthi], [dcbaotin], [namtn]) VALUES (275, N'SDKA0038', N'trần thị ', N'loan', CAST(0x000083ED00000000 AS DateTime), N'Nữ', 25, 4, N'163135778', N'Ý Yên - Nam Định', N'DT1', N'0 ', N'KV2-NT', N'D480201', 2013, N'', 2007)
-- Update namthi column to 2023 for new rows
UPDATE [dbo].[thisinh]
SET [namthi] = 2023
WHERE [id] BETWEEN 264 AND 275;

-- Update namtn column to 2017 for new rows
UPDATE [dbo].[thisinh]
SET [namtn] = 2017
WHERE [id] BETWEEN 264 AND 275;






SET IDENTITY_INSERT [dbo].[thisinh] OFF
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (1, N'Hà Nội')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (2, N'Hồ Chí Minh')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (3, N'Hải Phòng')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (4, N'Đà Nẵng')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (5, N'Hà Giang')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (6, N'Cao Bằng')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (7, N'Lai Châu')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (8, N'Lào Cai')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (9, N'Tuyên Quang')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (10, N'Lạng Sơn')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (11, N'Bắc Cạn')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (12, N'Thái Nguyên')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (13, N'Yên Bái')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (14, N'Sơn La')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (15, N'Phú Thọ')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (16, N'Vĩnh Phúc')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (17, N'Quảng Ninh')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (18, N'Bắc Giang')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (19, N'Bắc Ninh')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (20, N'Hà Tây')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (21, N'Hải Dương')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (22, N'Hưng Yên')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (23, N'Hoà Bình')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (24, N'Hà Nam')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (25, N'Nam Định')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (26, N'Thái Bình')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (27, N'Ninh Bình')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (28, N'Thanh Hoá')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (29, N'Nghệ An')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (30, N'Hà Tĩnh')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (31, N'Quảng Bình          ')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (32, N'Quảng Trị')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (33, N'Thiên Huế')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (34, N'Quảng Nam')
INSERT [dbo].[tinh] ([matinh], [tentinh]) VALUES (35, N'Quảng Ngãi')
ALTER TABLE [dbo].[dangnhap]  WITH CHECK ADD  CONSTRAINT [FK_dangnhap_maquyen] FOREIGN KEY([quyen])
REFERENCES [dbo].[maquyen] ([ma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dangnhap] CHECK CONSTRAINT [FK_dangnhap_maquyen]
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD  CONSTRAINT [FK_diem_mamon] FOREIGN KEY([mamon])
REFERENCES [dbo].[mamon] ([mamon])
GO
ALTER TABLE [dbo].[diem] CHECK CONSTRAINT [FK_diem_mamon]
GO
ALTER TABLE [dbo].[huyen]  WITH CHECK ADD  CONSTRAINT [FK_huyen_tinh] FOREIGN KEY([matinh])
REFERENCES [dbo].[tinh] ([matinh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[huyen] CHECK CONSTRAINT [FK_huyen_tinh]
GO
ALTER TABLE [dbo].[phach]  WITH CHECK ADD  CONSTRAINT [FK_phach_mamon] FOREIGN KEY([mon])
REFERENCES [dbo].[mamon] ([mamon])
GO
ALTER TABLE [dbo].[phach] CHECK CONSTRAINT [FK_phach_mamon]
GO
ALTER TABLE [dbo].[thisinh]  WITH CHECK ADD  CONSTRAINT [FK_thisinh_dantoc] FOREIGN KEY([dantoc])
REFERENCES [dbo].[dantoc] ([madt])
GO
ALTER TABLE [dbo].[thisinh] CHECK CONSTRAINT [FK_thisinh_dantoc]
GO
ALTER TABLE [dbo].[thisinh]  WITH CHECK ADD  CONSTRAINT [FK_thisinh_doituong] FOREIGN KEY([dt_ut])
REFERENCES [dbo].[doituong] ([madt])
GO
ALTER TABLE [dbo].[thisinh] CHECK CONSTRAINT [FK_thisinh_doituong]
GO
ALTER TABLE [dbo].[thisinh]  WITH CHECK ADD  CONSTRAINT [FK_thisinh_khuvuc] FOREIGN KEY([khuvuc])
REFERENCES [dbo].[khuvuc] ([makv])
GO
ALTER TABLE [dbo].[thisinh] CHECK CONSTRAINT [FK_thisinh_khuvuc]
GO
ALTER TABLE [dbo].[thisinh]  WITH CHECK ADD  CONSTRAINT [FK_thisinh_namthi] FOREIGN KEY([namthi])
REFERENCES [dbo].[namthi] ([ma])
GO
ALTER TABLE [dbo].[thisinh] CHECK CONSTRAINT [FK_thisinh_namthi]
GO
ALTER TABLE [dbo].[thisinh]  WITH CHECK ADD  CONSTRAINT [FK_thisinh_nganh] FOREIGN KEY([nganhdk])
REFERENCES [dbo].[nganh] ([manganh])
GO
ALTER TABLE [dbo].[thisinh] CHECK CONSTRAINT [FK_thisinh_nganh]
GO
ALTER TABLE [dbo].[thisinh]  WITH CHECK ADD  CONSTRAINT [FK_thisinh_tinh] FOREIGN KEY([matinh])
REFERENCES [dbo].[tinh] ([matinh])
GO
ALTER TABLE [dbo].[thisinh] CHECK CONSTRAINT [FK_thisinh_tinh]
GO
/****** Object:  Statistic [_WA_Sys_00000002_55BFB948]     ******/
CREATE STATISTICS [_WA_Sys_00000002_55BFB948] ON [dbo].[dangnhap]([matkhau]) WITH STATS_STREAM = 0x01000000010000000000000000000000D05DEFC70000000067040000000000002704000000000000E7030000E7000000640000000000000008D00034000000000700000082F2190174A2000006000000000000000600000000000000000000000000803E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000040000000100000010000000000080420000C04000000000000080420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000007C01000000000000C30200000000000020000000000000007700000000000000CE000000000000002501000000000000300010000000803F000000000000803F04000001005700320031003200330032004600320039003700410035003700410035004100370034003300380039003400410030004500340041003800300031004600430033003000100000004040000000000000803F0400000100570045003100300041004400430033003900340039004200410035003900410042004200450035003600450030003500370046003200300046003800380033004500300010000000803F000000000000803F0400000100570045003100350034003900460037004200350036003300370037004300390033003500420031004300320039003700390034004100380044004100330034003100300010000000803F000000000000803F0400000100570045003600320044003800450042003000350034003300380037003500430033003900300031004500450032004100340031003200340039004500360038003400FF01000000000000000600000004000000280000002800000000000000000000007D0000003200310032003300320046003200390037004100350037004100350041003700340033003800390034004100300045003400410038003000310046004300330045003100300041004400430033003900340039004200410035003900410042004200450035003600450030003500370046003200300046003800380033004500350034003900460037004200350036003300370037004300390033003500420031004300320039003700390034004100380044004100330034003100360032004400380045004200300035003400330038003700350043003300390030003100450045003200410034003100320034003900450036003800340007000000400000000081200000004001200000C001210000831E220000011E400000011F5E000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_55BFB948]     ******/
CREATE STATISTICS [_WA_Sys_00000003_55BFB948] ON [dbo].[dangnhap]([quyen]) WITH STATS_STREAM = 0x0100000001000000000000000000000044E704F9000000003B02000000000000FB01000000000000E7020000E7000000280000000000000008D00034003200460700000098E3190174A2000006000000000000000600000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000010000000ABAAEA400000C04000000000ABAAEA400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000004E000000000000009700000000000000100000000000000031000000000000003000100000000040000000000000803F04000001002100610064006D0069006E003000100000008040000000000000803F04000001001D006D006F006400FF010000000000000006000000020000002800000028000000000000000000000008000000610064006D0069006E006D006F0064000300000040000000008205000000040305000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_55BFB948]     ******/
CREATE STATISTICS [_WA_Sys_00000004_55BFB948] ON [dbo].[dangnhap]([quenmk]) WITH STATS_STREAM = 0x0100000001000000000000000000000087F6979E00000000CB010000000000008B01000000000000E7020000E7000000280000000000000008D00034000000000700000087F2190174A2000006000000000000000600000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000010000000000000000000C0400000C040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000002F00000000000000FF01000000060000000600000001000000280000002800000000000000000000000000000001000000000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_55BFB948]     ******/
CREATE STATISTICS [_WA_Sys_00000005_55BFB948] ON [dbo].[dangnhap]([trangthai]) WITH STATS_STREAM = 0x010000000100000000000000000000002AE405AF00000000940100000000000054010000000000003802FFFF3800000004000A0000000000000000000100000007000000EC0BE700A7A2000005000000000000000500000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000014000000000000000000A0400000A04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [PK_dangnhap]     ******/
UPDATE STATISTICS [dbo].[dangnhap]([PK_dangnhap]) WITH STATS_STREAM = 0x01000000010000000000000000000000DA43B55C000000005F030000000000001F03000000000000E703D6E0E7000000280000000000000008D00034010000000700000098E3190174A200000600000000000000060000000000000000000000ABAA2A3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006000000060000000100000010000000000070410000C04000000000000070410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000001401000000000000BB01000000000000300000000000000051000000000000007A00000000000000A100000000000000C800000000000000EF00000000000000300010000000803F000000000000803F04000001002100610064006D0069006E00300010000000803F000000000000803F04000001002900640069006E006800700068006F006E006700300010000000803F000000000000803F040000010027006D0069006E0068006B0068006F006900300010000000803F000000000000803F040000010027006E0067006F0063006800690065007000300010000000803F000000000000803F040000010027007000680061006D0074006F0061006E00300010000000803F000000000000803F040000010025007400720061006E006E0061006D00FF01000000000000000600000006000000280000002800000000000000000000002D000000610064006D0069006E00640069006E006800700068006F006E0067006D0069006E0068006B0068006F0069006E0067006F00630068006900650070007000680061006D0074006F0061006E007400720061006E006E0061006D000700000040000000008105000000810905000081080E0000810816000081081E0000010726000000, ROWCOUNT = 5, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_10216507]     ******/
CREATE STATISTICS [_WA_Sys_00000002_10216507] ON [dbo].[dantoc]([tendt]) WITH STATS_STREAM = 0x010000000100000000000000000000005DCFB08800000000A8040000000000006804000000000000E7020000E7000000640000000000000008D000340000000007000000B1A17E014BA20000100000000000000010000000000000000000803F0000803D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E0000000E0000000100000010000000000018410000804100000000000018410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000003C02000000000000040300000000000070000000000000009100000000000000B000000000000000CD00000000000000EC0000000000000011010000000000003601000000000000530100000000000076010000000000009501000000000000B401000000000000DB0100000000000000020000000000001D02000000000000300010000000803F000000000000803F040000010021004200610020006E006100300010000000803F000000000000803F04000001001F004300680003016D00300010000000803F000000000000803F04000001001D00440061006F00300010000000803F000000000000803F04000001001F00CA0020001001EA00300010000000803F0000803F0000803F040000010025004700690061002000520061006900300010000000803F000000000000803F040000010025004800A10120004D00F4006E006700300010000000803F000000000000803F04000001001D0048006F006100300010000000803F000000000000803F040000010023004B006800A10120004D006500300010000000803F000000000000803F04000001001F004B0069006E006800300010000000803F0000803F0000803F04000001001F004E00F9006E006700300010000000803F000000000000803F040000010027005300E1006E0020004300680061007900300010000000803F000000000000803F040000010025005300A1012000110103016E006700300010000000803F000000000000803F04000001001D005400E0007900300010000000803F000000000000803F04000001001F0054006800E1006900FF01000000000000000A0000000A00000028000000280000000000000000000000310000004200610020006E006100440061006F0066006400470069006100200052006100690048006F0061004B006800A10120004D0065004D00B001DD1E6E0067005300E1006E0020004300680061007900A1012000110103016E00670054006800E10069000C000000400000000081050000008103050000810208000081070A00008103110000810614000081051A0000C0011F00008107200000010627000001042D000000
GO
/****** Object:  Statistic [PK_dantoc]     ******/
UPDATE STATISTICS [dbo].[dantoc]([PK_dantoc]) WITH STATS_STREAM = 0x0100000001000000000000000000000038DF25B6000000000302000000000000C301000000000000E7030001E70000000A0000000000000008D000340079003007000000367CED0048A2000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C0400000803F000000000000C04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000025000000000000005F000000000000000800000000000000300010000000803F000000000000803F04000001001D00440054003100FF010000000000000001000000010000002800000028000000000000000000000003000000440054003100020000004000000000010300000000, ROWCOUNT = 15, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_79FD19BE]     ******/
CREATE STATISTICS [_WA_Sys_00000002_79FD19BE] ON [dbo].[diadiem]([tendd]) WITH STATS_STREAM = 0x01000000010000000000000000000000B5573FC8000000004E020000000000000E02000000000000E702D6E0E7000000640000000000000008D000340000000007000000B092F60091A2000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000010000000000040410000004000000000000040410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000005600000000000000AA0000000000000010000000000000003300000000000000300010000000803F000000000000803F04000001002300410031002D00330030003100300010000000803F000000000000803F04000001002300410032002D00330030003100FF01000000000000000200000002000000280000002800000000000000000000000B000000410031002D0033003000310032002D0033003000310004000000400000000040010000008105010000010506000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_79FD19BE]     ******/
CREATE STATISTICS [_WA_Sys_00000005_79FD19BE] ON [dbo].[diadiem]([namthi]) WITH STATS_STREAM = 0x01000000010000000000000000000000092EF1FE00000000BB010000000000007B01000000000000380200003800000004000A00000000000000000000000000070000002FB4F60091A2000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F0000000000000008000000000000001000140000000040000000000000803FDC070000040000
GO
/****** Object:  Statistic [_WA_Sys_00000006_79FD19BE]     ******/
CREATE STATISTICS [_WA_Sys_00000006_79FD19BE] ON [dbo].[diadiem]([phong]) WITH STATS_STREAM = 0x01000000010000000000000000000000D39C04D300000000940100000000000054010000000000003802D6E03800000004000A000000000000000000000000000700000033B4F60091A2000002000000000000000200000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001400000000000000000000400000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [PK_maphongthi]     ******/
UPDATE STATISTICS [dbo].[diadiem]([PK_maphongthi]) WITH STATS_STREAM = 0x010000000100000000000000000000003708E75200000000DA010000000000009A01000000000000380300003800000004000A00000000000000000000000000070000009987F60091A2000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003E0000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F02000000040000, ROWCOUNT = 9, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000001_220B0B18]     ******/
CREATE STATISTICS [_WA_Sys_00000001_220B0B18] ON [dbo].[diem]([mamon]) WITH STATS_STREAM = 0x01000000010000000000000000000000700D531D00000000F901000000000000B90100000000000038020A023800000004000A000000000000000000000000000700000057BEDF00A5A20000EA00000000000000EA0000000000000000000000ABAAAA3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000300000001000000140000000000804000006A4300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005D0000000000000018000000000000002F0000000000000046000000000000001000140000009C42000000000000803F010000000400001000140000009C42000000000000803F020000000400001000140000009C42000000000000803F03000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_220B0B18]     ******/
CREATE STATISTICS [_WA_Sys_00000003_220B0B18] ON [dbo].[diem]([diem]) WITH STATS_STREAM = 0x010000000100000000000000000000004CC3D61E00000000400300000000000000030000000000003E0200003E0000000800350000000000000000000000000007000000D468E100A5A20000EA00000000000000EA0000000000000000000000ABAAAA3D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0000000C00000001000000180000000000004100006A430000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000A40100000000000060000000000000007B000000000000009600000000000000B100000000000000CC00000000000000E70000000000000002010000000000001D01000000000000380100000000000053010000000000006E0100000000000089010000000000001000180000000040000000000000803F0000000000000040040000100018000000E040000000000000803F0000000000000840040000100018000000803F000000000000803F0000000000000C400400001000180000004040000000000000803F00000000000010400400001000180000000C42000000000000803F0000000000001440040000100018000000803F000000000000803F00000000000016400400001000180000002842000000000000803F0000000000001840040000100018000000803F000000000000803F0000000000001A400400001000180000004442000000000000803F0000000000001C40040000100018000000AA42000000000000803F0000000000002040040000100018000000E040000000000000803F0000000000002240040000100018000000803F000000000000803F0000000000002440040000
GO
/****** Object:  Statistic [_WA_Sys_00000004_220B0B18]     ******/
CREATE STATISTICS [_WA_Sys_00000004_220B0B18] ON [dbo].[diem]([namthi]) WITH STATS_STREAM = 0x010000000100000000000000000000001EB5963500000000BB010000000000007B01000000000000380200183800000004000A0000000000000000000000001A070000005BBEDF00A5A20000EA00000000000000EA00000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000140000000000804000006A4300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F0000000000000008000000000000001000140000006A43000000000000803FDC070000040000
GO
/****** Object:  Statistic [_WA_Sys_00000005_220B0B18]     ******/
CREATE STATISTICS [_WA_Sys_00000005_220B0B18] ON [dbo].[diem]([phongthi]) WITH STATS_STREAM = 0x0100000001000000000000000000000001AA4063000000001802000000000000D801000000000000380200003800000004000A00000000000000000000000000070000005BBEDF00A5A20000EA00000000000000EA00000000000000000000000000803E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000400000001000000140000000000804000006A4300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000007C00000000000000200000000000000037000000000000004E0000000000000065000000000000001000140000007042000000000000803F010000000400001000140000007042000000000000803F020000000400001000140000007042000000000000803F030000000400001000140000005842000000000000803F04000000040000
GO
/****** Object:  Statistic [PK_diem]     ******/
UPDATE STATISTICS [dbo].[diem]([PK_diem]) WITH STATS_STREAM = 0x0100000001000000000000000000000028EC899700000000FE0C000000000000BE0C00000000000038038ADD3800000004000A00000000000000000000000000070000007013DF00A5A200005E000000000000005E0000000000000000000000414C2E3C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005E0000005E0000000100000014000000000080400000BC420000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000620B000000000000F00200000000000007030000000000001E0300000000000035030000000000004C0300000000000063030000000000007A030000000000009103000000000000A803000000000000BF03000000000000D603000000000000ED0300000000000004040000000000001B0400000000000032040000000000004904000000000000600400000000000077040000000000008E04000000000000A504000000000000BC04000000000000D304000000000000EA04000000000000010500000000000018050000000000002F0500000000000046050000000000005D0500000000000074050000000000008B05000000000000A205000000000000B905000000000000D005000000000000E705000000000000FE0500000000000015060000000000002C0600000000000043060000000000005A06000000000000710600000000000088060000000000009F06000000000000B606000000000000CD06000000000000E406000000000000FB0600000000000012070000000000002907000000000000400700000000000057070000000000006E0700000000000085070000000000009C07000000000000B307000000000000CA07000000000000E107000000000000F8070000000000000F0800000000000026080000000000003D0800000000000054080000000000006B0800000000000082080000000000009908000000000000B008000000000000C708000000000000DE08000000000000F5080000000000000C0900000000000023090000000000003A09000000000000510900000000000068090000000000007F090000000000009609000000000000AD09000000000000C409000000000000DB09000000000000F209000000000000090A000000000000200A000000000000370A0000000000004E0A000000000000650A0000000000007C0A000000000000930A000000000000AA0A000000000000C10A000000000000D80A000000000000EF0A000000000000060B0000000000001D0B000000000000340B0000000000004B0B000000000000100014000000803F000000000000803FB5010000040000100014000000803F000000000000803FB6010000040000100014000000803F000000000000803FB7010000040000100014000000803F000000000000803FB8010000040000100014000000803F000000000000803FB9010000040000100014000000803F000000000000803FBA010000040000100014000000803F000000000000803FBB010000040000100014000000803F000000000000803FBC010000040000100014000000803F000000000000803FBD010000040000100014000000803F000000000000803FBE010000040000100014000000803F000000000000803FBF010000040000100014000000803F000000000000803FC0010000040000100014000000803F000000000000803FC1010000040000100014000000803F000000000000803FC2010000040000100014000000803F000000000000803FC3010000040000100014000000803F000000000000803FC4010000040000100014000000803F000000000000803FC5010000040000100014000000803F000000000000803FC6010000040000100014000000803F000000000000803FC7010000040000100014000000803F000000000000803FC8010000040000100014000000803F000000000000803FC9010000040000100014000000803F000000000000803FCA010000040000100014000000803F000000000000803FCB010000040000100014000000803F000000000000803FCC010000040000100014000000803F000000000000803FCD010000040000100014000000803F000000000000803FCE010000040000100014000000803F000000000000803FCF010000040000100014000000803F000000000000803FD0010000040000100014000000803F000000000000803FD1010000040000100014000000803F000000000000803FD2010000040000100014000000803F000000000000803FD3010000040000100014000000803F000000000000803FD4010000040000100014000000803F000000000000803FD5010000040000100014000000803F000000000000803FD6010000040000100014000000803F000000000000803FD7010000040000100014000000803F000000000000803FD8010000040000100014000000803F000000000000803FD9010000040000100014000000803F000000000000803FDA010000040000100014000000803F000000000000803FDB010000040000100014000000803F000000000000803FDC010000040000100014000000803F000000000000803FDD010000040000100014000000803F000000000000803FDE010000040000100014000000803F000000000000803FDF010000040000100014000000803F000000000000803FE0010000040000100014000000803F000000000000803FE1010000040000100014000000803F000000000000803FE2010000040000100014000000803F000000000000803FE3010000040000100014000000803F000000000000803FE4010000040000100014000000803F000000000000803FE5010000040000100014000000803F000000000000803FE6010000040000100014000000803F000000000000803FE7010000040000100014000000803F000000000000803FE8010000040000100014000000803F000000000000803FE9010000040000100014000000803F000000000000803FEA010000040000100014000000803F000000000000803FEB010000040000100014000000803F000000000000803FEC010000040000100014000000803F000000000000803FED010000040000100014000000803F000000000000803FEE010000040000100014000000803F000000000000803FEF010000040000100014000000803F000000000000803FF0010000040000100014000000803F000000000000803FF1010000040000100014000000803F000000000000803FF2010000040000100014000000803F000000000000803FF3010000040000100014000000803F000000000000803FF4010000040000100014000000803F000000000000803FF5010000040000100014000000803F000000000000803FF6010000040000100014000000803F000000000000803FF7010000040000100014000000803F000000000000803FF8010000040000100014000000803F000000000000803FF9010000040000100014000000803F000000000000803FFA010000040000100014000000803F000000000000803FFB010000040000100014000000803F000000000000803FFC010000040000100014000000803F000000000000803FFD010000040000100014000000803F000000000000803FFE010000040000100014000000803F000000000000803FFF010000040000100014000000803F000000000000803F00020000040000100014000000803F000000000000803F01020000040000100014000000803F000000000000803F02020000040000100014000000803F000000000000803F03020000040000100014000000803F000000000000803F04020000040000100014000000803F000000000000803F05020000040000100014000000803F000000000000803F06020000040000100014000000803F000000000000803F07020000040000100014000000803F000000000000803F08020000040000100014000000803F000000000000803F09020000040000100014000000803F000000000000803F0A020000040000100014000000803F000000000000803F0B020000040000100014000000803F000000000000803F0C020000040000100014000000803F000000000000803F0D020000040000100014000000803F000000000000803F0E020000040000100014000000803F000000000000803F0F020000040000100014000000803F000000000000803F10020000040000100014000000803F000000000000803F11020000040000100014000000803F000000000000803F12020000040000, ROWCOUNT = 314, PAGECOUNT = 2
GO
/****** Object:  Statistic [_WA_Sys_00000002_59C55456]     ******/
CREATE STATISTICS [_WA_Sys_00000002_59C55456] ON [dbo].[doituong]([tendoituong]) WITH STATS_STREAM = 0x01000000010000000000000000000000447E12700000000063100000000000002310000000000000E7020000E7000000FFFF00000000000008D0003400000000070000000C4C360189A2000008000000000000000800000000000000000000000000003E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000080000000100000010000000006092430000004100000000006092430000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000001E0A000000000000BF0E0000000000004000000000000000E7010000000000006A03000000000000D703000000000000380500000000000087050000000000002E070000000000007708000000000000300010000000803F000000000000803F0400000100A70143006F006E0020006C006900C71E740020007300290120003B0020002B00200043006F006E00200074006800B001A1016E0067002000620069006E00680020006D00A51E740020007300E91E630020006C0061006F0020001101D91E6E0067002000380031002500200074007200DF1E20006C00EA006E003B0020002B00200043006F006E0020006200C71E6E0068002000620069006E00680020006D00A51E740020007300E91E630020006C0061006F0020001101D91E6E0067002000380031002500200074006E003B002B00200043006F006E0020006300E71E610020004200E00020006D00B91E200056006900C71E740020004E0061006D00200041006E00680020006800F9006E0067002C00200063006F006E0020006300E71E6100200041006E00680020006800F9006E00670020006C00F11E630020006C00B001E31E6E00670020007600690120007400720061006E0067002C00200063006F006E0020006300E71E6100200041006E00680020006800F9006E00670020006C0061006F0020001101D91E6E0067002E00300010000000803F000000000000803F0400000100830143006F006E00200074006800B001A1016E0067002000620069006E00680020006D00A51E740020007300E91E630020006C0061006F0020001101D91E6E00670020006400B001DB1E690020003800310025003B0020002B0043006F006E0020006200C71E6E0068002000620069006E00680020006D00A51E740020007300E91E630020006C0061006F0020001101D91E6E00670020006400B001DB1E690020003800310025003B0020002B00200043006F006E0020006300E71E610020006E006700B001DD1E690020006300F300200074006800BB1E200063006800E91E6E00670020006E006800AD1E6E0020001101B001E31E630020006800B001DF1E6E006700200063006800ED006E00680020007300E1006300680020006E006800B001200074006800B001A1016E0067002000620069006E00680020006D00A51E740020007300E91E630020006C0061006F0020001101D91E6E00670020006400B001DB1E69002000380031002500300010000000803F000000000000803F04000001006D004300F4006E00670020006400E2006E00200056006900C71E740020004E0061006D0020006C00E00020006E006700B001DD1E690020006400E2006E0020007400D91E63002000740068006900C31E750020007300D11E300010000000803F000000000000803F040000010061014300F4006E00670020006E006800E2006E002000B001750020007400FA00200074007200F11E6300200074006900BF1E700020007300A31E6E00200078007500A51E740020001101E30020006C00E0006D00200076006900C71E630020006C006900EA006E0020007400E51E63002000350020006E0003016D00200074007200DF1E20006C00EA006E002000740072006F006E00670020001101F30020006300F3002000320020006E0003016D00200074007200DF1E20006C00EA006E0020006C00E0002000630068006900BF1E6E002000730029012000740068006900200011017500610020001101B001E31E630020006300A51E700020007400C91E6E006800200074007200DF1E20006C00EA006E0020006300F4006E00670020006E006800AD1E6E0020007600E00020006300A51E700020006200B11E6E00670020006B00680065006E002E00300010000000803F000000000000803F04000001004F006B006800F4006E006700200070006800A31E690020001101D11E690020007400B001E31E6E0067002000B0017500200074006900EA006E00300010000000803F000000000000803F0400000100A7014E006700B001DD1E690020006C0061006F0020001101D91E6E0067002000B001750020007400FA002000740068007500D91E630020007400A51E740020006300A31E20006300E1006300200074006800E0006E006800200070006800A71E6E0020006B0069006E00680020007400BF1E20001101B001E31E630020007400EB1E20006300A51E700020007400C91E6E0068002C00200074006800E0006E006800200070006800D11E2C0020004200D91E200074007200DF1E20006C00EA006E0020006300F4006E006800D91E20006C00FD002C0020006B00F91E2000740068007500AD1E7400200076006900EA006E002C00200079002000730029012C0020006400B001E31E630020007300290120007400720075006E00670020006300A51E700020001101E30020006300F4006E00670020007400E100630020001101E71E2000330020006E0003016D00200074007200DF1E20006C00EA006E00200074006800690020007600E0006F0020006300E100630020006E006700E0006E006800200079002C0020006400B001E31E6300300010000000803F000000000000803F040000010049015400680061006E00680020006E006900EA006E002000780075006E0067002000700068006F006E00670020007400AD1E700020007400720075006E00670020001101B001E31E630020006300ED1E20001101690020006800CD1E63003B0020002B00200051007500E2006E0020006E006800E2006E002C0020006300F4006E006700200061006E0020006E006800E2006E0020006400E2006E0020007400A11E690020006E006700690120001101B001E31E630020006300ED1E20001101690020006800CD1E630020006300F300200074006800DD1E690020006700690061006E00200070006800E51E630020007600E51E20006400B001DB1E6900200032003400200074006800E1006E00670020006B006800F4006E0067002000DF1E20006B006800750020007600F11E630020003100300010000000803F000000000000803F0400000100A70154006800B001A1016E0067002000620069006E0068002C0020006200C71E6E0068002000620069006E0068002C0020006E006700B001DD1E690020006300F300200074006800BB1E200063006800E91E6E00670020006E006800AD1E6E0020001101B001E31E630020006800B001DF1E6E006700200063006800ED006E00680020007300E1006300680020006E006800B001200074006800B001A1016E0067002000620069006E0068003B0020002B0051007500E2006E0020006E006800E2006E002C00200063007500E2006E0020006E006800E2006E002C0020006300F4006E006700200061006E0020006E006800E2006E0020006400E2006E00200068006F00E0006E00200074006800E0006E00680020006E00670068002901610020007600E51E20001101E300200078007500A51E740020006E006700690120006300F300200074006800DD1E690020006700690061006E00200070006800E51E630020007600E51E20007400EB1E200032003400200074006800E1006E006700200074007200DF1E20006C00EA006E002E00FF01000000000000000800000008000000280000002800000000000000000000001B02000043006F006E0020006C006900C71E740020007300290120003B0020002B00200043006F006E00200074006800B001A1016E0067002000620069006E00680020006D00A51E740020007300E91E63002000E31E6E00670020007600690120007400720061006E0067002C00200063006F006E0020006300E71E6100200041006E00680020006800F9006E00670020006C0061006F0020001101D91E6E0067002E0074006800B001A1016E0067002000620069006E00680020006D00A51E740020007300E91E630020006C0061006F0020001101D91E6E00670020006400B001DB1E69002000380031006800B001200074006800B001A1016E0067002000620069006E00680020006D00A51E740020007300E91E630020006C0061006F0020001101D91E6E00670020006400B001DB1E69002000380031002500F4006E00670020006400E2006E00200056006900C71E740020004E0061006D0020006C00E00020006E006700B001DD1E690020006400E2006E0020007400D91E63002000740068006900C31E750020007300D11E6E006800E2006E002000B001750020007400FA00200074007200F11E6300200074006900BF1E700020007300A31E6E00200078007500A51E740020001101E30020006C00E0007400C91E6E006800200074007200DF1E20006C00EA006E0020006300F4006E00670020006E006800AD1E6E0020007600E00020006300A51E700020006200B11E6E00670020006B00680065006E002E006B006800F4006E006700200070006800A31E690020001101D11E690020007400B001E31E6E0067002000B0017500200074006900EA006E004E006700B001DD1E690020006C0061006F0020001101D91E6E0067002000B001750020007400FA002000740068007500D91E630020007400A51E740020006300A31E20006300E10063002000740068002000330020006E0003016D00200074007200DF1E20006C00EA006E00200074006800690020007600E0006F0020006300E100630020006E006700E0006E006800200079002C0020006400B001E31E63005400680061006E00680020006E006900EA006E002000780075006E0067002000700068006F006E00670020007400AD1E700020007400720075006E00670020001101B001E31E630020006300ED1E2000200070006800E51E630020007600E51E20006400B001DB1E6900200032003400200074006800E1006E00670020006B006800F4006E0067002000DF1E20006B006800750020007600F11E630020003100B001A1016E0067002000620069006E0068002C0020006200C71E6E0068002000620069006E0068002C0020006E006700B001DD1E690020006300F300200074006800BB1E200063006800E91EF300200074006800DD1E690020006700690061006E00200070006800E51E630020007600E51E20007400EB1E200032003400200074006800E1006E006700200074007200DF1E20006C00EA006E002E000D0000004000000000C001000000C003010000814C040000014C50000040049C00008126A00000014BC60000811C11010081502D010040027D0100814E7F0100014ECD010000
GO
/****** Object:  Statistic [_WA_Sys_00000003_59C55456]     ******/
CREATE STATISTICS [_WA_Sys_00000003_59C55456] ON [dbo].[doituong]([diemut]) WITH STATS_STREAM = 0x01000000010000000000000000000000FA69C591000000000502000000000000C5010000000000003E0200003E0000000800350000000000000000000000000007000000AC2BBB00A3A100000800000000000000080000000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000018000000000000410000004100000000000000410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000006900000000000000180000000000000033000000000000004E00000000000000100018000000803F000000000000803F00000000000000000400001000180000004040000000000000803F000000000000F03F0400001000180000008040000000000000803F0000000000000040040000
GO
/****** Object:  Statistic [PK_doituong]     ******/
UPDATE STATISTICS [dbo].[doituong]([PK_doituong]) WITH STATS_STREAM = 0x010000000100000000000000000000001893E3E100000000AD020000000000006D02000000000000EF030000EF000000040000000000000008D000340000000007000000E7686C0199A10000080000000000000008000000000000000000803F0000003E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000050000000100000014000000000080400000004100000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000009B00000000000000090100000000000028000000000000003F0000000000000056000000000000006D000000000000008400000000000000100014000000803F000000000000803F30003000040000100014000000803F000000000000803F30003100040000100014000000803F0000803F0000803F30003300040000100014000000803F0000803F0000803F30003500040000100014000000803F0000803F0000803F30003700040000FF0100000000000000080000000800000028000000280000000000000000000000090000003000300031003200330034003500360037000A000000400000000040010000008101010000810102000081010300008101040000810105000081010600008101070000010108000000, ROWCOUNT = 8, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000001_370627FE]     ******/
CREATE STATISTICS [_WA_Sys_00000001_370627FE] ON [dbo].[giaodien]([chon]) WITH STATS_STREAM = 0x01000000010000000000000000000000DE6A26B400000000BB010000000000007B01000000000000380200003800000004000A000000000000000000330034000700000040ABDE00A6A2000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F000000000000000800000000000000100014000000803F000000000000803F00000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000002_4D2A7347]     ******/
CREATE STATISTICS [_WA_Sys_00000002_4D2A7347] ON [dbo].[huyen]([matinh]) WITH STATS_STREAM = 0x01000000010000000000000000000000CE9B3B47000000003E05000000000000FE04000000000000380200003800000004000A00000000000000000000000000070000007938D80073A200006D010000000000006D01000000000000000000008988083D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E0000001E0000000100000014000000000080400080B6430000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000A203000000000000F00000000000000007010000000000001E0100000000000035010000000000004C0100000000000063010000000000007A010000000000009101000000000000A801000000000000BF01000000000000D601000000000000ED0100000000000004020000000000001B0200000000000032020000000000004902000000000000600200000000000077020000000000008E02000000000000A502000000000000BC02000000000000D302000000000000EA02000000000000010300000000000018030000000000002F0300000000000046030000000000005D0300000000000074030000000000008B030000000000001000140000007041000000000000803F01000000040000100014000000A841000000000000803F020000000400001000140000007041000000000000803F030000000400001000140000000041000000000000803F040000000400001000140000004041000000000000803F050000000400001000140000006041000000000000803F06000000040000100014000000E040000000000000803F070000000400001000140000002041000000000000803F08000000040000100014000000E040000000000000803F090000000400001000140000004041000000000000803F0A0000000400001000140000001041000000000000803F0B0000000400001000140000002041000000000000803F0C0000000400001000140000002041000000000000803F0D0000000400001000140000004041000000000000803F0E0000000400001000140000004041000000000000803F0F0000000400001000140000002041000000000000803F100000000400001000140000006041000000000000803F110000000400001000140000003041000000000000803F120000000400001000140000001041000000000000803F130000000400001000140000007041000000000000803F140000000400001000140000005041000000000000803F150000000400001000140000003041000000000000803F160000000400001000140000004041000000000000803F17000000040000100014000000E040000000000000803F180000000400001000140000003041000000000000803F190000000400001000140000001041000000000000803F1A0000000400001000140000001041000000000000803F1B000000040000100014000000E041000000000000803F1C000000040000100014000000A041000000000000803F1D0000000400001000140000004041000000000000803F1E000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000003_4D2A7347]     ******/
CREATE STATISTICS [_WA_Sys_00000003_4D2A7347] ON [dbo].[huyen]([mahuyen]) WITH STATS_STREAM = 0x0100000001000000000000000000000042589818000000000005000000000000C00400000000000038030A723800000004000A0000000000000000003F00008007000000A2F347017CA200006D010000000000006D01000000000000000000002549123D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0000001C0000000100000014000000000080400080B64300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000006403000000000000E000000000000000F7000000000000000E0100000000000025010000000000003C0100000000000053010000000000006A0100000000000081010000000000009801000000000000AF01000000000000C601000000000000DD01000000000000F4010000000000000B0200000000000022020000000000003902000000000000500200000000000067020000000000007E020000000000009502000000000000AC02000000000000C302000000000000DA02000000000000F10200000000000008030000000000001F0300000000000036030000000000004D03000000000000100014000000F041000000000000803F00000000040000100014000000F041000000000000803F01000000040000100014000000F041000000000000803F02000000040000100014000000F041000000000000803F03000000040000100014000000F041000000000000803F04000000040000100014000000F041000000000000803F05000000040000100014000000F041000000000000803F06000000040000100014000000D841000000000000803F07000000040000100014000000D041000000000000803F08000000040000100014000000B041000000000000803F090000000400001000140000008041000000000000803F0A0000000400001000140000006041000000000000803F0B0000000400001000140000002041000000000000803F0C000000040000100014000000C040000000000000803F0D000000040000100014000000E040000000000000803F0E0000000400001000140000004040000000000000803F0F0000000400001000140000004040000000000000803F100000000400001000140000004040000000000000803F110000000400001000140000004040000000000000803F120000000400001000140000004040000000000000803F130000000400001000140000000040000000000000803F140000000400001000140000000040000000000000803F150000000400001000140000000040000000000000803F16000000040000100014000000803F000000000000803F170000000400001000140000000040000000000000803F18000000040000100014000000803F000000000000803F19000000040000100014000000803F000000000000803F1A000000040000100014000000803F000000000000803F1B000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000004_4D2A7347]     ******/
CREATE STATISTICS [_WA_Sys_00000004_4D2A7347] ON [dbo].[huyen]([tenhuyen]) WITH STATS_STREAM = 0x010000000100000000000000000000000BE14065000000002126000000000000E125000000000000E70283DDE7000000640000000000000008D000340100000007000000B1F347017CA200006D010000000000006D010000000000000000803F74FE453B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B5000000B5000000010000001000000062C488410080B6430000000062C48841000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000ED210000000000007D24000000000000A805000000000000CF05000000000000FA0500000000000021060000000000004A0600000000000075060000000000009806000000000000BD06000000000000E0060000000000000507000000000000260700000000000049070000000000006E070000000000009D07000000000000C207000000000000E7070000000000001208000000000000390800000000000062080000000000008908000000000000B208000000000000D508000000000000FE0800000000000023090000000000004C090000000000007909000000000000A009000000000000C909000000000000F209000000000000130A0000000000003C0A0000000000005F0A000000000000820A000000000000A50A000000000000D00A000000000000F90A000000000000200B000000000000470B0000000000006E0B000000000000970B000000000000BE0B000000000000E30B0000000000000C0C000000000000330C0000000000005A0C000000000000810C000000000000A60C000000000000CD0C000000000000F00C000000000000170D000000000000460D000000000000690D0000000000008E0D000000000000B50D000000000000D80D000000000000FF0D000000000000260E0000000000004F0E000000000000800E000000000000AB0E000000000000D00E000000000000F90E000000000000240F0000000000004B0F000000000000700F000000000000970F000000000000BC0F000000000000E50F0000000000000C1000000000000027100000000000004A100000000000006D100000000000009410000000000000C110000000000000EC1000000000000015110000000000003A1100000000000061110000000000008A11000000000000AF11000000000000D411000000000000FD11000000000000221200000000000047120000000000006C120000000000009B12000000000000C212000000000000E9120000000000000C13000000000000311300000000000058130000000000007F13000000000000A813000000000000D113000000000000001400000000000027140000000000004E140000000000007714000000000000A014000000000000C914000000000000F01400000000000015150000000000003C1500000000000061150000000000009215000000000000BB15000000000000E21500000000000013160000000000003A1600000000000061160000000000008C16000000000000B916000000000000DC1600000000000003170000000000002A170000000000004F170000000000007817000000000000A317000000000000C817000000000000EF1700000000000014180000000000003D1800000000000062180000000000008718000000000000B018000000000000D518000000000000FA1800000000000021190000000000004E1900000000000077190000000000009E19000000000000C519000000000000F019000000000000191A000000000000421A000000000000751A000000000000A01A000000000000CB1A000000000000F81A000000000000211B000000000000481B0000000000007D1B000000000000A41B000000000000D31B000000000000FE1B0000000000002D1C0000000000005A1C000000000000811C000000000000AC1C000000000000D51C000000000000F61C000000000000191D000000000000481D000000000000771D000000000000A41D000000000000CF1D000000000000F81D000000000000231E000000000000521E0000000000007F1E000000000000AE1E000000000000D91E000000000000021F000000000000311F000000000000641F000000000000911F000000000000B61F000000000000DF1F00000000000006200000000000002B20000000000000522000000000000079200000000000009C20000000000000C120000000000000E2200000000000000921000000000000302100000000000059210000000000007C21000000000000A121000000000000C621000000000000300010000000803F000000000000803F0400000100270020004200A31E6F0020004C00E2006D00300010000000803F000000400000803F04000001002B00200048006F00B11E6E006700200048006F00E100300010000000803F0000803F0000803F0400000100270020004E0061006D0020001001E0006E00300010000000803F0000803F0000803F0400000100290020005600690120005100750061006E006700300010000000803F0000803F0000803F04000001002B0020005900EA006E00200054006800E0006E006800300010000000803F0000803F0000803F0400000100230041006E0020004C00E3006F00300010000000803F0000803F0000803F0400000100250041006E00680020005300A1016E00300010000000803F000000000000803F0400000100230042006100200043006800BD1E300010000000803F000000000000803F040000010025004200610020001001EC006E006800300010000000803F0000803F0000803F040000010021004200610020005600EC00300010000000803F0000803F0000803F040000010023004200AF1E630020004D00EA00300010000000803F0000803F0000803F040000010025004200AF1E630020005300A1016E00300010000000803F0000803F0000803F04000001002F004200A11E6300680020004C006F006E006700200056002901300010000000803F000000400000803F040000010025004200A31E6F0020005900EA006E00300010000000803F000000000000803F040000010025004200E100740020005800E1007400300010000000803F000000000000803F04000001002B004200EC006E006800200043006800E1006E006800300010000000803F000000000000803F040000010027004200EC006E0068002000470069006100300010000000803F000000000000803F040000010029004200EC006E00680020004C006900EA007500300010000000803F000000000000803F040000010027004200EC006E00680020004C00E51E6300300010000000803F0000803F0000803F040000010029004300A91E6D00200047006900E0006E006700300010000000803F0000803F0000803F040000010023004300A91E6D0020004C00C71E300010000000803F0000803F0000803F040000010029004300A91E6D002000580075007900EA006E00300010000000803F0000803F0000803F04000001002500430061006E0020004C00D91E6300300010000000803F0000803F0000803F04000001002900430061006F002000500068006F006E006700300010000000803F0000803F0000803F04000001002D0063006100740020007400720061006E00670031003200300010000000803F0000803F0000803F0400000100270043006800690020004C0003016E006700300010000000803F0000803F0000803F04000001002900430068006900EA006D00200048006F00E100300010000000803F000000000000803F0400000100290043006800B001A1016E00670020004D00F91E300010000000803F000000000000803F040000010021004300F40020005400F400300010000000803F000000000000803F0400000100290043006F006E00200043007500F4006E006700300010000000803F000000000000803F040000010023004300E71E2000430068006900300010000000803F000000000000803F040000010023001001E00020004200AF1E6300300010000000803F000000000000803F040000010023001001A11E690020005400EB1E300010000000803F0000803F0000803F04000001002B00100161006E00200050006800B001E31E6E006700300010000000803F000000000000803F0400000100290044006900C51E6E00200043006800E2007500300010000000803F000000000000803F040000010027001001CB1E6E006800200048006F00E000300010000000803F000000000000803F040000010027001001EC006E00680020004C00AD1E7000300010000000803F000000000000803F040000010027001001F40020004C00B001A1016E006700300010000000803F000000000000803F0400000100290010016F0061006E0020004800F9006E006700300010000000803F000000000000803F040000010027001001F4006E006700200041006E006800300010000000803F000000000000803F040000010025001001D11E6E006700200010016100300010000000803F000000000000803F040000010029001001F4006E00670020004800B0016E006700300010000000803F0000803F0000803F040000010027001001F4006E00670020005300A1016E00300010000000803F0000803F0000803F040000010027001001D31E6E0067002000560003016E00300010000000803F0000803F0000803F04000001002700440075007900200054006900EA006E00300010000000803F0000803F0000803F0400000100250047006900610020006C00E2006D00300010000000803F0000803F0000803F04000001002700470069006100200056006900C51E6E00300010000000803F0000803F0000803F040000010023004800A11E200048006F00E000300010000000803F0000803F0000803F040000010027004800E00020005400720075006E006700300010000000803F0000803F0000803F04000001002F0048006100690020004200E000200054007200B0016E006700300010000000803F0000803F0000803F040000010023004800A31E690020004800E000300010000000803F0000803F0000803F040000010025004800E0006D0020005900EA006E00300010000000803F0000803F0000803F0400000100270048006900C71E7000200048006F00E000300010000000803F0000803F0000803F0400000100230048006F00610020004C00B001300010000000803F0000803F0000803F0400000100270048006F00E000690020001001E91E6300300010000000803F0000803F0000803F0400000100270048006F00E0006E00680020004200D31E300010000000803F0000803F0000803F040000010029004800D31E6E00670020004200E0006E006700300010000000803F000040410000803F04000001003100480075007900C71E6E0020005000E100630020004E00B71E6D00300010000000803F000000000000803F04000001002B004B0068006F00E1006900200043006800E2007500300010000000803F000000000000803F040000010025004B006900BF1E6E00200041006E00300010000000803F000000000000803F040000010029004B006900BF1E6E002000540068007500F51E300010000000803F000000000000803F04000001002B004B006900BF1E6E0020005800B001A1016E006700300010000000803F000000000000803F040000010027004B0069006D0020004200A31E6E006700300010000000803F000000000000803F040000010025004B0069006D0020004200F4006900300010000000803F000000000000803F040000010027004B0069006D0020001001D91E6E006700300010000000803F000000000000803F040000010025004B0069006D0020005300A1016E00300010000000803F000000000000803F040000010029004B0069006D00200054006800E0006E006800300010000000803F000000000000803F040000010027004B0069006E00680020004D00F4006E00300010000000803F000000000000803F04000001001B006B006B00300010000000803F000000000000803F040000010023004B00F31E200041006E0068003000100000000040000000000000803F040000010023004B00F31E20005300A1016E00300010000000803F000000000000803F040000010027004C00A11E63002000540068007500F71E300010000000803F000000000000803F04000001002D004C0061006E0067002000200043006800E1006E0068003000100000008040000000000000803F04000001002B004C00A11E6E00670020004700690061006E006700300010000000803F000000000000803F040000010029004C00AD1E7000200054006800A11E63006800300010000000803F000000000000803F040000010025004C00EA00200043006800E2006E00300010000000803F000000000000803F040000010027004C00D91E630020004200EC006E006800300010000000803F000000000000803F040000010029004C006F006E006700200042006900EA006E00300010000000803F000000000000803F040000010025004C00E51E630020004E0061006D00300010000000803F0000803F0000803F040000010025004C00E51E630020005900EA006E003000100000000040000000000000803F040000010029004C00B001A1016E00670020005300A1016E00300010000000803F0000803F0000803F040000010025004C00FD0020004E006800E2006E00300010000000803F0000803F0000803F040000010025004D006100690020005300A1016E00300010000000803F0000803F0000803F040000010025004D00E8006F0020005600A11E6300300010000000803F0000803F0000803F04000001002F004D00F9002000430061006E006700200043006800A31E6900300010000000803F0000803F0000803F040000010027004D00B001DD1E6E00670020004C006100300010000000803F0000803F0000803F040000010027004D00B001DD1E6E00670020005400E800300010000000803F0000803F0000803F040000010023004D00F91E20004800E0006F00300010000000803F0000803F0000803F040000010025004E0061002000480061006E006700300010000000803F0000803F0000803F040000010027004E0061006D00200054007200F11E6300300010000000803F0000803F0000803F040000010027004E0067006800690020004C00D91E6300300010000000803F0000803F0000803F040000010029004E00670068002901610020001001E0006E00300010000000803F0000803F0000803F040000010029004E006700F4002000510075007900C11E6E00300010000000803F0000803F0000803F04000001002F004E006700690120004800E0006E00680020005300A1016E00300010000000803F0000803F0000803F040000010027004E0068006F0020005100750061006E00300010000000803F0000803F0000803F040000010027004E006800B001200058007500E2006E00300010000000803F0000803F0000803F040000010029004E00F4006E00670020004300D11E6E006700300010000000803F0000803F0000803F04000001002900500068006F006E006700200054006800D51E300010000000803F0000803F0000803F0400000100290050006800FA0020004C00B001A1016E006700300010000000803F0000803F0000803F0400000100270050006800F90020004E0069006E006800300010000000803F0000803F0000803F0400000100250050006800F90020005900EA006E00300010000000803F0000803F0000803F0400000100270050006800FA006300200054006800CD1E300010000000803F0000803F0000803F0400000100250051007500AD1E6E00200042006100300010000000803F0000803F0000803F0400000100310051007500AD1E6E0020004200EC006E00680020005400E2006E00300010000000803F0000803F0000803F0400000100290051007500AD1E6E00200043006800ED006E00300010000000803F0000803F0000803F040000010027005100750061006E00200048006F00E100300010000000803F0000803F0000803F0400000100310051007500AD1E6E0020004D00B001DD1E69002000480061006900300010000000803F0000803F0000803F0400000100270051007500AD1E6E0020005300E1007500300010000000803F0000803F0000803F0400000100270051007500AD1E6E0020005400E1006D00300010000000803F0000803F0000803F04000001002B005100750061006E00670020004200EC006E006800300010000000803F0000803F0000803F04000001002D0051007500A31E6E00670020005800B001A1016E006700300010000000803F0000803F0000803F0400000100230051007500BF1E20005600F500300010000000803F000000000000803F0400000100270051007500D11E630020004F0061006900300010000000803F000000000000803F0400000100270051007500F31E200043006800E2007500300010000000803F000000000000803F0400000100250051007500F31E20004800E31E7000300010000000803F000000000000803F0400000100290051007500F31E6E00680020004C00B0017500300010000000803F000000000000803F04000001002B0051007500F31E6E00680020004E00680061006900300010000000803F000000400000803F04000001002500530069006E00680020004800D31E300010000000E841000000000000803F040000010027005300DF1E200047004400260010015400300010000000803F0000803F0000803F040000010025005300DF1E47004400260010015400300010000000803F0000803F0000803F040000010029005300A1016E0020004400B001A1016E006700300010000000803F0000803F0000803F040000010025005300F4006E00670020004D00E300300010000000803F0000803F0000803F04000001002500540061006D0020001001A31E6F00300010000000803F0000803F0000803F04000001002900540061006D0020001001B001DD1E6E006700300010000000803F0000803F0000803F040000010025005400E2006E0020004C00A11E6300300010000000803F0000803F0000803F040000010025005400E2006E0020005900EA006E00300010000000803F0000803F0000803F0400000100270054006800A11E63006800200041006E00300010000000803F0000803F0000803F04000001002D0054006800A11E63006800200054006800E0006E006800300010000000803F0000803F0000803F0400000100290054006800E10069002000540068007500F51E300010000000803F0000803F0000803F040000010027005400680061006E006800200042006100300010000000803F0000803F0000803F040000010027005400680061006E00680020004800E000300010000000803F0000803F0000803F04000001002B005400680061006E00680020004C006900EA006D00300010000000803F0000803F0000803F040000010029005400680061006E00680020004F0061006900300010000000803F0000803F0000803F040000010029005400680061006E006800200054007200EC00300010000000803F0000803F0000803F0400000100330054006800CB1E20007800E30020004200AF1E630020004B00A11E6E00300010000000803F000040400000803F04000001002B00540068007500AD1E6E00200043006800E2007500300010000000803F0000803F0000803F04000001002B0054006800B001DD1E6E00670020005400ED006E00300010000000803F0000803F0000803F04000001002D00540068007500F71E20004E00670075007900EA006E003000100000000040000000400000803F0400000100290054006900EA006E0020004C00E3006E006700300010000000803F0000803F0000803F0400000100270054006900EA006E0020005900EA006E00300010000000803F0000803F0000803F04000001003500540050002000200054006800E100690020004E00670075007900EA006E00300010000000803F0000803F0000803F040000010027005400500020002000560069006E006800300010000000803F0000803F0000803F04000001002F005400500020004800A31E690020004400B001A1016E006700300010000000803F0000803F0000803F04000001002B005400500020004C00E0006F002000430061006900300010000000803F0000803F0000803F04000001002F0054005000200054006800E100690020004200EC006E006800300010000000803F0000803F0000803F04000001002D00540050005400680061006E006800200048006F00E100300010000000803F0000803F0000803F0400000100270054007200A11E6D0020005400DD1E7500300010000000803F0000803F0000803F04000001002B0054007200E0006E00670020001001CB1E6E006800300010000000803F0000803F0000803F0400000100290054007200F11E630020004E0069006E006800300010000000803F0000803F0000803F040000010021005400E91E20004B00F31E300010000000803F0000803F0000803F040000010023005400EB1E20005300A1016E00300010000000803F0000803F0000803F04000001002F005400580020002000430061006F0020004200B11E6E006700300010000000803F0000803F0000803F04000001002F0054005800200020004D00F3006E00670020004300E1006900300010000000803F0000803F0000803F04000001002D005400580020004200AF1E630020004E0069006E006800300010000000803F0000803F0000803F04000001002B005400580020004300A91E6D00200050006800A31E300010000000803F0000803F0000803F040000010029005400580020001001D31E20005300A1016E00300010000000803F0000803F0000803F04000001002B005400580020004800E0002000540029016E006800300010000000803F0000803F0000803F04000001002F005400580020004800D31E6E00670020004C0029016E006800300010000000803F0000803F0000803F04000001002D005400580020004C0061006900200043006800E2007500300010000000803F0000803F0000803F04000001002F005400580020004E0069006E00680020004200EC006E006800300010000000803F0000803F0000803F04000001002B0054005800200050006800FA00200054006800CD1E300010000000803F0000803F0000803F040000010029005400580020005300A1016E0020004C006100300010000000803F0000803F0000803F04000001002F005400580020005300F4006E00670020004300F4006E006700300010000000803F0000803F0000803F04000001003300540058002000540075007900EA006E0020005100750061006E006700300010000000803F0000803F0000803F04000001002D005400580020005600EC006E00680020005900EA006E00300010000000803F0000803F0000803F04000001002500560003016E0020004200E0006E00300010000000803F0000803F0000803F04000001002900560003016E0020004700690061006E006700300010000000803F0000803F0000803F04000001002700560003016E0020004C00E3006E006700300010000000803F0000803F0000803F04000001002500560003016E0020005900EA006E00300010000000803F0000803F0000803F0400000100270056006900C71E740020005900EA006E00300010000000803F0000803F0000803F04000001002700560029016E00680020004C00D91E6300300010000000803F000040400000803F0400000100230056006901200054006800B001300010000000803F0000803F0000803F040000010025005800ED006E0020004D00A71E6E00300010000000803F0000803F0000803F04000001002100FD0020005900EA006E00300010000000803F0000803F0000803F040000010027005900EA006E00200043006800E2007500300010000000803F0000803F0000803F040000010027005900EA006E002000440069016E006700300010000000803F0000803F0000803F040000010029005900EA006E0020004B006800E1006E006800300010000000803F000040400000803F040000010023005900EA006E0020004D00F400300010000000803F0000803F0000803F040000010025005900EA006E0020005300A1016E00300010000000803F000000000000803F040000010025005900EA006E00200054006800BF1E300010000000803F000000000000803F040000010027005900EA006E002000540068007500F71EFF01000000000000001C0000001B00000028000000280000000000000000000000D900000020004200A31E6F0020004C00E2006D0042006100200043006800BD1EE100740020005800E1007400430061006F0020004C00D91E63001001A11E690020005400EB1EF4006E0067002000540072006900C11E750048006100690020004200E000200054007200B0016E006700F300630020004D00F4006E0075007900C71E6E0020004E006700E2006E0020005300A1016E004B00F31E200041006E0068004C00E51E630020004E0061006D004D00B001DD1E6E00670020004B006800B001A1016E0067004E00670068002901610020001001E0006E0050006800F90020004300EB1E51007500AD1E6E00200043006800ED006E00BF1E2000500068006F006E0067005300DF1E200047004400260010015400F300630020005300A1016E005400E2006E0020005900EA006E00680061006E00680020004D006900C71E6E007500F71E20004E00670075007900EA006E00500020004C00A11E6E00670020005300A1016E00E91E20004B00F31E580020004800E00020004700690061006E0067005300F4006E00670020004300F4006E0067005600CB1E2000580075007900EA006E005900EA006E00200043006800E20075002400000040000000008108000000C001080000810509000001060E00008107140000C0011B000081051C00000109210000C0012A0000810B2B00008106360000010D3C0000810649000081074F0000810C560000810962000081066B0000C002710000810773000001077A0000C00181000081068900000207820000C0018F00008106900000C001960000810897000001099F0000810AA800008104B200004002B600008108B800000109C000008108C900000108D1000000
GO
/****** Object:  Statistic [PK_huyen]     ******/
UPDATE STATISTICS [dbo].[huyen]([PK_huyen]) WITH STATS_STREAM = 0x01000000010000000000000000000000FE26AECB00000000DA010000000000009A010000000000003803D0413800000004000A00000000000000000000140000070000007438D80073A200006D010000000000006D010000000000000000803FFA8C333B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400080B64300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003E0000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F0080B5430000803F6D010000040000, ROWCOUNT = 365, PAGECOUNT = 3
GO
/****** Object:  Statistic [_WA_Sys_00000002_236943A5]     ******/
CREATE STATISTICS [_WA_Sys_00000002_236943A5] ON [dbo].[khuvuc]([tenkv]) WITH STATS_STREAM = 0x01000000010000000000000000000000A9CCF8CB0000000058020000000000001802000000000000E7020000E7000000640000000000000008D000340000803F07000000B66348018EA100000400000000000000040000000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000010000000000010410000804000000040000010410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000006200000000000000B40000000000000010000000000000003900000000000000300010000000803F000000000000803F040000010029004B004800550020005600F01E430020003100300010000000803F000000000000803F040000010029004B004800550020005600F01E430020003200FF01000000020000000400000003000000280000002800000000000000000000000A0000004B004800550020005600F01E430020003100320004000000400000000040080000008101080000010109000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_236943A5]     ******/
CREATE STATISTICS [_WA_Sys_00000003_236943A5] ON [dbo].[khuvuc]([diemcong]) WITH STATS_STREAM = 0x010000000100000000000000000000005AAB1C7700000000940100000000000054010000000000003E02D6E03E0000000800350000000000000000000000000007000000BF6348018EA1000004000000000000000400000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001800000000000000000080400000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [PK_khuvuc]     ******/
UPDATE STATISTICS [dbo].[khuvuc]([PK_khuvuc]) WITH STATS_STREAM = 0x010000000100000000000000000000004E4AA821000000006C020000000000002C02000000000000E7030000E7000000140000000000000008D000340000000007000000DA8947018EA1000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000000000A04100000040000000000000A0410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000006600000000000000C80000000000000010000000000000003B00000000000000300010000000803F000000000000803F04000001002B004B00560031002000200020002000200020002000300010000000803F000000000000803F04000001002B004B00560032002000200020002000200020002000FF0100000000000000020000000200000028000000280000000000000000000000120000004B00560031002000200020002000200020002000320020002000200020002000200020000400000040000000004002000000810802000001080A000000, ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_mamon]     ******/
UPDATE STATISTICS [dbo].[mamon]([PK_mamon]) WITH STATS_STREAM = 0x01000000010000000000000000000000E76CFBAB00000000BB010000000000007B0100000000000038030C023800000004000A000000000000000000FFFFFFFF07000000983EC60092A2000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F000000000000000800000000000000100014000000803F000000000000803F01000000040000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_6166761E]     ******/
CREATE STATISTICS [_WA_Sys_00000002_6166761E] ON [dbo].[maquyen]([ten]) WITH STATS_STREAM = 0x010000000100000000000000000000006AC525CC00000000A7020000000000006702000000000000E7020000E7000000640000000000000008D000340000000007000000003843019EA100000300000000000000030000000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000010000000ABAA8A410000404000000000ABAA8A4100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000091000000000000000301000000000000180000000000000043000000000000007200000000000000300010000000803F000000000000803F04000001002B00610064006D0069006E0020002000200020002000300010000000803F000000000000803F04000001002F0071007500A31E6E0020006C00FD0020006300F9006E006700300010000000803F000000000000803F04000001001F007500730065007200FF01000000000000000300000003000000280000002800000000000000000000001A000000610064006D0069006E002000200020002000200071007500A31E6E0020006C00FD0020006300F9006E0067007500730065007200040000004000000000810A000000810C0A0000010416000000
GO
/****** Object:  Statistic [PK_maquyen]     ******/
UPDATE STATISTICS [dbo].[maquyen]([PK_maquyen]) WITH STATS_STREAM = 0x01000000010000000000000000000000FA9D4608000000001F02000000000000DF01000000000000E7030000E7000000280000000000000008D000340100000007000000BB1743019EA1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000A0410000803F000000000000A04100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000033000000000000007B000000000000000800000000000000300010000000803F000000000000803F04000001002B00610064006D0069006E0020002000200020002000FF01000000000000000100000001000000280000002800000000000000000000000A000000610064006D0069006E0020002000200020002000020000004000000000010A00000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_2DB1C7EE]     ******/
CREATE STATISTICS [_WA_Sys_00000002_2DB1C7EE] ON [dbo].[namthi]([namthi]) WITH STATS_STREAM = 0x01000000010000000000000000000000023B914B000000003A02000000000000FA01000000000000E7020A02E7000000140000000000000008D00034000000000700000030E603014CA2000003000000000000000300000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000010000000000000410000404000000000000000410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000004E00000000000000960000000000000010000000000000002F00000000000000300010000000803F000000000000803F04000001001F0032003000310032003000100000000040000000000000803F04000001001F003200300031003300FF0100000000000000030000000200000028000000280000000000000000000000050000003200300031003200330004000000400000000040030000008101030000020104000000
GO
/****** Object:  Statistic [PK_namthi]     ******/
UPDATE STATISTICS [dbo].[namthi]([PK_namthi]) WITH STATS_STREAM = 0x010000000100000000000000000000001C140AC400000000F901000000000000B901000000000000380300003800000004000A0000000000000000000000000007000000ABCD03014CA200000300000000000000030000000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000000080400000404000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005D0000000000000018000000000000002F000000000000004600000000000000100014000000803F000000000000803FDC070000040000100014000000803F000000000000803FDD070000040000100014000000803F000000000000803FDE070000040000, ROWCOUNT = 9, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_5CA1C101]     ******/
CREATE STATISTICS [_WA_Sys_00000002_5CA1C101] ON [dbo].[nganh]([tennganh]) WITH STATS_STREAM = 0x01000000010000000000000000000000099879EF00000000DA040000000000009A04000000000000E7020000E7000000640000000000000008D0003401000000070000005978C8004BA2000008000000000000000800000000000000000000000000003E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000008000000010000001000000000000B42000000410000000000000B420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000E02000000000000360300000000000040000000000000008100000000000000B200000000000000FD000000000000003A0100000000000073010000000000009801000000000000D101000000000000300010000000803F000000000000803F040000010041004300F4006E00670020004E0067006800C71E200043006800BF1E20005400A11E6F0020004D00E1007900300010000000803F000000000000803F040000010031004300F4006E00670020004E0067006800C71E20004800E0006E00300010000000803F000000000000803F04000001004B004300F4006E00670020004E0067006800C71E20004B00F91E2000540068007500AD1E7400200010016900C71E6E0020005400ED1E300010000000803F000000000000803F04000001003D004300F4006E00670020004E0067006800C71E200054006800F4006E0067002000540069006E00300010000000803F000000000000803F040000010039004300F4006E00670020004E0067006800C71E20005400F11E20001001D91E6E006700300010000000803F000000000000803F040000010025004B00BF1E200054006F00E1006E00300010000000803F000000000000803F040000010039004B0068006F00610020004800CD1E630020004D00E100790020005400ED006E006800300010000000803F000000000000803F04000001003D0051007500A31E6E00200054007200CB1E20004B0069006E006800200044006F0061006E006800FF0100000000000000080000000800000028000000280000000000000000000000610000004300F4006E00670020004E0067006800C71E200043006800BF1E20005400A11E6F0020004D00E10079004800E0006E004B00F91E2000540068007500AD1E7400200010016900C71E6E0020005400ED1E54006800F4006E0067002000540069006E00F11E20001001D91E6E0067004B00BF1E200054006F00E1006E0068006F00610020004800CD1E630020004D00E100790020005400ED006E00680051007500A31E6E00200054007200CB1E20004B0069006E006800200044006F0061006E0068000C0000004000000000C00A000000810B0A000081031500008110180000400128000081082900000106310000C001370000810638000001103E000001134E000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_5CA1C101]     ******/
CREATE STATISTICS [_WA_Sys_00000004_5CA1C101] ON [dbo].[nganh]([chitieu]) WITH STATS_STREAM = 0x01000000010000000000000000000000627992340000000094010000000000005401000000000000380200203800000004000A00000000000000000000000080070000007578C8004BA2000008000000000000000800000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001400000000000000000000410000004100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
GO
/****** Object:  Statistic [PK_nganh]     ******/
UPDATE STATISTICS [dbo].[nganh]([PK_nganh]) WITH STATS_STREAM = 0x01000000010000000000000000000000A5DB41F0000000002E04000000000000EE03000000000000E703D6E0E7000000140000000000000008D00034007400610700000002F87B019CA1000008000000000000000800000000000000000000000000003E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000800000001000000100000000000A04100000041000000000000A04100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000098010000000000008A0200000000000040000000000000006B000000000000009600000000000000C100000000000000EC00000000000000170100000000000042010000000000006D01000000000000300010000000803F000000000000803F04000001002B0043004E00430054004D0020002000200020002000300010000000803F000000000000803F04000001002B0043004E0048002000200020002000200020002000300010000000803F000000000000803F04000001002B0043004E004B005400440054002000200020002000300010000000803F000000000000803F04000001002B0043004E0054004400200020002000200020002000300010000000803F000000000000803F04000001002B0043004E0054005400200020002000200020002000300010000000803F000000000000803F04000001002B004B0048004D005400200020002000200020002000300010000000803F000000000000803F04000001002B004B00540020002000200020002000200020002000300010000000803F000000000000803F04000001002B00510054004B004400200020002000200020002000FF01000000000000000800000008000000280000002800000000000000000000004600000043004E00430054004D0020002000200020002000480020002000200020002000200020004B0054004400540020002000200020005400440020002000200020002000200054002000200020002000200020004B0048004D005400200020002000200020002000540020002000200020002000200020002000510054004B0044002000200020002000200020000C0000004000000000C002000000810802000081080A0000810812000040011A000081071B00000107220000C00129000081092A00000109330000010A3C000000, ROWCOUNT = 7, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000001_14B10FFA]     ******/
CREATE STATISTICS [_WA_Sys_00000001_14B10FFA] ON [dbo].[phach]([mon]) WITH STATS_STREAM = 0x01000000010000000000000000000000B914E3ED00000000F901000000000000B901000000000000380200003800000004000A00000000000000000000540020070000001050DF00A5A20000EA00000000000000EA0000000000000000000000ABAAAA3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000300000001000000140000000000804000006A4300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005D0000000000000018000000000000002F0000000000000046000000000000001000140000009C42000000000000803F010000000400001000140000009C42000000000000803F020000000400001000140000009C42000000000000803F03000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000002_14B10FFA]     ******/
CREATE STATISTICS [_WA_Sys_00000002_14B10FFA] ON [dbo].[phach]([sobd]) WITH STATS_STREAM = 0x010000000100000000000000000000008840AB2100000000420B000000000000020B000000000000E7020000E7000000140000000000000008D0003401000000070000001B15E100A5A20000EA00000000000000EA00000000000000ABAAAA3E210D523C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002F0000002F00000001000000100000000000804100006A430000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000A1080000000000009E0900000000000078010000000000009F01000000000000C601000000000000ED0100000000000014020000000000003B0200000000000062020000000000008902000000000000B002000000000000D702000000000000FE0200000000000025030000000000004C0300000000000073030000000000009A03000000000000C103000000000000E8030000000000000F0400000000000036040000000000005D040000000000008404000000000000AB04000000000000D204000000000000F904000000000000200500000000000047050000000000006E050000000000009505000000000000BC05000000000000E3050000000000000A06000000000000310600000000000058060000000000007F06000000000000A606000000000000CD06000000000000F4060000000000001B07000000000000420700000000000069070000000000009007000000000000B707000000000000DE0700000000000005080000000000002C0800000000000053080000000000007A080000000000003000100000004040000000000000803F04000001002700530044004B00410030003000300031003000100000004040000040400000404004000001002700530044004B00410030003000300033003000100000004040000040400000404004000001002700530044004B00410030003000300035003000100000004040000040400000404004000001002700530044004B00410030003000300037003000100000004040000040400000404004000001002700530044004B00410030003000300039003000100000004040000000000000803F04000001002700530044004B00410030003000310030003000100000004040000000000000803F04000001002700530044004B00410030003000310031003000100000004040000040400000404004000001002700530044004B00410030003000310033003000100000004040000040400000404004000001002700530044004B00410030003000310035003000100000004040000040400000404004000001002700530044004B00410030003000310037003000100000004040000040400000404004000001002700530044004B00410030003000310039003000100000004040000000000000803F04000001002700530044004B00410030003000320030003000100000004040000000000000803F04000001002700530044004B00410030003000320031003000100000004040000040400000404004000001002700530044004B00410030003000320033003000100000004040000040400000404004000001002700530044004B00410030003000320035003000100000004040000040400000404004000001002700530044004B00410030003000320037003000100000004040000040400000404004000001002700530044004B00410030003000320039003000100000004040000000000000803F04000001002700530044004B00410030003000330030003000100000004040000000000000803F04000001002700530044004B00410030003000330031003000100000004040000040400000404004000001002700530044004B00410030003000330033003000100000004040000040400000404004000001002700530044004B00410030003000330035003000100000004040000040400000404004000001002700530044004B00410030003000330037003000100000004040000040400000404004000001002700530044004B00410030003000330039003000100000004040000000000000803F04000001002700530044004B00410030003000340030003000100000004040000000000000803F04000001002700530044004B00410030003000340031003000100000004040000040400000404004000001002700530044004B00410030003000340033003000100000004040000040400000404004000001002700530044004B00410030003000340035003000100000004040000040400000404004000001002700530044004B00410030003000340037003000100000004040000040400000404004000001002700530044004B00410030003000340039003000100000004040000000000000803F04000001002700530044004B00410030003000350030003000100000004040000000000000803F04000001002700530044004B00410030003000350031003000100000004040000040400000404004000001002700530044004B00410030003000350033003000100000004040000040400000404004000001002700530044004B00410030003000350035003000100000004040000040400000404004000001002700530044004B00410030003000350037003000100000004040000040400000404004000001002700530044004B00410030003000350039003000100000004040000000000000803F04000001002700530044004B00410030003000360030003000100000004040000000000000803F04000001002700530044004B00410030003000360031003000100000004040000040400000404004000001002700530044004B00410030003000360033003000100000004040000040400000404004000001002700530044004B00410030003000360035003000100000004040000040400000404004000001002700530044004B00410030003000360037003000100000004040000040400000404004000001002700530044004B00410030003000360039003000100000004040000000000000803F04000001002700530044004B00410030003000370030003000100000004040000000000000803F04000001002700530044004B00410030003000370031003000100000004040000040400000404004000001002700530044004B00410030003000370033003000100000004040000040400000404004000001002700530044004B00410030003000370035003000100000004040000040400000404004000001002700530044004B00410030003000370037003000100000004040000000000000803F04000001002700530044004B0041003000300037003800FF01000000000000001500000015000000280000002800000000000000000000001C000000530044004B0041003000300030003100350038003100320036003900320033003700330031003400340032003500330036003000370031001F00000040000000004006000000C001060000810107000081010800000101090000C0010A000081010B000081010C000001010D0000C0010E000081010F00000101100000C001110000810112000081011300000101090000C0011400008101150000810108000001010D0000C00116000081011700000101100000C00118000081011900008101130000010109000040011A000081011B0000010108000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_14B10FFA]     ******/
CREATE STATISTICS [_WA_Sys_00000003_14B10FFA] ON [dbo].[phach]([phongthi]) WITH STATS_STREAM = 0x01000000010000000000000000000000D7F08D160000000052020000000000001202000000000000E7025300E7000000140000000000000008D0003410000000070000001050DF00A5A20000EA00000000000000EA000000000000008988883C0000803E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000300000001000000100000000000004000006A4300000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000006300000000000000AE00000000000000180000000000000031000000000000004A000000000000003000100000007042000000000000803F040000010019003100300010000000704200007042000070420400000100190033003000100000005842000000000000803F040000010019003400FF0100000000000000150000000400000028000000280000000000000000000000040000003100320033003400050000004000000000860100000085010100008601020000040103000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_14B10FFA]     ******/
CREATE STATISTICS [_WA_Sys_00000004_14B10FFA] ON [dbo].[phach]([namthi]) WITH STATS_STREAM = 0x010000000100000000000000000000009DDD48B800000000BB010000000000007B010000000000003802FFFF3800000004000A00000000000000000000000000070000001050DF00A5A20000EA00000000000000EA00000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000140000000000804000006A4300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F0000000000000008000000000000001000140000006A43000000000000803FDC070000040000
GO
/****** Object:  Statistic [PK_phach]     ******/
UPDATE STATISTICS [dbo].[phach]([PK_phach]) WITH STATS_STREAM = 0x010000000100000000000000000000003AC6105300000000DA010000000000009A01000000000000380300003800000004000A00000000000000000000000000070000003D57DF00A5A20000EA00000000000000EA000000000000000000803FC1088C3B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000140000000000804000006A4300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003E0000000000000010000000000000002700000000000000100014000000803F000000000000803FB5010000040000100014000000803F000068430000803F9E020000040000, ROWCOUNT = 314, PAGECOUNT = 4
GO
/****** Object:  Statistic [_WA_Sys_00000001_1F2E9E6D]     ******/
CREATE STATISTICS [_WA_Sys_00000001_1F2E9E6D] ON [dbo].[phongthi]([sbd]) WITH STATS_STREAM = 0x01000000010000000000000000000000DADEA24400000000CA0D0000000000008A0D000000000000E7020000E7000000280000000000000008D000340000000007000000F8D10D01A7A200000D020000000000000D020000000000000EFB3B3E3FE8283C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003B0000003B000000010000001000000000008041004003440000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000D50A000000000000260C000000000000D801000000000000FF0100000000000026020000000000004D0200000000000074020000000000009B02000000000000C202000000000000E902000000000000100300000000000037030000000000005E030000000000008503000000000000AC03000000000000D303000000000000FA03000000000000210400000000000048040000000000006F040000000000009604000000000000BD04000000000000E4040000000000000B05000000000000320500000000000059050000000000008005000000000000A705000000000000CE05000000000000F5050000000000001C0600000000000043060000000000006A060000000000009106000000000000B806000000000000DF0600000000000006070000000000002D0700000000000054070000000000007B07000000000000A207000000000000C907000000000000F00700000000000017080000000000003E0800000000000065080000000000008C08000000000000B308000000000000DA08000000000000010900000000000028090000000000004F0900000000000076090000000000009D09000000000000C409000000000000EB09000000000000120A000000000000390A000000000000600A000000000000870A000000000000AE0A000000000000300010000000C040000000000000803F04000001002700530044004B0041003000300030003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300030003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300030003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300030003700300010000000C0400000C0400000C04004000001002700530044004B0041003000300030003900300010000000C040000000000000803F04000001002700530044004B0041003000300031003000300010000000C040000000000000803F04000001002700530044004B0041003000300031003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300031003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300031003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300031003700300010000000C0400000C0400000C04004000001002700530044004B0041003000300031003900300010000000C040000000000000803F04000001002700530044004B0041003000300032003000300010000000C040000000000000803F04000001002700530044004B0041003000300032003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300032003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300032003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300032003700300010000000C0400000C0400000C04004000001002700530044004B0041003000300032003900300010000000C040000000000000803F04000001002700530044004B0041003000300033003000300010000000C040000000000000803F04000001002700530044004B0041003000300033003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300033003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300033003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300033003700300010000000C0400000C0400000C04004000001002700530044004B0041003000300033003900300010000000C040000000000000803F04000001002700530044004B0041003000300034003000300010000000C040000000000000803F04000001002700530044004B0041003000300034003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300034003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300034003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300034003700300010000000C0400000C0400000C04004000001002700530044004B0041003000300034003900300010000000C040000000000000803F04000001002700530044004B0041003000300035003000300010000000C040000000000000803F04000001002700530044004B0041003000300035003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300035003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300035003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300035003700300010000000C0400000C0400000C04004000001002700530044004B0041003000300035003900300010000000C040000000000000803F04000001002700530044004B0041003000300036003000300010000000C040000000000000803F04000001002700530044004B0041003000300036003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300036003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300036003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300036003700300010000000C0400000C0400000C04004000001002700530044004B0041003000300036003900300010000000C040000000000000803F04000001002700530044004B0041003000300037003000300010000000C040000000000000803F04000001002700530044004B0041003000300037003100300010000000C0400000C0400000C04004000001002700530044004B0041003000300037003300300010000000C0400000C0400000C04004000001002700530044004B0041003000300037003500300010000000C0400000C0400000C04004000001002700530044004B0041003000300037003700300010000000C040000000000000803F04000001002700530044004B00410030003000370038003000100000004040000000000000803F04000001002700530044004B00410030003000370039003000100000004040000000000000803F04000001002700530044004B00410030003000380030003000100000004040000000000000803F04000001002700530044004B00410030003000380031003000100000004040000040400000404004000001002700530044004B00410030003000380033003000100000004040000040400000404004000001002700530044004B00410030003000380035003000100000004040000040400000404004000001002700530044004B00410030003000380037003000100000004040000040400000404004000001002700530044004B00410030003000380039003000100000004040000000000000803F04000001002700530044004B00410030003000390030003000100000004040000000000000803F04000001002700530044004B00410030003000390031003000100000004040000040400000404004000001002700530044004B00410030003000390033003000100000004040000040400000404004000001002700530044004B00410030003000390035003000100000004040000040400000404004000001002700530044004B0041003000300039003700FF01000000000000002400000024000000280000002800000000000000000000001E000000530044004B004100300030003000310033003600380031003000350032003000370033003000340030003900360031003700310038003300390033002F00000040000000004006000000C00106000081010700008101080000810109000001010A0000C0010B000081010C0000810108000081010D000001010A0000C0010E000081010F0000810108000081010D00000101100000C001110000810112000081010E000081010D00000101100000C001130000810114000081010E0000810113000081011000000101150000C0010D000081010E0000810113000081011000000101150000C0011600008101170000810113000081010900000101150000C00118000081011900008101130000810109000001010A0000C0011A000081011B000001010A000001021C000000
GO
/****** Object:  Statistic [_WA_Sys_00000002_1F2E9E6D]     ******/
CREATE STATISTICS [_WA_Sys_00000002_1F2E9E6D] ON [dbo].[phongthi]([sophongthi]) WITH STATS_STREAM = 0x010000000100000000000000000000007782A8350000000061020000000000002102000000000000380200003800000004000A0000000000000000000000000007000000089019014BA800000D020000000000000D020000000000008988883CCDCC4C3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000AA34E43F0040034400809143AA34E43F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190000000000000000000000000000005D00000000000000AD00000000000000B50000000000000018000000000000002F0000000000000046000000000000001000140000007042000000000000803F0100000004000010001400000070420000704200007042030000000400001000140000005842000000000000803F040000000400000100000002D20D01A7A2000000000000006880405C2E00000000000004000000000000A09999C93F0000000000000000000000000000000000000000004C814000000000004C814000000000000000000D02000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_1F2E9E6D]     ******/
CREATE STATISTICS [_WA_Sys_00000003_1F2E9E6D] ON [dbo].[phongthi]([namthi]) WITH STATS_STREAM = 0x0100000001000000000000000000000086EF643400000000DA010000000000009A01000000000000380200003800000004000A000000000000000000000000000700000002D20D01A7A200000D020000000000000D02000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400040034400000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003E00000000000000100000000000000027000000000000001000140000006A43000000000000803FDC0700000400001000140000809143000000000000803FDD070000040000
GO
/****** Object:  Statistic [_WA_Sys_00000004_1F2E9E6D]     ******/
CREATE STATISTICS [_WA_Sys_00000004_1F2E9E6D] ON [dbo].[phongthi]([bothi]) WITH STATS_STREAM = 0x01000000010000000000000000000000DDCCB2F600000000BB010000000000007B010000000000003802D6E03800000004000A0000000000000000000000000007000000BD2F0F01A7A200000D020000000000000D02000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400040034400000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F0000000000000008000000000000001000140000400344000000000000803F00000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000005_1F2E9E6D]     ******/
CREATE STATISTICS [_WA_Sys_00000005_1F2E9E6D] ON [dbo].[phongthi]([mon]) WITH STATS_STREAM = 0x0100000001000000000000000000000000CCB73500000000F901000000000000B901000000000000380200003800000004000A00000000000000000000000000070000000BD20D01A7A200000D020000000000000D0200000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000000080400040034400000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000005D0000000000000018000000000000002F0000000000000046000000000000001000140000002F43000000000000803F010000000400001000140000002F43000000000000803F020000000400001000140000002F43000000000000803F03000000040000
GO
/****** Object:  Statistic [PK_phongthi]     ******/
UPDATE STATISTICS [dbo].[phongthi]([PK_phongthi]) WITH STATS_STREAM = 0x010000000100000000000000000000008A779BE100000000DA010000000000009A01000000000000380300003800000004000A0000000000000000000000000007000000CE0FE40099A20000F000000000000000F0000000000000000000803F8988883B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000704300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003E0000000000000010000000000000002700000000000000100014000000803F000000000000803F3D010000040000100014000000803F00006E430000803F2C020000040000, ROWCOUNT = 525, PAGECOUNT = 6
GO
/****** Object:  Statistic [_WA_Sys_00000002_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000002_2F650636] ON [dbo].[thisinh]([sobd]) WITH STATS_STREAM = 0x010000000100000000000000000000004BC7ADCF00000000960D000000000000560D000000000000E7020000E7000000140000000000000008D0003400000000070000002015E100A5A20000B100000000000000B100000000000000EAA00E3FB57E253C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C0000003C000000010000001000000000008041000031430000000000008041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000040B000000000000F20B000000000000E00100000000000007020000000000002E0200000000000055020000000000007C02000000000000A302000000000000CA02000000000000F10200000000000018030000000000003F0300000000000066030000000000008D03000000000000B403000000000000DB0300000000000002040000000000002904000000000000500400000000000077040000000000009E04000000000000C504000000000000EC0400000000000013050000000000003A0500000000000061050000000000008805000000000000AF05000000000000D605000000000000FD0500000000000024060000000000004B0600000000000072060000000000009906000000000000C006000000000000E7060000000000000E0700000000000035070000000000005C070000000000008307000000000000AA07000000000000D107000000000000F8070000000000001F0800000000000046080000000000006D080000000000009408000000000000BB08000000000000E2080000000000000909000000000000300900000000000057090000000000007E09000000000000A509000000000000CC09000000000000F3090000000000001A0A000000000000410A000000000000680A0000000000008F0A000000000000B60A000000000000DD0A0000000000003000100000000040000000000000803F04000001002700530044004B00410030003000300031003000100000000040000000400000004004000001002700530044004B00410030003000300033003000100000000040000000400000004004000001002700530044004B00410030003000300035003000100000000040000000400000004004000001002700530044004B00410030003000300037003000100000000040000000400000004004000001002700530044004B00410030003000300039003000100000000040000000000000803F04000001002700530044004B00410030003000310030003000100000000040000000000000803F04000001002700530044004B00410030003000310031003000100000000040000000400000004004000001002700530044004B00410030003000310033003000100000000040000000400000004004000001002700530044004B00410030003000310035003000100000000040000000400000004004000001002700530044004B00410030003000310037003000100000000040000000400000004004000001002700530044004B00410030003000310039003000100000000040000000000000803F04000001002700530044004B00410030003000320030003000100000000040000000000000803F04000001002700530044004B00410030003000320031003000100000000040000000400000004004000001002700530044004B00410030003000320033003000100000000040000000400000004004000001002700530044004B00410030003000320035003000100000000040000000400000004004000001002700530044004B00410030003000320037003000100000000040000000400000004004000001002700530044004B00410030003000320039003000100000000040000000000000803F04000001002700530044004B00410030003000330030003000100000000040000000000000803F04000001002700530044004B00410030003000330031003000100000000040000000400000004004000001002700530044004B00410030003000330033003000100000000040000000400000004004000001002700530044004B00410030003000330035003000100000000040000000400000004004000001002700530044004B00410030003000330037003000100000000040000000400000004004000001002700530044004B00410030003000330039003000100000000040000000000000803F04000001002700530044004B00410030003000340030003000100000000040000000000000803F04000001002700530044004B00410030003000340031003000100000000040000000400000004004000001002700530044004B00410030003000340033003000100000000040000000400000004004000001002700530044004B00410030003000340035003000100000000040000000400000004004000001002700530044004B00410030003000340037003000100000000040000000400000004004000001002700530044004B00410030003000340039003000100000000040000000000000803F04000001002700530044004B00410030003000350030003000100000000040000000000000803F04000001002700530044004B00410030003000350031003000100000000040000000400000004004000001002700530044004B00410030003000350033003000100000000040000000400000004004000001002700530044004B00410030003000350035003000100000000040000000400000004004000001002700530044004B00410030003000350037003000100000000040000000400000004004000001002700530044004B00410030003000350039003000100000000040000000000000803F04000001002700530044004B00410030003000360030003000100000000040000000000000803F04000001002700530044004B00410030003000360031003000100000000040000000400000004004000001002700530044004B00410030003000360033003000100000000040000000400000004004000001002700530044004B00410030003000360035003000100000000040000000400000004004000001002700530044004B00410030003000360037003000100000000040000000400000004004000001002700530044004B00410030003000360039003000100000000040000000000000803F04000001002700530044004B00410030003000370030003000100000000040000000000000803F04000001002700530044004B00410030003000370031003000100000000040000000400000004004000001002700530044004B00410030003000370033003000100000000040000000400000004004000001002700530044004B00410030003000370035003000100000000040000000400000004004000001002700530044004B00410030003000370037003000100000000040000000000000803F04000001002700530044004B0041003000300037003800300010000000803F000000000000803F04000001002700530044004B0041003000300037003900300010000000803F000000000000803F04000001002700530044004B0041003000300038003000300010000000803F000000000000803F04000001002700530044004B0041003000300038003100300010000000803F0000803F0000803F04000001002700530044004B0041003000300038003300300010000000803F0000803F0000803F04000001002700530044004B0041003000300038003500300010000000803F0000803F0000803F04000001002700530044004B0041003000300038003700300010000000803F0000803F0000803F04000001002700530044004B0041003000300038003900300010000000803F000000000000803F04000001002700530044004B0041003000300039003000300010000000803F000000000000803F04000001002700530044004B0041003000300039003100300010000000803F0000803F0000803F04000001002700530044004B0041003000300039003300300010000000803F0000803F0000803F04000001002700530044004B0041003000300039003500300010000000803F0000803F0000803F04000001002700530044004B0041003000300039003700300010000000803F0000803F0000803F04000001002700530044004B0041003000300039003900FF01000000000000001200000012000000280000002800000000000000000000001C000000530044004B0041003000300030003100360031003100320031003300300035003400300035003000360030003700300038003100390031001C00000040000000004006000000C00106000081010700000101080000C00109000081010A00000101080000C0010B000081010C00000101080000C0010D000081010E000001010F0000C001100000810111000001010F0000C001120000810113000001010F0000C001140000810115000001010F0000C001160000810117000001010F0000810218000001021A000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000003_2F650636] ON [dbo].[thisinh]([hots]) WITH STATS_STREAM = 0x010000000100000000000000000000001EB3114100000000D6060000000000009606000000000000E7020000E7000000640000000000000008D000340100000007000000875F0400A5A20000B100000000000000B10000000000000000000000310C433D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015000000150000000100000010000000678991410000314300000000678991410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000D040000000000003205000000000000A800000000000000CF00000000000000F6000000000000001B010000000000003E0100000000000069010000000000009601000000000000BF01000000000000E4010000000000000F020000000000003E0200000000000069020000000000009402000000000000BD02000000000000EA0200000000000015030000000000003C0300000000000067030000000000009003000000000000B903000000000000E203000000000000300010000000A040000000000000803F04000001002700100169006E00680020004700690061003000100000008040000000000000803F04000001002700100169006E006800200054006800CB1E300010000000A040000000000000803F040000010025001001D71E20006D0069006E0068003000100000008040000000000000803F040000010023001001D71E200054006800CB1E300010000000A040000000000000803F04000001002B0048006F00E0006E006700200044006900C71E75003000100000008040000000000000803F04000001002D0068006F00E0006E00670020007400680061006E006800300010000000A040000000000000803F040000010029004C00A11E690020005100750061006E006700300010000000A040000000000000803F040000010025004E006700F4002000560003016E00300010000000A040000000000000803F04000001002B004E00670075007900C51E6E0020006200A31E6F003000100000004040000000000000803F04000001002F004E00670075007900C51E6E0020007400680061006E0068003000100000009841000000000000803F04000001002B004E00670075007900C51E6E00200054006800CB1E300010000000A040000000000000803F04000001002B004E00670075007900C51E6E0020007400680075003000100000008040000000000000803F0400000100290070006800A11E6D00200067006900610020003000100000008040000000000000803F04000001002D0070006800A11E6D00200068006F00E0006E0067002000300010000000E040000000000000803F04000001002B0070006800A11E6D0020006D00A11E6E0068002000300010000000C040000000000000803F0400000100270054007200A71E6E00200043006800ED003000100000003041000000000000803F04000001002B0074007200A71E6E00200074006800CB1E200020003000100000008040000000000000803F0400000100290054007200A71E6E00200054006900BF1E6E003000100000001041000000000000803F0400000100290054007200A71E6E00200074007500A51E6E003000100000006842000000000000803F0400000100290054007200A71E6E002000560003016E002000300010000000A040000000000000803F04000001002B0054007200CB1E6E006800200054007500A51E6E00FF0100000000000000120000000D000000280000002800000000000000000000004E000000100169006E0068002000470069006100D71E20006D0069006E00680048006F00E0006E006700200044006900C71E75004C00A11E690020005100750061006E0067004E00670075007900C51E6E0020006200A31E6F0054006800CB1E70006800A11E6D00200067006900610020006D00A11E6E006800200054007200A71E6E00200043006800ED0074006800CB1E20007500A51E6E00560003016E00130000004000000000C00100000081070100000106080000810A0E00008109180000C007210000810328000002032B0000C0052E00008104330000010537000040053C00008103410000C0014400008103450000010348000041034B0000050104000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000004_2F650636] ON [dbo].[thisinh]([tents]) WITH STATS_STREAM = 0x010000000100000000000000000000004C1B2B0B00000000F50A000000000000B50A000000000000E7020000E7000000140000000000000008D000340100000007000000875F0400A5A20000B100000000000000B1000000000000000000003F2549923C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000037000000370000000100000010000000D8DBE8400000314300000000D8DBE84000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000049080000000000005109000000000000B801000000000000D301000000000000F0010000000000000B020000000000002A02000000000000490200000000000068020000000000008502000000000000A202000000000000C102000000000000E002000000000000FD020000000000001A030000000000003903000000000000580300000000000077030000000000009403000000000000B503000000000000D603000000000000F5030000000000001204000000000000310400000000000050040000000000006D040000000000008C04000000000000A904000000000000C604000000000000E50400000000000002050000000000002305000000000000440500000000000061050000000000008405000000000000A305000000000000C205000000000000DF0500000000000000060000000000001F060000000000003C060000000000005B060000000000007A060000000000009906000000000000B806000000000000D906000000000000FC0600000000000017070000000000003607000000000000550700000000000076070000000000009307000000000000B007000000000000CF07000000000000EE070000000000000D080000000000002E080000000000003000100000008040000000000000803F04000001001B0061006E00300010000000C040000000000000803F04000001001D0061006E0068003000100000004040000000000000803F04000001001B00420061003000100000000040000000000000803F04000001001F004200A11E630068003000100000000040000000000000803F04000001001F00620069006E0068003000100000000040000000000000803F04000001001F006200EC006E0068003000100000004040000000000000803F04000001001D00630061006F003000100000000040000000000000803F04000001001D001101E0006F003000100000004040000000000000803F04000001001F0044006900C71E75003000100000000040000000000000803F04000001001F0068006900C11E6E003000100000000040000000000000803F04000001001D0068006F0061003000100000002041000000000000803F04000001001D006800F20061003000100000000040000000000000803F04000001001F0048006F00E00069003000100000000040000000000000803F04000001001F0048006F00E0006E003000100000000040000000000000803F04000001001F006800D31E6E0067003000100000000040000000000000803F04000001001D0048007500C71E3000100000000040000000000000803F040000010021004800B001A1016E0067003000100000008040000000000000803F04000001002100680075007900C11E6E003000100000000040000000000000803F04000001001F004B00680061006D00300010000000C040000000000000803F04000001001D006C0061006E003000100000008040000000000000803F04000001001F004C0069006E006800300010000000A040000000000000803F04000001001F004C006F0061006E003000100000004040000000000000803F04000001001D004C00D91E63003000100000000041000000000000803F04000001001F006C006F006E006700300010000000803F000000000000803F04000001001D006D00610069003000100000000040000000000000803F04000001001D006D00BF1E6E00300010000000A040000000000000803F04000001001F006D0069006E006800300010000000803F000000000000803F04000001001D004E0061006D003000100000000040000000000000803F040000010021004E0067006800290161003000100000000040000000000000803F04000001002100700068006F006E0067003000100000004040000000000000803F04000001001D0050006800FA003000100000000040000000000000803F0400000100230050006800B001A1016E0067003000100000000040000000000000803F04000001001F0051007500E2006E00300010000000A040000000000000803F04000001001F0051007500D11E63003000100000008040000000000000803F04000001001D005100750079003000100000000040000000000000803F04000001002100710075007900C11E6E003000100000000040000000400000004004000001001F0074006800AF1E6D003000100000004040000000000000803F04000001001D005400680075003000100000004040000000000000803F04000001001F0074006900BF1E6E003000100000004040000000000000803F04000001001F005400ED006E006800300010000000A040000000000000803F04000001001F0054006F00E1006E003000100000000040000000000000803F04000001001F0074006F00E0006E003000100000000040000000000000803F040000010021007400720075006E0067003000100000000040000000000000803F0400000100230054007200B001DD1E6E006700300010000000C040000000000000803F04000001001B005400FA003000100000000040000000000000803F04000001001F0054007500E2006E00300010000000C040000000000000803F04000001001F0054007500A51E6E003000100000004040000000000000803F040000010021007400B001DF1E6E0067003000100000000040000000000000803F04000001001D007600E2006E003000100000004040000000000000803F04000001001D00560003016E003000100000004040000000000000803F04000001001F0056006900EA006E00300010000000A040000000000000803F04000001001F00560069006E0068003000100000000040000000000000803F04000001001F007600CB1E6E0068003000100000000040000000000000803F040000010021005600B001E31E6E006700300010000000A040000000000000803F04000001001B005600F91EFF01000000000000001200000012000000280000002800000000000000000000003300000061006E0042006100630061006F0068006F006100F2006100B001A1016E0067004C0061006E006F0061006E006D0069006E00680050006800B001A1016E0067005100750079005400680075006F00E1006E00FA007500A51E6E00560003016E00CB1E6E006800180000004000000000810200000081020200008103040000C001070000810208000081020A000001040C0000C00110000081021100004001130000810214000001020E0000810416000081061A00008103200000C0012300008102240000810326000081032A0000010129000040012D000081022E0000010330000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000005_2F650636] ON [dbo].[thisinh]([ngaysinh]) WITH STATS_STREAM = 0x010000000100000000000000000000002F5B68EE00000000930500000000000053050000000000003D0200003D0000000800170300000000000000000040000007000000875F0400A5A20000B100000000000000B10000000000000000000000CB3D0D3D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001D0000001D000000010000001800000000000041000031430000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000F703000000000000E80000000000000003010000000000001E01000000000000390100000000000054010000000000006F010000000000008A01000000000000A501000000000000C001000000000000DB01000000000000F60100000000000011020000000000002C02000000000000470200000000000062020000000000007D020000000000009802000000000000B302000000000000CE02000000000000E90200000000000004030000000000001F030000000000003A03000000000000550300000000000070030000000000008B03000000000000A603000000000000C103000000000000DC03000000000000100018000000A040000000000000803F00000000128100000400001000180000000040000000000000803F00000000DC8100000400001000180000000040000000000000803F00000000DD8100000400001000180000000040000000000000803F00000000FC8100000400001000180000008040000000000000803F00000000FD8100000400001000180000000040000000000000803F00000000FE8100000400001000180000008040000000000000803F00000000188200000400001000180000008040000000000000803F0000000029820000040000100018000000C040000000000000803F00000000438200000400001000180000002041000000000000803F00000000698200000400001000180000000040000000000000803F00000000B0820000040000100018000000803F000000000000803F00000000B4820000040000100018000000D841000000000000803F00000000C48200000400001000180000000040000000000000803F0000000001830000040000100018000000803F000000000000803F00000000108300000400001000180000000040000000000000803F000000002A830000040000100018000000803F000000000000803F000000002B8300000400001000180000004040000000000000803F000000002C830000040000100018000000C040000000000000803F000000006B830000040000100018000000E040000000000000803F0000000086830000040000100018000000B041000000000000803F00000000B18300000400001000180000001041000000000000803F00000000D7830000040000100018000000B041000000000000803F00000000ED8300000400001000180000009841000000000000803F00000000188400000400001000180000000041000000000000803F000000001E840000040000100018000000803F000000000000803F0000000029840000040000100018000000803F000000000000803F0000000032840000040000100018000000803F000000000000803F000000006F840000040000100018000000803F000000000000803F000000007E840000040000
GO
/****** Object:  Statistic [_WA_Sys_00000006_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000006_2F650636] ON [dbo].[thisinh]([gioitinh]) WITH STATS_STREAM = 0x010000000100000000000000000000002F8AD364000000003202000000000000F201000000000000E7021882E7000000060000000000000008D000340000008007000000875F0400A5A20000B100000000000000B100000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000010000000ED1CAC400000314300000000ED1CAC4000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000048000000000000008E0000000000000010000000000000002D00000000000000300010000000F442000000000000803F04000001001D004E0061006D003000100000005C42000000000000803F04000001001B004E00EF1EFF0100000000000000120000000200000028000000280000000000000000000000040000004E0061006D00EF1E04000000400000000040010000008D02010000050103000000
GO
/****** Object:  Statistic [_WA_Sys_00000007_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000007_2F650636] ON [dbo].[thisinh]([matinh]) WITH STATS_STREAM = 0x01000000010000000000000000000000DDA5C8EE0000000056020000000000001602000000000000380200003800000004000A00000000000000000000000000070000002E34E100A5A20000B100000000000000B10000000000000000000000ABAA2A3E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000600000006000000010000001400000000008040000031430000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000BA00000000000000300000000000000047000000000000005E0000000000000075000000000000008C00000000000000A300000000000000100014000000C041000000000000803F010000000400001000140000004041000000000000803F020000000400001000140000008040000000000000803F120000000400001000140000007041000000000000803F170000000400001000140000004442000000000000803F180000000400001000140000009242000000000000803F19000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000008_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000008_2F650636] ON [dbo].[thisinh]([mahuyen]) WITH STATS_STREAM = 0x01000000010000000000000000000000D63284340000000075020000000000003502000000000000380200003800000004000A0000000000000000000000000007000000264B8001A4A20000A500000000000000A500000000000000000000000000003E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000070000000100000014000000286E05400000254300009E42286E0540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000D90000000000000038000000000000004F0000000000000066000000000000007D000000000000009400000000000000AB00000000000000C2000000000000001000140000000040000000000000803F01000000040000100014000000F041000000000000803F020000000400001000140000004041000000000000803F030000000400001000140000005041000000000000803F04000000040000100014000000E040000000000000803F050000000400001000140000000040000000000000803F08000000040000100014000000A041000000000000803F09000000040000
GO
/****** Object:  Statistic [_WA_Sys_00000009_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000009_2F650636] ON [dbo].[thisinh]([cmt]) WITH STATS_STREAM = 0x0100000001000000000000000000000061C77F9100000000D6060000000000009606000000000000E7020000E7000000140000000000000008D000340100000007000000264B8001A4A20000A500000000000000A5000000000000000000003FD9891D3D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018000000180000000100000010000000ED1B16410000254300009E42ED1B164100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000098040000000000003205000000000000C000000000000000E90000000000000012010000000000003B0100000000000064010000000000008D01000000000000B601000000000000DF01000000000000080200000000000031020000000000005A020000000000008302000000000000AC02000000000000D502000000000000FE02000000000000270300000000000050030000000000007903000000000000A203000000000000CB03000000000000F4030000000000001D0400000000000046040000000000006F040000000000003000100000000040000000000000803F040000010029003100360033003100330035003700310030003000100000000040000000000000803F040000010029003100360033003100330035003700310031003000100000002041000000000000803F040000010029003100360033003100330035003700310032003000100000000040000000000000803F04000001002900310036003300310033003500370031003300300010000000A040000000000000803F040000010029003100360033003100330035003700310034003000100000008040000000000000803F040000010029003100360033003100330035003700310035003000100000000040000000000000803F040000010029003100360033003100330035003700310038003000100000000040000000000000803F040000010029003100360033003100330035003700320030003000100000000040000000000000803F040000010029003100360033003100330035003700320031003000100000008040000000000000803F040000010029003100360033003100330035003700320033003000100000006041000000000000803F040000010029003100360033003100330035003700340031003000100000000040000000000000803F040000010029003100360033003100330035003700340037003000100000000040000000000000803F04000001002900310036003300310033003500370035003600300010000000803F000000000000803F040000010029003100360033003100330035003700370038003000100000008040000000000000803F040000010029003100360033003100330035003700380038003000100000000040000000000000803F040000010029003100360033003100330035003700380039003000100000000040000000000000803F04000001002900310036003300350032003300360031003200300010000000A040000000000000803F040000010029003100360033003500320033003600340035003000100000000040000000000000803F040000010029003100360033003500320033003600380031003000100000008040000000000000803F040000010029003100360033003500320033003600380033003000100000000040000000000000803F04000001002900310036003300350032003300360038003400300010000000A040000000000000803F0400000100290031003600330035003200330036003800360030001000000000400000004000000040040000010029003100360033003500320033003600380038003000100000000040000000000000803F04000001002900310036003300350032003300360038003900FF0100000009000000120000000900000028000000280000000000000000000000150000003100360033003100330035003700310032003200330034003100380039003500320033003600380031000E00000040000000004003000000C004030000C001070000820108000001010500008102090000C0010B000081010C0000010106000001020D000040050F00008101140000010101000000
GO
/****** Object:  Statistic [_WA_Sys_0000000A_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_0000000A_2F650636] ON [dbo].[thisinh]([hokhau]) WITH STATS_STREAM = 0x01000000010000000000000000000000651A0C69000000004A070000000000000A07000000000000E7020000E7000000C80000000000000008D0003401000000070000007A940400A5A20000B100000000000000B100000000000000000000002549923D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E0000000E00000001000000100000006EF4074200003143000000006EF407420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000009C03000000000000A6050000000000007000000000000000B500000000000000EE00000000000000270100000000000066010000000000009901000000000000D201000000000000050200000000000042020000000000007902000000000000B202000000000000F302000000000000260300000000000065030000000000003000100000008040000000000000803F040000010045003300340020004E00670075007900C51E6E0020004400750020002D0020004E0061006D0020001001CB1E6E0068003000100000007041000000000000803F040000010039001001E00020004200AF1E630020002D0020004800F200610020004200EC006E0068003000100000008041000000000000803F04000001003900440075007900200054006900EA006E0020002D0020004800E00020004E0061006D003000100000008040000000000000803F04000001003F004700690061006F002000540068007500F71E20002D0020004E0061006D0020001001CB1E6E0068003000100000008041000000000000803F0400000100330048006F00E0006E0020004B006900BF1E6D0020002D00200048004E003000100000001041000000000000803F040000010039004B0069006D0020004200A31E6E00670020002D0020004800E00020004E0061006D003000100000000041000000000000803F040000010033004C006F006E006700200042006900EA006E0020002D00200048004E003000100000008040000000000000803F04000001003D004C00E51E630020004E006700A11E6E0020002D0020004800B0016E00670020005900EA006E00300010000000C041000000000000803F040000010037004C00FD0020004E006800E2006E0020002D0020004800E00020004E0061006D00300010000000A041000000000000803F040000010039004D00F91E20004C00D91E630020002D0020004E0061006D0020001001CB1E6E006800300010000000C041000000000000803F040000010041004E00670068002901610020004800B0016E00670020002D0020004E0061006D0020001001CB1E6E0068003000100000004041000000000000803F0400000100330051007500AD1E6E00200048006100690020002D002000480043004D003000100000004040000000000000803F04000001003F0054007200F11E630020004E0069006E00680020002D0020004E0061006D0020001001CB1E6E0068003000100000009041000000000000803F04000001003700DD0020005900EA006E0020002D0020004E0061006D0020001001CB1E6E006800FF0100000000000000120000000C00000028000000280000000000000000000000CD0000003300340020004E00670075007900C51E6E0020004400750020002D0020004E0061006D0020001001CB1E6E0068001001E00020004200AF1E630020002D0020004800F200610020004200EC006E006800440075007900200054006900EA006E0020002D0020004800E00020004E0061006D0048006F00E0006E0020004B006900BF1E6D0020002D00200048004E004B0069006D0020004200A31E6E00670020002D0020004800E00020004E0061006D004C006F006E006700200042006900EA006E0020002D00200048004E00FD0020004E006800E2006E0020002D0020004800E00020004E0061006D004D00F91E20004C00D91E630020002D0020004E0061006D0020001001CB1E6E0068004E00670068002901610020004800B0016E00670020002D0020004E0061006D0020001001CB1E6E00680051007500AD1E6E00200048006100690020002D002000480043004D0054007200F11E630020004E0069006E00680020002D0020004E0061006D0020001001CB1E6E006800DD0020005900EA006E0020002D0020004E0061006D0020001001CB1E6E0068000E0000004000000000811700000082112800008111170000820E3900008111470000C001580000810D590000030F66000082117500008215860000810E9B00008114A900000110BD000000
GO
/****** Object:  Statistic [_WA_Sys_0000000B_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_0000000B_2F650636] ON [dbo].[thisinh]([dantoc]) WITH STATS_STREAM = 0x01000000010000000000000000000000D53ACEBE000000000402000000000000C401000000000000E7023000E70000000A0000000000000008D000340001003307000000875F0400A5A20000B100000000000000B100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C04000003143000000000000C0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000002500000000000000600000000000000008000000000000003000100000003143000000000000803F04000001001D00440054003100FF01000000000000001200000001000000280000002800000000000000000000000300000044005400310002000000400000000010030000001200
GO
/****** Object:  Statistic [_WA_Sys_0000000C_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_0000000C_2F650636] ON [dbo].[thisinh]([dt_ut]) WITH STATS_STREAM = 0x0100000001000000000000000000000036247176000000002302000000000000E301000000000000EF020000EF000000040000000000000008D000340000000007000000875F0400A5A20000B100000000000000B100000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000314300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000003E000000000000007F00000000000000100000000000000027000000000000001000140000000C43000000000000803F300020000400001000140000001442000000000000803F31002000040000FF01000000000000001200000002000000280000002800000000000000000000000400000030002000310020000300000040000000008F02000000030202000000
GO
/****** Object:  Statistic [_WA_Sys_0000000D_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_0000000D_2F650636] ON [dbo].[thisinh]([khuvuc]) WITH STATS_STREAM = 0x010000000100000000000000000000008748572F0000000073020000000000003302000000000000E7020000E7000000140000000000000008D0003400000000070000008C5F0400A5A20000B100000000000000B10000000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000010000000678931410000314300000000678931410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000007700000000000000CF000000000000001800000000000000350000000000000054000000000000003000100000000041000000000000803F04000001001D004B0056003100300010000000E041000000000000803F04000001001F004B005600320020003000100000000D43000000000000803F040000010023004B00560032002D004E005400FF0100000000000000120000000300000028000000280000000000000000000000080000004B0056003100320020002D004E00540006000000400000000040020000008101020000400103000083010400000E0305000000
GO
/****** Object:  Statistic [_WA_Sys_0000000E_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_0000000E_2F650636] ON [dbo].[thisinh]([nganhdk]) WITH STATS_STREAM = 0x010000000100000000000000000000000075577900000000BA020000000000007A02000000000000E7020000E7000000140000000000000008D0003400000000070000008C5F0400A5A20000B100000000000000B100000000000000000000000000803E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000004000000010000001000000000006041000031430000000000006041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000B4000000000000001601000000000000200000000000000045000000000000006A000000000000008F00000000000000300010000000EE42000000000000803F0400000100250044003300340030003300300031003000100000004040000000000000803F0400000100250044003400380030003200300031003000100000009841000000000000803F0400000100250044003500310030003200300035003000100000001042000000000000803F040000010025004400350031003000330030003100FF01000000000000001200000003000000280000002800000000000000000000000D000000440033003400300033003000310035003100300032003000350006000000400000000040010000008D06010000400307000082030A0000030304000000
GO
/****** Object:  Statistic [_WA_Sys_0000000F_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_0000000F_2F650636] ON [dbo].[thisinh]([namthi]) WITH STATS_STREAM = 0x010000000100000000000000000000008F23BFD500000000DA010000000000009A010000000000003802D6E03800000004000A0000000000000000000000000007000000875F0400A5A20000B100000000000000B100000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000314300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003E00000000000000100000000000000027000000000000001000140000009C42000000000000803FDC070000040000100014000000C642000000000000803FDD070000040000
GO
/****** Object:  Statistic [_WA_Sys_00000010_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000010_2F650636] ON [dbo].[thisinh]([dcbaotin]) WITH STATS_STREAM = 0x01000000010000000000000000000000637BB6AF0000000041020000000000000102000000000000E7020000E7000000F40100000000000008D000340000000007000000264B8001A4A20000A500000000000000A50000000000000000000000ABAAAA3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000008A5B213F00002543000018438A5B213F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000006E000000000000009D00000000000000100000000000000023000000000000001000100000003041000000000000803F0400003000100000000040000000000000803F04000001004B0054006800F4006E0020004D00F91E20002C0020005800E300200048006F00E000690020002C0020004800E00020005400E2007900FF01000000110000001200000002000000280000002800000000000000000000000000000001000000010000000000
GO
/****** Object:  Statistic [_WA_Sys_00000011_2F650636]     ******/
CREATE STATISTICS [_WA_Sys_00000011_2F650636] ON [dbo].[thisinh]([namtn]) WITH STATS_STREAM = 0x01000000010000000000000000000000A6ACD69F00000000BB010000000000007B01000000000000380200003800000004000A0000000000000000000000000007000000264B8001A4A20000A500000000000000A500000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000286E05400000254300009E42286E05400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001F000000000000000800000000000000100014000000AC42000000000000803FD6070000040000
GO
/****** Object:  Statistic [PK_thisinh]     ******/
UPDATE STATISTICS [dbo].[thisinh]([PK_thisinh]) WITH STATS_STREAM = 0x010000000100000000000000000000002C362D33000000001B15000000000000DB14000000000000380300003800000004000A000000000000000000010000000700000027427901A4A20000A400000000000000A4000000000000000000803F0CCEC73B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A1000000A10000000100000014000000000080400000244300000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000007F1300000000000008050000000000001F0500000000000036050000000000004D0500000000000064050000000000007B050000000000009205000000000000A905000000000000C005000000000000D705000000000000EE0500000000000005060000000000001C0600000000000033060000000000004A06000000000000610600000000000078060000000000008F06000000000000A606000000000000BD06000000000000D406000000000000EB0600000000000002070000000000001907000000000000300700000000000047070000000000005E0700000000000075070000000000008C07000000000000A307000000000000BA07000000000000D107000000000000E807000000000000FF0700000000000016080000000000002D0800000000000044080000000000005B0800000000000072080000000000008908000000000000A008000000000000B708000000000000CE08000000000000E508000000000000FC0800000000000013090000000000002A09000000000000410900000000000058090000000000006F0900000000000086090000000000009D09000000000000B409000000000000CB09000000000000E209000000000000F909000000000000100A000000000000270A0000000000003E0A000000000000550A0000000000006C0A000000000000830A0000000000009A0A000000000000B10A000000000000C80A000000000000DF0A000000000000F60A0000000000000D0B000000000000240B0000000000003B0B000000000000520B000000000000690B000000000000800B000000000000970B000000000000AE0B000000000000C50B000000000000DC0B000000000000F30B0000000000000A0C000000000000210C000000000000380C0000000000004F0C000000000000660C0000000000007D0C000000000000940C000000000000AB0C000000000000C20C000000000000D90C000000000000F00C000000000000070D0000000000001E0D000000000000350D0000000000004C0D000000000000630D0000000000007A0D000000000000910D000000000000A80D000000000000BF0D000000000000D60D000000000000ED0D000000000000040E0000000000001B0E000000000000320E000000000000490E000000000000600E000000000000770E0000000000008E0E000000000000A50E000000000000BC0E000000000000D30E000000000000EA0E000000000000010F000000000000180F0000000000002F0F000000000000460F0000000000005D0F000000000000740F0000000000008B0F000000000000A20F000000000000B90F000000000000D00F000000000000E70F000000000000FE0F00000000000015100000000000002C1000000000000043100000000000005A10000000000000711000000000000088100000000000009F10000000000000B610000000000000CD10000000000000E410000000000000FB1000000000000012110000000000002911000000000000401100000000000057110000000000006E1100000000000085110000000000009C11000000000000B311000000000000CA11000000000000E111000000000000F8110000000000000F1200000000000026120000000000003D1200000000000054120000000000006B1200000000000082120000000000009912000000000000B012000000000000C712000000000000DE12000000000000F5120000000000000C1300000000000023130000000000003A1300000000000051130000000000006813000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F02000000040000100014000000803F000000000000803F03000000040000100014000000803F000000000000803F04000000040000100014000000803F000000000000803F05000000040000100014000000803F000040400000803F0A000000040000100014000000803F000000000000803F0C000000040000100014000000803F000000000000803F0D000000040000100014000000803F000000000000803F0E000000040000100014000000803F000000000000803F0F000000040000100014000000803F000000000000803F10000000040000100014000000803F000000000000803F11000000040000100014000000803F000000000000803F12000000040000100014000000803F000000000000803F13000000040000100014000000803F000000000000803F14000000040000100014000000803F000000000000803F15000000040000100014000000803F000000000000803F16000000040000100014000000803F000000000000803F17000000040000100014000000803F000000000000803F18000000040000100014000000803F000000000000803F19000000040000100014000000803F000000000000803F1A000000040000100014000000803F000000000000803F1B000000040000100014000000803F000000000000803F1C000000040000100014000000803F000000000000803F1D000000040000100014000000803F000000000000803F1E000000040000100014000000803F000000000000803F1F000000040000100014000000803F000000000000803F20000000040000100014000000803F000000000000803F21000000040000100014000000803F000000000000803F22000000040000100014000000803F000000000000803F23000000040000100014000000803F000000000000803F24000000040000100014000000803F000000000000803F25000000040000100014000000803F000000000000803F26000000040000100014000000803F000000000000803F27000000040000100014000000803F000000000000803F28000000040000100014000000803F000000000000803F29000000040000100014000000803F000000000000803F2A000000040000100014000000803F000000000000803F2B000000040000100014000000803F000000000000803F2C000000040000100014000000803F000000000000803F2D000000040000100014000000803F000000000000803F2E000000040000100014000000803F000000000000803F2F000000040000100014000000803F000000000000803F30000000040000100014000000803F000000000000803F31000000040000100014000000803F000000000000803F32000000040000100014000000803F000000000000803F33000000040000100014000000803F000000000000803F34000000040000100014000000803F000000000000803F35000000040000100014000000803F000000000000803F36000000040000100014000000803F000000000000803F37000000040000100014000000803F000000000000803F38000000040000100014000000803F000000000000803F39000000040000100014000000803F000000000000803F3A000000040000100014000000803F000000000000803F3B000000040000100014000000803F000000000000803F3C000000040000100014000000803F000000000000803F3D000000040000100014000000803F000000000000803F3E000000040000100014000000803F000000000000803F3F000000040000100014000000803F000000000000803F40000000040000100014000000803F000000000000803F41000000040000100014000000803F000000000000803F42000000040000100014000000803F000000000000803F43000000040000100014000000803F000000000000803F44000000040000100014000000803F000000000000803F45000000040000100014000000803F000000000000803F46000000040000100014000000803F000000000000803F47000000040000100014000000803F000000000000803F48000000040000100014000000803F000000000000803F49000000040000100014000000803F000000000000803F4A000000040000100014000000803F000000000000803F4B000000040000100014000000803F000000000000803F4C000000040000100014000000803F000000000000803F4D000000040000100014000000803F000000000000803F4E000000040000100014000000803F000000000000803F4F000000040000100014000000803F000000000000803F50000000040000100014000000803F000000000000803F54000000040000100014000000803F000000000000803F56000000040000100014000000803F000000000000803F5C000000040000100014000000803F000000000000803F5D000000040000100014000000803F000000000000803F5E000000040000100014000000803F000000000000803F5F000000040000100014000000803F000000000000803F60000000040000100014000000803F000000000000803F61000000040000100014000000803F000000000000803F62000000040000100014000000803F000000000000803F63000000040000100014000000803F000000000000803F64000000040000100014000000803F000000000000803F65000000040000100014000000803F000000000000803F66000000040000100014000000803F000000000000803F67000000040000100014000000803F000000000000803F68000000040000100014000000803F000000000000803F69000000040000100014000000803F000000000000803F6A000000040000100014000000803F000000000000803F6B000000040000100014000000803F000000000000803F6C000000040000100014000000803F000000000000803F6D000000040000100014000000803F000000000000803F6E000000040000100014000000803F000000000000803F6F000000040000100014000000803F000000000000803F70000000040000100014000000803F000000000000803F71000000040000100014000000803F000000000000803F72000000040000100014000000803F000000000000803F73000000040000100014000000803F000000000000803F74000000040000100014000000803F000000000000803F75000000040000100014000000803F000000000000803F76000000040000100014000000803F000000000000803F77000000040000100014000000803F000000000000803F78000000040000100014000000803F000000000000803F79000000040000100014000000803F000000000000803F7A000000040000100014000000803F000000000000803F7B000000040000100014000000803F000000000000803F7C000000040000100014000000803F000000000000803F7D000000040000100014000000803F000000000000803F7E000000040000100014000000803F000000000000803F7F000000040000100014000000803F000000000000803F80000000040000100014000000803F000000000000803F81000000040000100014000000803F000000000000803F82000000040000100014000000803F000000000000803F83000000040000100014000000803F000000000000803F84000000040000100014000000803F000000000000803F85000000040000100014000000803F000000000000803F86000000040000100014000000803F000000000000803F87000000040000100014000000803F000000000000803F88000000040000100014000000803F000000000000803F89000000040000100014000000803F000000000000803F8A000000040000100014000000803F000000000000803F8B000000040000100014000000803F000000000000803F8C000000040000100014000000803F000000000000803F8D000000040000100014000000803F000000000000803F8E000000040000100014000000803F000000000000803F8F000000040000100014000000803F000000000000803F90000000040000100014000000803F000000000000803F91000000040000100014000000803F000000000000803F92000000040000100014000000803F000000000000803F93000000040000100014000000803F000000000000803F94000000040000100014000000803F000000000000803F95000000040000100014000000803F000000000000803F96000000040000100014000000803F000000000000803F97000000040000100014000000803F000000000000803F98000000040000100014000000803F000000000000803F99000000040000100014000000803F000000000000803F9A000000040000100014000000803F000000000000803F9B000000040000100014000000803F000000000000803F9C000000040000100014000000803F000000000000803F9D000000040000100014000000803F000000000000803F9E000000040000100014000000803F000000000000803F9F000000040000100014000000803F000000000000803FA0000000040000100014000000803F000000000000803FA1000000040000100014000000803F000000000000803FA2000000040000100014000000803F000000000000803FA3000000040000100014000000803F000000000000803FA4000000040000100014000000803F000000000000803FA5000000040000100014000000803F000000000000803FA6000000040000100014000000803F000000000000803FA7000000040000100014000000803F000000000000803FA8000000040000100014000000803F000000000000803FA9000000040000100014000000803F000000000000803FAA000000040000100014000000803F000000000000803FAB000000040000100014000000803F000000000000803FAC000000040000100014000000803F000000000000803FAD000000040000100014000000803F000000000000803FAE000000040000100014000000803F000000000000803FAF000000040000, ROWCOUNT = 175, PAGECOUNT = 6
GO
/****** Object:  Statistic [_WA_Sys_00000002_24285DB4]     ******/
CREATE STATISTICS [_WA_Sys_00000002_24285DB4] ON [dbo].[tinh]([tentinh]) WITH STATS_STREAM = 0x0100000001000000000000000000000072CEE98B0000000094070000000000005407000000000000E7020000E7000000280000000000000008D000340100000007000000326983014BA20000250000000000000025000000000000000000803FC967DD3C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001A0000001A0000000100000010000000E4B38E410000144200000000E4B38E41000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000D804000000000000F005000000000000D000000000000000ED000000000000001401000000000000390100000000000062010000000000008901000000000000B001000000000000D301000000000000F6010000000000001B0200000000000044020000000000006B020000000000009202000000000000B902000000000000E00200000000000005030000000000002C0300000000000051030000000000007A03000000000000A303000000000000D003000000000000FB030000000000002A040000000000005D040000000000008A04000000000000B304000000000000300010000000803F000000000000803F04000001001D00310030003000300010000000803F000000000000803F0400000100270031003200300061007300640073006400300010000000803F000000000000803F040000010025004200AF1E630020004300A11E6E00300010000000803F000000000000803F040000010029004200AF1E630020004700690061006E006700300010000000803F000000000000803F04000001002700430061006F0020004200B11E6E006700300010000000803F000000000000803F040000010027004800E00020004700690061006E006700300010000000803F000000000000803F040000010023004800E00020004E0061006D00300010000000803F000000000000803F040000010023004800E00020004E00D91E6900300010000000803F000000000000803F040000010025004800E0002000540029016E006800300010000000803F000000000000803F040000010029004800A31E690020004400B001A1016E006700300010000000803F000000000000803F0400000100270048006F00E00020004200EC006E006800300010000000803F000000000000803F040000010027004800B0016E00670020005900EA006E00300010000000803F000000000000803F040000010027004C0061006900200043006800E2007500300010000000803F000000000000803F040000010027004C00A11E6E00670020005300A1016E00300010000000803F000000000000803F040000010025004C00E0006F002000430061006900300010000000803F000000000000803F040000010027004E0061006D0020001001CB1E6E006800300010000000803F000000000000803F040000010025004E0067006800C71E200041006E00300010000000803F000000000000803F040000010029004E0069006E00680020004200EC006E006800300010000000803F0000A0400000803F0400000100290051007500A31E6E006700200054007200CB1E300010000000803F0000C0400000803F04000001002D005400C91E6E00680020004800E00020005400E2007900300010000000803F000000000000803F04000001002B005400500020001001E00020004E00B51E6E006700300010000000803F000000000000803F04000001002F005400500020004800A31E6900200050006800F2006E006700300010000000803F000000000000803F040000010033005400500020004800D31E200043006800ED0020004D0069006E006800300010000000803F000000000000803F04000001002D00540075007900EA006E0020005100750061006E006700300010000000803F000000000000803F04000001002900560029016E006800200050006800FA006300300010000000803F000000000000803F040000010025005900EA006E0020004200E1006900FF01000000000000000B0000000B0000002800000028000000000000000000000054000000310030003000430061006F0020004200B11E6E0067004800E00020004E00D91E6900B0016E00670020005900EA006E004C00E0006F0020004300610069004E0069006E00680020004200EC006E00680051007500A31E6E00670020004E006700E30069005300A1016E0020004C0061005400680061006E006800200048006F00E100500020001001E00020004E00B51E6E00670075007900EA006E0020005100750061006E0067000E000000400000000081030000008108030000C0010B000081050C00000107110000810718000081091F0000810A2800008106320000400138000081083900008109410000010A4A000000
GO
/****** Object:  Statistic [PK_tinh]     ******/
UPDATE STATISTICS [dbo].[tinh]([PK_tinh]) WITH STATS_STREAM = 0x01000000010000000000000000000000DCDAA17100000000D9050000000000009905000000000000380300003800000004000A0000000000000000000100000007000000DE4C0B014BA200002300000000000000230000000000000000000000A10EEA3C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000230000002300000001000000140000000000804000000C4200000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000003D0400000000000018010000000000002F0100000000000046010000000000005D0100000000000074010000000000008B01000000000000A201000000000000B901000000000000D001000000000000E701000000000000FE0100000000000015020000000000002C0200000000000043020000000000005A02000000000000710200000000000088020000000000009F02000000000000B602000000000000CD02000000000000E402000000000000FB0200000000000012030000000000002903000000000000400300000000000057030000000000006E0300000000000085030000000000009C03000000000000B303000000000000CA03000000000000E103000000000000F8030000000000000F040000000000002604000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F02000000040000100014000000803F000000000000803F03000000040000100014000000803F000000000000803F04000000040000100014000000803F000000000000803F05000000040000100014000000803F000000000000803F06000000040000100014000000803F000000000000803F07000000040000100014000000803F000000000000803F08000000040000100014000000803F000000000000803F09000000040000100014000000803F000000000000803F0A000000040000100014000000803F000000000000803F0B000000040000100014000000803F000000000000803F0C000000040000100014000000803F000000000000803F0D000000040000100014000000803F000000000000803F0E000000040000100014000000803F000000000000803F0F000000040000100014000000803F000000000000803F10000000040000100014000000803F000000000000803F11000000040000100014000000803F000000000000803F12000000040000100014000000803F000000000000803F13000000040000100014000000803F000000000000803F14000000040000100014000000803F000000000000803F15000000040000100014000000803F000000000000803F16000000040000100014000000803F000000000000803F17000000040000100014000000803F000000000000803F18000000040000100014000000803F000000000000803F19000000040000100014000000803F000000000000803F1A000000040000100014000000803F000000000000803F1B000000040000100014000000803F000000000000803F1C000000040000100014000000803F000000000000803F1D000000040000100014000000803F000000000000803F1E000000040000100014000000803F000000000000803F1F000000040000100014000000803F000000000000803F20000000040000100014000000803F000000000000803F21000000040000100014000000803F000000000000803F22000000040000100014000000803F000000000000803F23000000040000, ROWCOUNT = 35, PAGECOUNT = 1
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dantoc', @level2type=N'COLUMN',@level2name=N'madt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dantoc', @level2type=N'COLUMN',@level2name=N'tendt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dantoc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'phongthi', @level2type=N'COLUMN',@level2name=N'sbd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'thisinh', @level2type=N'COLUMN',@level2name=N'ngaysinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "phongthi"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 188
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "view_hoso"
            Begin Extent = 
               Top = 6
               Left = 241
               Bottom = 178
               Right = 406
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_bothi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_bothi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[14] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "diem"
            Begin Extent = 
               Top = 32
               Left = 83
               Bottom = 162
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "view_phach"
            Begin Extent = 
               Top = 7
               Left = 337
               Bottom = 157
               Right = 502
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "view_hoso"
            Begin Extent = 
               Top = 8
               Left = 598
               Bottom = 159
               Right = 763
            End
            DisplayFlags = 280
            TopColumn = 11
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_diem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_diem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "view_diem"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 188
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_diemmon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_diemmon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[22] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "view_hoso"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 200
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "phongthi"
            Begin Extent = 
               Top = 13
               Left = 262
               Bottom = 162
               Right = 427
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "diadiem"
            Begin Extent = 
               Top = 35
               Left = 607
               Bottom = 173
               Right = 772
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_giaybaothi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_giaybaothi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[18] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "thisinh"
            Begin Extent = 
               Top = 0
               Left = 265
               Bottom = 174
               Right = 422
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 975
         Width = 1770
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_hoso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_hoso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[24] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "phach"
            Begin Extent = 
               Top = 36
               Left = 246
               Bottom = 171
               Right = 411
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "mamon"
            Begin Extent = 
               Top = 103
               Left = 34
               Bottom = 190
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "diadiem"
            Begin Extent = 
               Top = 55
               Left = 509
               Bottom = 202
               Right = 674
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_phach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_phach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[10] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "thisinh"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "phongthi"
            Begin Extent = 
               Top = 6
               Left = 241
               Bottom = 146
               Right = 406
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "diadiem"
            Begin Extent = 
               Top = 6
               Left = 444
               Bottom = 145
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_phongthi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_phongthi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "view_diemmon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 200
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dantoc"
            Begin Extent = 
               Top = 6
               Left = 257
               Bottom = 93
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_tongdiem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_tongdiem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[15] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "view_tongdiem"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 187
               Right = 203
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "thisinh"
            Begin Extent = 
               Top = 6
               Left = 241
               Bottom = 187
               Right = 406
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "khuvuc"
            Begin Extent = 
               Top = 6
               Left = 444
               Bottom = 108
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "doituong"
            Begin Extent = 
               Top = 6
               Left = 647
               Bottom = 108
               Right = 812
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "nganh"
            Begin Extent = 
               Top = 6
               Left = 850
               Bottom = 108
               Right = 1015
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_tongdiem_cong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_tongdiem_cong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_tongdiem_cong'
GO
USE [master]
GO
ALTER DATABASE [QLTSDH] SET  READ_WRITE 
GO
