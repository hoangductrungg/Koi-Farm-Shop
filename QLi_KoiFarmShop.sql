CREATE DATABASE [QLi_KoiFarmShop]
GO
USE [QLi_KoiFarmShop]
GO
/****** Object:  Table [dbo].[tAnhChiTietSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhChiTietSP](
	[MaChiTietSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tAnhSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChatLieu]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatLieu](
	[MaChatLieu] [char](25) NOT NULL,
	[ChatLieu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[MaHoaDon] [char](25) NOT NULL,
	[MaChiTietSP] [char](25) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietSanPham]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietSanPham](
	[MaChiTietSP] [char](25) NOT NULL,
	[MaSP] [char](25) NULL,
	[MaKichThuoc] [char](25) NULL,
	[MaMauSac] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[Video] [char](100) NULL,
	[DonGiaBan] [float] NULL,
	[GiamGia] [float] NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_tChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](25) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaChatLieu] [char](25) NULL,
	[NganLapTop] [nvarchar](55) NULL,
	[Model] [nvarchar](55) NULL,
	[CanNang] [float] NULL,
	[DoNoi] [float] NULL,
	[MaHangSX] [char](25) NULL,
	[MaNuocSX] [char](25) NULL,
	[MaDacTinh] [char](25) NULL,
	[Website] [char](155) NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [nvarchar](255) NULL,
	[ChietKhau] [float] NULL,
	[MaLoai] [char](25) NULL,
	[MaDT] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHangSX]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [char](25) NOT NULL,
	[HangSX] [nvarchar](100) NULL,
	[MaNuocThuongHieu] [char](25) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] [char](25) NOT NULL,
	[NgayHoaDon] [datetime] NULL,
	[MaKhachHang] [char](25) NULL,
	[MaNhanVien] [char](25) NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] [tinyint] NULL,
	[MaSoThue] [char](100) NULL,
	[ThongTinThue] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LoaiKhachHang] [tinyint] NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKichThuoc]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKichThuoc](
	[MaKichThuoc] [char](25) NOT NULL,
	[KichThuoc] [nchar](150) NULL,
 CONSTRAINT [PK_tKichThuoc] PRIMARY KEY CLUSTERED 
(
	[MaKichThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiDT]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiDT](
	[MaDT] [char](25) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMauSac]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMauSac](
	[MaMauSac] [char](25) NOT NULL,
	[TenMauSac] [nvarchar](100) NULL,
 CONSTRAINT [PK_tMauSac] PRIMARY KEY CLUSTERED 
(
	[MaMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNhanVien] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai1] [char](15) NULL,
	[SoDienThoai2] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tQuocGia]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tQuocGia](
	[MaNuoc] [char](25) NOT NULL,
	[TenNuoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](100) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koinhat0             ', N'koinhat-1.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koinhat1             ', N'koinhat-2.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koinhat2             ', N'koinhat-3.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koinhat3             ', N'koinhat-4.jpg                                                            ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koithai0             ', N'koithai-1.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koithai1             ', N'koithai-2.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koithai2             ', N'koithai-3.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koithai3             ', N'koithai-4.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koiviet0             ', N'koiviet-1.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koiviet1             ', N'koiviet-2.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koiviet2             ', N'koiviet-3.jpg                                                           ', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'koiviet3             ', N'koiviet-4.jpg                                                           ', NULL)
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'n                        ', N'Chất lượng cao')
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'string                   ', N'string')
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'v                        ', N'Bình thường')
GO
INSERT [dbo].[tChiTietHDB] ([MaHoaDon], [MaChiTietSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (N'1                        ', N'koinhat001           ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tChiTietHDB] ([MaHoaDon], [MaChiTietSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (N'1                        ', N'koinhat002           ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koinhat001           ', N'koinhat             ', N'7                        ', N'red                    ', N'koinhat-1.jpg                                                          ', NULL, 600000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koinhat002          ', N'koinhat             ', N'7                        ', N'red                     ', N'koinhat-2.jpg                                                          ', NULL, 700000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koinhat003           ', N'koinhat             ', N'5                        ', N'white                    ', N'koinhat-3.jpg                                                          ', NULL, 800000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koinhat004           ', N'koinhat          ', N'5                        ', N'white                     ', N'koinhat-4.jpg                                                          ', NULL, 900000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koithai001           ', N'koithai          ', N'6                        ', N'blue                    ', N'koithai-1.jpg                                                          ', NULL, 550000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koithai002           ', N'koithai          ', N'6                        ', N'red                     ', N'koithai-2.jpg                                                          ', NULL, 350000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koithai003           ', N'koithai          ', N'6                        ', N'red                    ', N'koithai-3.jpg                                                          ', NULL, 250000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koithai004           ', N'koithai          ', N'6                        ', N'yellow                    ', N'koithai-4.jpg                                                          ', NULL, 450000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koiviet001           ', N'koiviet          ', N'7                        ', N'blue                    ', N'koiviet-1.jpg                                                          ', NULL, 500000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koiviet002           ', N'koiviet          ', N'6                        ', N'white                    ', N'koiviet-2.jpg                                                          ', NULL, 600000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koiviet003           ', N'koiviet          ', N'7                        ', N'red                    ', N'koiviet-3.jpg                                                          ', NULL, 650000, NULL, 10)
GO
INSERT [dbo].[tChiTietSanPham] ([MaChiTietSP], [MaSP], [MaKichThuoc], [MaMauSac], [AnhDaiDien], [Video], [DonGiaBan], [GiamGia], [SLTon]) VALUES (N'koiviet004           ', N'koiviet          ', N'7                        ', N'yellow                    ', N'koiviet-4.jpg                                                          ', NULL, 750000, NULL, 10)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koinhat0              ', N'Ca Koi Dainichi boi tot', N'v                        ', NULL, NULL, 3, 2, N'rbh                      ', N'jp                       ', NULL, NULL, 2, N' bơi tốt,màu xuất sắc,tuổi thọ cao.', NULL, N'nhat                     ', N'kn                       ', N'koinhat-1.jpg                                                                 ', 600.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koinhat1             ', N'Ca Koi Dainichi mau chuan', N'v                        ', NULL, NULL, 3, 3, N'rbh                      ', N'jp                       ', NULL, NULL, 2, N'bơi tốt,màu đẹp,tuổi thọ cao.', NULL, N'nhat                     ', N'kn                       ', N'koinhat-2.jpg                                                                  ', 700.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koinhat2         ', N'Ca Koi Dainichi mau nhe', N'v                        ', NULL, NULL, 3, 3, N'rbh                      ', N'jp                       ', NULL, NULL, 2, N'bơi tốt, màu xấu,dễ chết.', NULL, N'nhat                     ', N'kn                       ', N'koinhat-3.jpg                                                                  ', 800.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koinhat3             ', N'Ca Koi Maruhio mau tap nham', N'n                        ', NULL, NULL, 4, 5, N'rbh                      ', N'jp                       ', NULL, NULL, 5, N' bơi tốt,màu ổn,tuổi thọ ổn.', NULL, N'nhat                     ', N'kn                       ', N'koinhat-4.jpg                                                           ', 900.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koithai0                ', N'Ca Koi sinh ra o oyaji', N'v                        ', NULL, NULL, 3.8, 5, N'ssh                      ', N'thai                       ', NULL, NULL, 5, N'bơi tốt,màu xuất sắc,tuổi thọ cao.', NULL, N'thai                     ', N'kt                       ', N'koithai-1.jpg                                                                    ', 550.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koithai1                 ', N'Ca Koi Dainichi lung linh', N'n                        ', NULL, NULL, 3.8, 5, N'ssh                      ', N'thai                       ', NULL, NULL, 10, N'bơi tốt,màu đẹp,tuổi thọ cao.', NULL, N'thai                     ', N'kt                       ', N'koithai-2.jpg                                                                     ', 350.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koithai2                 ', N'Ca Koi Dainichi thuan khiet', N'n                        ', NULL, NULL, 3.8, 5, N'ssh                      ', N'thai                       ', NULL, NULL, 5, N'bơi tốt,màu ổn,tuổi thọ ổn.', NULL, N'thai                     ', N'kt                       ', N'koithai-3.jpg                                                                   ', 250.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koithai3                 ', N'Ca Koi Dainichi dai tra', N'v                        ', NULL, NULL, 3.8, 5, N'ssh                      ', N'thai                       ', NULL, NULL, 10, N'bơi tốt, màu xấu,dễ chết.', NULL, N'thai                     ', N'kt                       ', N'koithai-4.jpg                                                                  ', 450.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koiviet0            ', N'Ca Koi Dainichi lai tap', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'vn                       ', NULL, NULL, 5, N'bơi tốt,màu xuất sắc,tuổi thọ cao.', NULL, N'viet                       ', N'kv                       ', N'koiviet-1.jpg                                                              ', 500.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koiviet1            ', N'Ca Koi Dainichi', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'vn                       ', NULL, NULL, 10, N'bơi tốt,màu đẹp,tuổi thọ cao.', NULL, N'viet                       ', N'kv                       ', N'koiviet-2.jpg                                                               ', 600.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koiviet2               ', N'Ca Koi Dainichi', N'n                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'vn                      ', NULL, NULL, 5, N'bơi tốt,màu ổn,tuổi thọ ổn.', NULL, N'viet                      ', N'kv                       ', N'koiviet-3.jpg                                                                       ', 650.000, 100.0000)
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'koiviet3               ', N'Ca Koi Dainichi', N'v                        ', NULL, NULL, 3.8, 5, N'sky                      ', N'vn                       ', NULL, NULL, 10, N'bơi tốt, màu xấu,dễ chết.', NULL, N'viet                      ', N'kv                       ', N'koiviet-4.jpg                                                                       ', 750.000, 100.0000)
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'rbh                       ', N'Nhat Ban                                                                                           ', N'jp                       ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'ssh                       ', N'Thai Lan                                                                                             ', N'thai                      ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'sky                      ', N'Viet Nam                                                                                              ', N'vn                       ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'string                   ', N'string', N'string                   ')
GO
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [MaNhanVien], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu]) VALUES (N'1                        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'5                        ', N'20 x 5 x 4 (cm)                                                                                                                                   ')
GO
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'6                        ', N'25 x 4 x 5 (cm)                                                                                                                              ')
GO
INSERT [dbo].[tKichThuoc] ([MaKichThuoc], [KichThuoc]) VALUES (N'7                        ', N'30 x 4 x 4 (cm)                                                                                                                                    ')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'kn                       ', N'Nhật                                                                                             ')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'kt                       ', N'Thái                                                                                          ')
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'kv                       ', N'Việt')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'nhat                     ', N'Koi Nhật')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'thai                       ', N'Koi Thái')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'viet                      ', N'Koi Việt')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'red                    ', N'Đỏ')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'blue                     ', N'Xanh dương')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'white                    ', N'Trắng')
GO
INSERT [dbo].[tMauSac] ([MaMauSac], [TenMauSac]) VALUES (N'yello                    ', N'Vàng')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'jp                       ', N'Nhật Bản                                                ')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'string                   ', N'string')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'thai                       ', N'Thái Lan                                        ')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'vn                       ', N'Việt Nam                                          ')
GO
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'a                                                                                                   ', N'1                                                                                                                                                                                                                                                               ', 0)
GO
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'b                                                                                                   ', N'1                                                                                                                                                                                                                                                               ', 1)
GO

