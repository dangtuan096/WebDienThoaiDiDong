USE [master]
GO
/****** Object:  Database [DienThoaiDiDong]    Script Date: 6/17/2016 7:48:23 PM ******/
CREATE DATABASE [DienThoaiDiDong]
Go
USE [DienThoaiDiDong]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 6/17/2016 7:48:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[hoadon_id] [int] NOT NULL,
	[sanpham_id] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[hoadon_id] ASC,
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 6/17/2016 7:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[hoadon_id] [int] IDENTITY(1,1) NOT NULL,
	[ngaygiao] [datetime] NULL,
	[ngaydat] [datetime] NULL,
	[dathanhtoan] [nvarchar](50) NULL,
	[tinhtranggiaohang] [nvarchar](50) NULL,
	[khachhang_id] [int] NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[hoadon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 6/17/2016 7:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[khachhang_id] [int] IDENTITY(1,1) NOT NULL,
	[khachhang_name] [nvarchar](50) NULL,
	[khachhang_ns] [date] NULL,
	[khachhang_diachi] [nvarchar](50) NULL,
	[khachhang_sdt] [nchar](15) NULL,
	[khachhang_taikhoan] [nvarchar](50) NULL,
	[khachhang_matkhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[khachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 6/17/2016 7:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[sanpham_id] [int] IDENTITY(1,1) NOT NULL,
	[sanpham_name] [nvarchar](50) NULL,
	[gia_sanpham] [int] NULL,
	[soluong_sp] [int] NULL,
	[theloai_id] [nvarchar](50) NULL,
	[hinhanh_sp] [text] NULL,
	[hinhanh_sp1] [text] NULL,
	[hinhanh_sp3] [text] NULL,
	[hinhanh_sp4] [text] NULL,
	[kichthuoc_hinhanh] [text] NULL,
	[camera_truoc] [text] NULL,
	[camera_sau] [text] NULL,
	[he_dieu_hanh] [nvarchar](200) NULL,
	[cpu] [nvarchar](200) NULL,
	[ram] [nvarchar](200) NULL,
	[bo_nho_trong] [nvarchar](200) NULL,
	[the_nho] [nvarchar](200) NULL,
	[sim] [nvarchar](200) NULL,
	[ket_noi] [nvarchar](200) NULL,
	[pin] [nvarchar](100) NULL,
	[chuthich] [nvarchar](500) NULL,
	[moi] [int] NULL,
	[style] [int] NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[theloaisp]    Script Date: 6/17/2016 7:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theloaisp](
	[theloai_id] [nvarchar](50) NOT NULL,
	[theloai_name] [nvarchar](50) NULL,
	[phukien] [int] NULL,
	[parent_id] [nchar](10) NULL,
 CONSTRAINT [PK_theloaisp] PRIMARY KEY CLUSTERED 
(
	[theloai_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 6/17/2016 7:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Taikhoan] [nvarchar](50) NOT NULL,
	[Matkhau] [nvarchar](20) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[chitiethoadon] ([hoadon_id], [sanpham_id], [soluong], [dongia]) VALUES (1, 7, 4, 19990000)
INSERT [dbo].[chitiethoadon] ([hoadon_id], [sanpham_id], [soluong], [dongia]) VALUES (1, 14, 1, 3790000)
INSERT [dbo].[chitiethoadon] ([hoadon_id], [sanpham_id], [soluong], [dongia]) VALUES (1, 19, 1, 5990000)
INSERT [dbo].[chitiethoadon] ([hoadon_id], [sanpham_id], [soluong], [dongia]) VALUES (2, 7, 1, 19990000)
INSERT [dbo].[chitiethoadon] ([hoadon_id], [sanpham_id], [soluong], [dongia]) VALUES (2, 14, 1, 3790000)
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([hoadon_id], [ngaygiao], [ngaydat], [dathanhtoan], [tinhtranggiaohang], [khachhang_id]) VALUES (1, NULL, CAST(N'2016-06-14 21:09:18.737' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[hoadon] ([hoadon_id], [ngaygiao], [ngaydat], [dathanhtoan], [tinhtranggiaohang], [khachhang_id]) VALUES (2, NULL, CAST(N'2016-06-15 19:56:04.937' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[hoadon] OFF
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (1, N'Lê Thị Thanh Huyền', CAST(N'1997-06-01' AS Date), N'Nghệ an', N'0983730144     ', N'Huyen', N'010695')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (2, N'Trần thị Ngọc', CAST(N'1997-03-12' AS Date), N'Hải Dương', N'09746232       ', N'NgocNgo', N'120395')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (3, N'Dương Thị Anh', CAST(N'1997-02-19' AS Date), N'Hải Dương', N'0962075028     ', N'AnhDuong', N'190295')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (4, N'Vũ Thị Hằng', CAST(N'1994-02-02' AS Date), N'Nam Định', N'097647232      ', N'Hang', N'020294')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (5, N'Phạm Tất Đạt', CAST(N'1997-08-19' AS Date), N'Hà Nội', N'09436432       ', N'Dat', N'190895')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (6, N'Nguyễn Mai Châu', CAST(N'1997-10-01' AS Date), N'Hà Nội', N'09465233       ', N'Chau', N'10102707')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (7, N'Nguyễn Thị Thêu', CAST(N'2016-04-06' AS Date), N'Bắc Ninh', N'0973462234     ', N'Theumoa', N'12345678')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (8, N'Nguyễn Thị Thắm', CAST(N'2000-10-01' AS Date), N'Hà Nội', N'0975635226     ', N'ThamTro', N'011000')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (9, N'Nguyễn Thị Phương Linh', CAST(N'1997-08-25' AS Date), N'Hà Nội', N'0965423322     ', N'Linh', N'250895')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (10, N'Nguyễn Thị Phương', CAST(N'1997-08-25' AS Date), N'Hà Nội', N'0965423322     ', N'Phuong', N'250895')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (11, N'Nguyễn Thị Phương An', CAST(N'1997-08-25' AS Date), N'Hà Nội', N'09654876       ', N'PhuongAn', N'250895')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (12, N'Nguyễn Thị An', CAST(N'1997-02-02' AS Date), N'Hà Nội', N'097634232      ', N'An', N'020295')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (13, N'Nguyễn Thị Huyền', CAST(N'1997-02-03' AS Date), N'Hà Nội', N'097634874      ', N'Huyen1', N'030295')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (15, N'Lê Thị Ngọc', CAST(N'2016-05-02' AS Date), N'Hà Nội', N'09465233       ', N'Ngoc', N'02052016')
INSERT [dbo].[khachhang] ([khachhang_id], [khachhang_name], [khachhang_ns], [khachhang_diachi], [khachhang_sdt], [khachhang_taikhoan], [khachhang_matkhau]) VALUES (16, N'Nguyễn Văn Tân', CAST(N'1986-06-08' AS Date), N'Hà Nội', N'0947532472     ', N'Tantro', N'080686')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (5, N'Iphone 5S 16GB', 8490000, 4, N'TL01', N'iphone5s.jpg', NULL, NULL, NULL, NULL, N'1,2MP', N'8MP', N'iOs9', N'Apple A7 2 nhân 64bit, 1.3GHz', N'1GB', N'16GB', N'Không', N'1 sim,nano sim', N'wiffi,3G,4G LTE cat4', N'1560 mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (6, N'OPPO NEO7', 3990000, 2, N'TL03', N'OPPO NEO 7 - A33W.jpg', NULL, NULL, NULL, NULL, N'5MP', N'8MP', N'Android 5.1', N' MTK 6582 4 nhân 32bit, 1.3GHz', N'1GB', N'16GB', N'MicroSD(T-Flash) 32GB', N'2 sim 2 sóng 1nano+1 Micro', N'wiffi,3G,không hỗ trợ 4G', N'2420mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (7, N'Samsung Galaxy S6 Edge Plus', 19990000, 4, N'TL01', N'samsung-galaxy-s6-edge-plus-12-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'16MP', N'Android 5.1', N'Exynos 7420 8 nhân 64bit,4 nhân 1.5GHz Cortex-A53& 4 nhân 2.1GHz Cortex A57', N'4GB', N'32GB', N'không', N'1 sim,nano sim', N'wiffi,3G,4G LTE Cat6', N'3000 mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (8, N'Iphone 6S 16GB', 18890000, 1, N'TL02', N'iphone-6s-plus-16gb-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'12MP', N'iOS9', N'Apple A9 2 nhân 64bit, 1.8GHz', N'2GB', N'16GB', N'Không', N'1 sim,nano sim', N'wiffi,3G,4G LTE Cat6', N'1715mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (9, N'Iphone 4S 8GB', 3990000, 5, N'TL02', N'iphone-4s-8gb-300-nowatermark-190x190.jpg', NULL, NULL, NULL, NULL, N'VGA 0.3MP', N'8MP', N'iOS 8.0', N'Apple A5 2 nhân 32bit,1GHz', N'512MB', N'8GB', N'KHông', N'1 sim,micro sim', N'wifi,3G,không hỗ trợ 4G', N'1420mAh', NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (10, N'HTC ONE E9 DUAL SIM', 749000, 3, N'TL05', N'htc-one-e9-dual-hero-product-400x533.png', NULL, NULL, NULL, NULL, N'4Ultra Pixel', N'13MP', N'Android 5.0', N'MTK 6795 Helio x10 8 nhân 64bit ,2GHz', N'2GB', N'16GB', N'MicroSD T-Flash 2TB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,có hỗ trợ 4G', N'2080mAh', NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (11, N'HTC ONE E8 DUAL', 6390000, 5, N'TL05', N'htc-one-e8-dual-new-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'13MP', N'Android 5.1', N'Qualcomm Snapdragon 801 4 nhân 32bit, 2.5GHz', N'2GB', N'16GB', N'MicroSD T-Flash 128GB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,4G LTE Cat4', N'2600mA', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (12, N'HTC DESIRE 728G', 4990000, 2, N'TL01', N'htc-desire-728-11-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'13MP', N'Android 5.1', N'MTK 6753 8 nhân 64bit,1.3GHz', N'1,5GB', N'16GB', N'MicroSD 2TB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,không hỗ trợ 4G', N'2800 mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (13, N'HTC DESIRE 620G', 3790000, 5, N'TL05', N'htc-desire-620g-nowatermark-190x190.jpg', NULL, NULL, NULL, NULL, N'5MP', N'8MP', N'Android 4.4', N'MT 6592 8 nhân 32bit,1.7GHz', N'1GB', N'8GB', N'MicroSD(T-Flash) 32Gb', N'2 sim 2 sóng micro sim', N'wiffi,3G,không hỗ trợ 4G', N'2100mAh', NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (14, N'HTC DESIRE 626G', 3790000, 3, N'TL05', N'htc-desire-626g-300-nowatermark-200x200.jpg', NULL, NULL, NULL, NULL, N'5MP', N'13MP', N'Android 4.4', N'MTK 6752 8 nhân 62bit ,1.7GHz', N'1GB', N'8GB', N'MicroSD 32GB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,không hỗ trợ 4G', N'2000', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (15, N'HTC DESIRE 820G', 3990000, 2, N'TL05', N'htc-desire-820g-global-sketchfab-white-gray-443x425.png', NULL, NULL, NULL, NULL, N'8MP', N'3MP', N'Android 4.4', N'MT 6592 8 nhân 32bit, 1.7GHz', N'1GB', N'16GB', N'MicroSD(t-Flash) 32GB', N'2 sim 2 sóng ,nano sim', N'wiffi,3G,không hỗ trợ 4G', N'2600mAh', NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (16, N'OPPO R7 PLUS', 11490000, 4, N'TL03', N'oppo-r7-plus-18-200x200.jpg', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N' Snapdragon 615 8 nhân 64bit,Quad-core 1.5GHz+Quad-core 1GHz', N'3GB', N'32GB', N'MicroSD(T-Flash) 128GB', N' 2 sim,sim 2 chung khe cắm thẻ nhớ,nano sim', N'wiffi,3G,4G LTE Cat4', N'4100mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (17, N'OPPO R7S', 8990000, 2, N'TL03', N'oppo-r7s-1-400x533-400x533.png', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N'Snapdragon 615 8 nhân 64bit,Quad-core 1.5GHz+Quad-core 1GHz', N'4GB', N'32GB', N'MicroSD(T-Flash)1282GB', N'2 sim,sim 2 chung khe cắm thẻ nhớ,1 nano sim 1 micro sim', N'wiffi,3G,4G LTE Cat4', N'3070mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (18, N'OPPO F1', 5990000, 4, N'TL03', N'oppo-f1-hero-460x529.png', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N'Qualcomm Snapdragon 8 nhân 64bit, 1.5GHz', N'3GB', N'16GB', N'MicroSD 128GB', N'2 sim,sim 2 chung khe cắm thẻ nhớ,1 nano sim +1 micro sim', N'wiffi,3G,không hỗ trợ 4G', N'2500mAh', NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (19, N'OPPO R7 LITE', 5990000, 4, N'TL03', N'oppo-r7-detail-400x533.png', NULL, NULL, NULL, NULL, N'8MP', N'13MP', N'Android 5.1', N'Snapdragon 615 8 nhân 64bit,4 nhân 1.3GHz+ 4 nhân 1.0GHz', N'4GB', N'16GB', N'MicroSD(T-Flash) 128GBl', N'2 sim,sim2 chung khe cắm thẻ nhớ,1 nano sim 1 micro sim', N'wiffi,3G,4G LTE Cat4', N'2320mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (20, N'OPPO MIROR 5', 4900000, 5, N'TL03', N'oppo-mirror-5-hp-400x533.png', NULL, NULL, NULL, NULL, N'5MP', N'8MP', N'Android 5.1', N'Qualcomm Snapdragon 410 4 nhân 64bit,1.2GHz', N'2GB', N'16GB', N'MicroSD(T-Flash) 128GB', N'2 sim 2 sóng,1 nano+1 micro', N'Không hỗ trợ 4G', N'2420mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (21, N'OPPO NEO 5', 2690000, 5, N'TL03', N'oppo-neo-5-16gb-200x200.jpg', NULL, NULL, NULL, NULL, N'2MP', N'8MP', N'Android 4.4', N'MTK 6582 4 nhân 32bit,1.3GHz ', N'1GB', N'8GB', N'MicroSD(T-Flash) 32GB', N'2 sim 2 sóng,1 nano+1 micro', N'wiffi,3G,không hỗ trợ 4G', N'2000mAh', NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (22, N'OPPO JOY 3', 2490000, 3, N'TL03', N'oppo-joy-3-16gb-400x533.png', NULL, NULL, NULL, NULL, N'2MP', N'5MP', N'Android 4.4', N'MTK 6582M 4 nhân 32bit,1.3GHz', N'1GB', N'4GB', N'MicroSD(T-Flash) 32 GB', N'2 sim 2 sóng,nano sim', N'wiffi,3G,không hỗ trỡ 4G', N'2000mAh', NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (23, N'OPPO JOY R1011', 1990000, 1, N'TL03', N'oppo-joy-plus-r1011-533-400x533.png', NULL, NULL, NULL, NULL, N'null', N'3MP', N'Android 4.4', N'2 nhân,1.3GHz', N'1GB', N'null', N'Null', N'2 sim', N'null', N'1700mAh', NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (24, N'SONY XPERIA Z5 PREMIUM', 19990000, 2, N'TL04', N'sony-xperia-z5-premium-17-200x200.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (25, N'SONY XPERIA Z5 DUAL', 13990000, 3, N'TL04', N'sony-xperia-z5-dual-400x460.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (26, N'SONY XPERIA M5 DUAL', 9490000, 4, N'TL04', N'sony-xperia-m5-dual-hero-400x534.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (27, N'SONY XPERIA M4 AQUA', 4990000, 4, N'TL04', N'sony-xperia-m4-aqua-lte-10-200x200.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (29, N'Tai nghe chụp tai Genius HS-200C', 110000, 10, N'TL11', N'tai-nghe-chup-tai-genius-hs-200c-1-300x300.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Thiết kế đơn giản và tiện dụng.
Lớp đệm tai mềm cho cảm giác thoải mái khi đeo.
Chất lượng âm thanh Stereo sống động.
Tích hợp Micro đàm thoại.
Tương thích với hầu hết các thiết bị điện tử.', 1, 1)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (30, N'Tai nghe EP Kanen IP-226', 160000, 10, N'TL11', N'Tai nghe EP Kanen IP-226.jpg', N'tai-nghe-chup-tai-kanen-ip-3505.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Thiết kế đơn giản, trẻ trung và hợp thời trang.
Chất lượng âm tai nghe truyền tải khá ấm và nịnh tai.
Thiết kế dây dẹp chống rối.
Có phím điều khiển thuận tiện cho người dùng.
Có khả năng tương thích tốt với các dòng điện thoại.', 1, 1)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (31, N'Tai nghe chup tai Kanen IP-350', 160000, 10, N'TL11', N'tai-nghe-chup-tai-kanen-ip-3503.jpg', N'tai-nghe-chup-tai-kanen-ip-3503.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Thiết kế trẻ trung và hiện đại.
Âm thanh chất lượng, sống động.
Lớp đệm tai mềm và bám tai cho cảm giác thoải mái khi đeo.
Jack 3.5mm tiện dụng, phù hợp với đa số dòng máy.', 1, 1)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (32, N'Tai nghe chup tai Kanen IP-2050', 320000, 10, N'TL11', N'Tai nghe chup tai Kanen IP-2050.jpg', N'tai-nghe-chup-tai-kanen-ip-20501.jpg', N'tai-nghe-chup-tai-kanen-ip-20506.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hiết kế trẻ trung, có thể gấp gọn rất tiện dụng.
Chất lượng âm thanh trung thực, sống động.
Chất liệu cao cấp và bền bỉ.
Tương thích với hầu hết các thiết bị nghe nhạc.', 1, 1)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (40, N'Ốp lưng Galaxy J7', 50000, 3, N'TL12', N'op-lung-galaxy-j7-2016-nude-hong-org-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Ốp lưng Galaxy J7 nhựa dẻo Nude Hồng tuy có thiết kế đơn giản, kiểu dáng không quá cầu kỳ, nhưng lại đảm bảo giữ nguyên được vẻ đẹp tự nhiên nhất của chiếc điện thoại khi phô trọn mặt lưng máy cùng với logo hãng điện thoại. Thiết kế mang đến cho chiếc Galaxy J7 của bạn màu sắc tươi mới với sự phối hợp màu bắt mắt càng làm cho chiếc điện thoại thêm nổi bật, đẹp và hợp thời trang hơn. ', 1, 1)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (43, N'Pin sạc dự phòng 7500 mAh ECO Y39A', 200000, 2, N'TL13', N'pin-sac-du-phong-7500-mah-eco-y39a-xanhduong-org-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Thiết kế kiểu dáng sang trọng  Pin sạc dự phòng 7500 mAh ECO Y39A có thiết kế dạng hình hộp chữ nhật với màu trắng kết hợp với xanh dương trông sang trọng, hợp với cả nam lẫn nữ. Với thiết kế này, người dùng có thể dễ dàng cầm nắm và bỏ vào balo, túi xách mà không chiếm bao nhiêu vị trí.', 1, 1)
INSERT [dbo].[sanpham] ([sanpham_id], [sanpham_name], [gia_sanpham], [soluong_sp], [theloai_id], [hinhanh_sp], [hinhanh_sp1], [hinhanh_sp3], [hinhanh_sp4], [kichthuoc_hinhanh], [camera_truoc], [camera_sau], [he_dieu_hanh], [cpu], [ram], [bo_nho_trong], [the_nho], [sim], [ket_noi], [pin], [chuthich], [moi], [style]) VALUES (44, N'Pin sạc dự phòng 10000 mAh Xmobile JD-P01 Mèo', 620000, 1, N'TL15', N'pin-sac-du-phong-10000-mah-xmobile-jd-p01-2-org-meo9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Pin sạc dự phòng Xmobile JD-P01 Mèo thật sự đã đánh mạnh vào tâm lý người dùng về một sản phẩm có thiết kế đẹp mắt, kiểu dáng mới lạ khác xa so với những pin sạc trước đây.Sản phẩm đáng được mong đợi với dung lượng pin lên đến 10000 mah cho khả năng chịu tải cao, cung cấp dòng điện được nhiều hơn; song song đó còn được trang bị thêm 2 cổng ra USB cho phép người dùng lựa chọn cổng sạc thích hợp để sạc đầy trong thời gian ngắn.', 1, 1)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL01', N'SAMSUNG ', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL02', N'IPHONE', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL03', N'OPPO', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL04', N'SONY', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL05', N'HTC', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL06', N'SKY', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL07', N'LG', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL08', N'ASUS', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL09', N'NOKIA', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL10', N'MÁY TÍNH BẢNG', 0, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL11', N'Tai Nghe', 1, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL12', N'Ốp Lưng', 1, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL13', N'Cáp Sạc', 1, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL14', N'Gậy Selfie', 1, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL15', N'Pin', 1, NULL)
INSERT [dbo].[theloaisp] ([theloai_id], [theloai_name], [phukien], [parent_id]) VALUES (N'TL16', N'Miếng Dán Màn Hình', 1, NULL)
INSERT [dbo].[User] ([Taikhoan], [Matkhau]) VALUES (N'Admin', N'123456')
INSERT [dbo].[User] ([Taikhoan], [Matkhau]) VALUES (N'Huyen', N'matkhaulagi')
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_hoadon] FOREIGN KEY([hoadon_id])
REFERENCES [dbo].[hoadon] ([hoadon_id])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_hoadon]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_sanpham] FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[sanpham] ([sanpham_id])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_sanpham]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_khachhang] FOREIGN KEY([khachhang_id])
REFERENCES [dbo].[khachhang] ([khachhang_id])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_hoadon_khachhang]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_theloaisp] FOREIGN KEY([theloai_id])
REFERENCES [dbo].[theloaisp] ([theloai_id])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_theloaisp]
GO
USE [master]
GO
ALTER DATABASE [DienThoaiDiDong] SET  READ_WRITE 
GO
