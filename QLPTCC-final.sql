/****** Object:  Database [QLPTCC]    Script Date: 18/6/2021 7:57:38 AM ******/
CREATE DATABASE [QLPTCC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLPTCC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLPTCC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLPTCC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLPTCC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLPTCC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLPTCC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLPTCC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLPTCC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLPTCC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLPTCC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLPTCC] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLPTCC] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLPTCC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLPTCC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLPTCC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLPTCC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLPTCC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLPTCC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLPTCC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLPTCC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLPTCC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLPTCC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLPTCC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLPTCC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLPTCC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLPTCC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLPTCC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLPTCC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLPTCC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLPTCC] SET  MULTI_USER 
GO
ALTER DATABASE [QLPTCC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLPTCC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLPTCC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLPTCC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLPTCC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLPTCC] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLPTCC] SET QUERY_STORE = OFF
GO
USE [QLPTCC]
GO
/****** Object:  Table [dbo].[HD_ve_thang]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HD_ve_thang](
	[Ma_ve] [char](15) NOT NULL,
	[Ngay_su_dung] [date] NOT NULL,
	[Gio_len] [time](7) NOT NULL,
	[Gio_xuong] [time](7) NULL,
	[Ga_tram_len] [char](7) NOT NULL,
	[Ga_tram_xuong] [char](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ve] ASC,
	[Ngay_su_dung] ASC,
	[Gio_len] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HD_ve_ngay]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HD_ve_ngay](
	[Ma_ve] [char](15) NOT NULL,
	[STT] [tinyint] NOT NULL,
	[Ma_tuyen] [char](4) NOT NULL,
	[Ma_ga_tram_len] [char](7) NOT NULL,
	[Ma_ga_tram_xuong] [char](7) NOT NULL,
	[Gio_len] [time](7) NULL,
	[Gio_xuong] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ve] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve_le]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve_le](
	[Ma_ve] [char](15) NOT NULL,
	[Ma_tuyen] [char](4) NULL,
	[Ngay_su_dung] [date] NULL,
	[Ma_ga_tram_len] [char](7) NULL,
	[Ma_ga_tram_xuong] [char](7) NULL,
	[Gio_len] [time](7) NULL,
	[Gio_xuong] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve_thang]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve_thang](
	[Ma_ve] [char](15) NOT NULL,
	[Ma_tuyen] [char](4) NULL,
	[Ma_ga_tram_1] [char](7) NULL,
	[Ma_ga_tram_2] [char](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve_1_ngay]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve_1_ngay](
	[Ma_ve] [char](15) NOT NULL,
	[Ngay_su_dung] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Thong_ke_so_luot_nguoi]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[Thong_ke_so_luot_nguoi]
(
	@matuyen char(4), 
	@tungay date, 
	@denngay date
)
returns table
as
return
	select Ngay_su_dung as Ngay, sum(So_luong) as Tong_so_luot_nguoi from 
	(
		select * from 
		(
			(
				select Ngay_su_dung, count(*) as So_luong
				from (
					select A.Ma_Ve, A.Ma_tuyen, B.Ngay_su_dung
					from Ve_thang as A
					inner join HD_ve_thang as B
					on A.Ma_ve = B.Ma_ve
				) as C
				where Ma_tuyen = @matuyen and Ngay_su_dung >= @tungay and Ngay_su_dung <= @denngay
				group by Ngay_su_dung
			)
			union all
			(
				select Ngay_su_dung, count(*) as So_luong
				from (
					select D.Ngay_su_dung, D.Ma_ve, E.Ma_tuyen
					from Ve_1_ngay as D
					inner join HD_ve_ngay as E
					on D.Ma_ve = E.Ma_ve
				) as F
				where Ngay_su_dung >= @tungay and Ngay_su_dung <= @denngay and Ma_tuyen = @matuyen
				group by Ngay_su_dung
			)
		) as G
		union all
		(
			select Ngay_su_dung, count(*) as So_luong from Ve_le
			where Ngay_su_dung >= @tungay and Ngay_su_dung <= @denngay and Ma_tuyen = @matuyen
			group by Ngay_su_dung
		)
	) as H
	group by Ngay_su_dung
GO
/****** Object:  Table [dbo].[Account]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](100) NOT NULL,
	[displayName] [nvarchar](30) NULL,
	[password] [varchar](50) NOT NULL,
	[proxy] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bang_Gia]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bang_Gia](
	[STT] [int] NOT NULL,
	[don_gia_xe_bus] [int] NULL,
	[gia_ve_1_ngay_trong_tuan] [int] NULL,
	[gia_ve_1_ngay_cuoi_tuan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chuyen_tau_xe]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chuyen_tau_xe](
	[Ma_tuyen] [char](4) NOT NULL,
	[STT] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_tuyen] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chuyen_tau_xe_ghe_ga_tram]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chuyen_tau_xe_ghe_ga_tram](
	[Ma_tuyen] [char](4) NOT NULL,
	[STT_chuyen] [tinyint] NOT NULL,
	[Ma_ga_tram] [char](7) NOT NULL,
	[STT_tram] [tinyint] NULL,
	[gio_ghe] [time](7) NULL,
	[gio_di] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_tuyen] ASC,
	[STT_chuyen] ASC,
	[Ma_ga_tram] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Con_duong]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Con_duong](
	[Ma_con_duong] [varchar](12) NOT NULL,
	[Ten_duong] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_con_duong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doan_duong]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doan_duong](
	[Ma_giao_lo_1] [varchar](12) NOT NULL,
	[Ma_giao_lo_2] [varchar](12) NOT NULL,
	[Ma_con_duong] [varchar](12) NULL,
	[STT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_giao_lo_1] ASC,
	[Ma_giao_lo_2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ga_Tram]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ga_Tram](
	[Ma_ga_tram] [char](7) NOT NULL,
	[dia_chi] [nvarchar](100) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[Ga_Tram] [tinyint] NULL,
	[ma_giao_lo_1] [varchar](12) NOT NULL,
	[ma_giao_lo_2] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ga_tram] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ga_Tram_Lam_Viec]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ga_Tram_Lam_Viec](
	[Ma_nhan_vien] [char](6) NOT NULL,
	[Ma_ga_tram] [char](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giao_lo]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giao_lo](
	[Ma_giao_lo] [varchar](12) NOT NULL,
	[long] [float] NULL,
	[lat] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_giao_lo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hanh_Khach]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hanh_Khach](
	[Ma_hanh_khach] [char](8) NOT NULL,
	[ten] [nvarchar](30) NULL,
	[CMND_CCCD] [varchar](12) NOT NULL,
	[nghe_nghiep] [nvarchar](50) NULL,
	[dien_thoai] [char](10) NULL,
	[gioi_tinh] [char](1) NULL,
	[email] [varchar](50) NULL,
	[ngay_sinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_hanh_khach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan_Vien]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_Vien](
	[Ma_nhan_vien] [char](6) NOT NULL,
	[ten] [nvarchar](30) NULL,
	[loai_cong_viec] [varchar](100) NULL,
	[ngay_sinh] [date] NULL,
	[email] [varchar](50) NULL,
	[gioi_tinh] [char](1) NULL,
	[dien_thoai_di_dong] [char](10) NULL,
	[dien_thoai_noi_bo] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The_Tu]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The_Tu](
	[Ma_the_tu] [char](8) NOT NULL,
	[Ngay_mua] [datetime] NULL,
	[Ma_hanh_khach] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_the_tu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tuyen_tau_dien]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tuyen_tau_dien](
	[Ma_tuyen_tau] [char](1) NOT NULL,
	[Ten_tuyen_tau] [nvarchar](100) NOT NULL,
	[Don_gia] [int] NULL,
	[Ma_tuyen_tau_dien] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_tuyen_tau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tuyen_tau_xe]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tuyen_tau_xe](
	[Ma_tuyen] [char](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_tuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tuyen_xe_bus]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tuyen_xe_bus](
	[No] [int] IDENTITY(1,1) NOT NULL,
	[Ma_tuyen_xe_bus] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[Ma_ve] [char](15) NOT NULL,
	[Loai_ve] [tinyint] NOT NULL,
	[Ngay_gio_mua] [datetime] NULL,
	[Gia_ve] [int] NULL,
	[Ma_khach_hang] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [displayName], [password], [proxy]) VALUES (N'huong', N'Hương', N'1', 0)
INSERT [dbo].[Account] ([username], [displayName], [password], [proxy]) VALUES (N'mHung', N'Mạnh Hùng', N'1', 0)
INSERT [dbo].[Account] ([username], [displayName], [password], [proxy]) VALUES (N'sManager', NULL, N'1', 0)
INSERT [dbo].[Account] ([username], [displayName], [password], [proxy]) VALUES (N'tam', N'Tâm', N'1', 0)
INSERT [dbo].[Account] ([username], [displayName], [password], [proxy]) VALUES (N'thuan', N'Thuận', N'1', 0)
GO
INSERT [dbo].[Bang_Gia] ([STT], [don_gia_xe_bus], [gia_ve_1_ngay_trong_tuan], [gia_ve_1_ngay_cuoi_tuan]) VALUES (1, 1500, 30000, 35000)
GO
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B001', 1)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B001', 2)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B001', 3)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B001', 4)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B002', 1)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B002', 2)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B003', 1)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B003', 2)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'B003', 3)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'T001', 1)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'T002', 1)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'T002', 2)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'T004', 1)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'T004', 2)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'T004', 3)
INSERT [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT]) VALUES (N'T005', 1)
GO
INSERT [dbo].[Chuyen_tau_xe_ghe_ga_tram] ([Ma_tuyen], [STT_chuyen], [Ma_ga_tram], [STT_tram], [gio_ghe], [gio_di]) VALUES (N'B001', 1, N'BT00001', 1, CAST(N'05:00:00' AS Time), CAST(N'05:01:00' AS Time))
INSERT [dbo].[Chuyen_tau_xe_ghe_ga_tram] ([Ma_tuyen], [STT_chuyen], [Ma_ga_tram], [STT_tram], [gio_ghe], [gio_di]) VALUES (N'B001', 1, N'BT00002', 2, CAST(N'05:30:00' AS Time), CAST(N'05:31:00' AS Time))
INSERT [dbo].[Chuyen_tau_xe_ghe_ga_tram] ([Ma_tuyen], [STT_chuyen], [Ma_ga_tram], [STT_tram], [gio_ghe], [gio_di]) VALUES (N'B001', 1, N'BT00003', 3, CAST(N'06:15:00' AS Time), CAST(N'06:16:00' AS Time))
INSERT [dbo].[Chuyen_tau_xe_ghe_ga_tram] ([Ma_tuyen], [STT_chuyen], [Ma_ga_tram], [STT_tram], [gio_ghe], [gio_di]) VALUES (N'B001', 1, N'BT00004', 4, CAST(N'08:15:00' AS Time), CAST(N'08:16:00' AS Time))
INSERT [dbo].[Chuyen_tau_xe_ghe_ga_tram] ([Ma_tuyen], [STT_chuyen], [Ma_ga_tram], [STT_tram], [gio_ghe], [gio_di]) VALUES (N'B001', 2, N'BT00001', 1, CAST(N'07:15:00' AS Time), CAST(N'07:16:00' AS Time))
INSERT [dbo].[Chuyen_tau_xe_ghe_ga_tram] ([Ma_tuyen], [STT_chuyen], [Ma_ga_tram], [STT_tram], [gio_ghe], [gio_di]) VALUES (N'B001', 3, N'BT00001', 1, CAST(N'09:00:00' AS Time), CAST(N'09:01:00' AS Time))
INSERT [dbo].[Chuyen_tau_xe_ghe_ga_tram] ([Ma_tuyen], [STT_chuyen], [Ma_ga_tram], [STT_tram], [gio_ghe], [gio_di]) VALUES (N'B001', 4, N'BT00001', 1, CAST(N'12:00:00' AS Time), CAST(N'12:01:00' AS Time))
GO
INSERT [dbo].[Con_duong] ([Ma_con_duong], [Ten_duong]) VALUES (N'CD1', N'Pham Van Dong')
INSERT [dbo].[Con_duong] ([Ma_con_duong], [Ten_duong]) VALUES (N'CD2', N'Dien Bien Phu')
INSERT [dbo].[Con_duong] ([Ma_con_duong], [Ten_duong]) VALUES (N'CD3', N'Vo Thi Sau')
INSERT [dbo].[Con_duong] ([Ma_con_duong], [Ten_duong]) VALUES (N'CD4', N'Cach mang thang tam')
GO
INSERT [dbo].[Doan_duong] ([Ma_giao_lo_1], [Ma_giao_lo_2], [Ma_con_duong], [STT]) VALUES (N'GL1', N'GL2', N'CD1', 1)
INSERT [dbo].[Doan_duong] ([Ma_giao_lo_1], [Ma_giao_lo_2], [Ma_con_duong], [STT]) VALUES (N'GL1', N'GL4', N'CD2', 1)
INSERT [dbo].[Doan_duong] ([Ma_giao_lo_1], [Ma_giao_lo_2], [Ma_con_duong], [STT]) VALUES (N'GL2', N'GL3', N'CD1', 2)
INSERT [dbo].[Doan_duong] ([Ma_giao_lo_1], [Ma_giao_lo_2], [Ma_con_duong], [STT]) VALUES (N'GL2', N'GL4', N'CD3', 1)
INSERT [dbo].[Doan_duong] ([Ma_giao_lo_1], [Ma_giao_lo_2], [Ma_con_duong], [STT]) VALUES (N'GL3', N'GL4', N'CD4', 1)
GO
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'BT00001', N'duong 15, phuong Binh Thuan, quan Thu Duc, TPHCM', N'Tram mien Dong', 0, N'GL1', N'GL2')
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'BT00002', N'duong 07, phuong Tan Kieng, quan 7, TPHCM', N'Tram mien Tay', 0, N'GL1', N'GL4')
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'BT00003', N'duong 08, phuong Tan Quy, quan 7, TPHCM', N'Tram mien cuc lac', 0, N'GL1', N'GL2')
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'BT00004', N'duong 11, phuong Binh Chanh, quan Nha Be, TPHCM', N'Tram miet thu', 0, N'GL2', N'GL4')
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'BT00005', N'duong 25, phuong Di An, quan Thu Duc, TPHCM', N'Tram Hai Lua', 0, N'GL2', N'GL4')
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'BT00006', N'duong 01, phuong Binh Trieu, quan Tan Binh, TPHCM', N'Tram moi', 0, N'GL1', N'GL2')
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'TT00001', N'duong 33, phuong Ton Dan, quan 4, TPHCM', N'Tram miet vuon', 1, N'GL2', N'GL3')
INSERT [dbo].[Ga_Tram] ([Ma_ga_tram], [dia_chi], [ten], [Ga_Tram], [ma_giao_lo_1], [ma_giao_lo_2]) VALUES (N'TT00002', N'duong 22, phuong Thuan An, quan Thu Duc, TPHCM', N'Tram tam ly', 1, N'GL3', N'GL4')
GO
INSERT [dbo].[Ga_Tram_Lam_Viec] ([Ma_nhan_vien], [Ma_ga_tram]) VALUES (N'NV0001', N'TT00001')
INSERT [dbo].[Ga_Tram_Lam_Viec] ([Ma_nhan_vien], [Ma_ga_tram]) VALUES (N'NV0002', N'TT00001')
INSERT [dbo].[Ga_Tram_Lam_Viec] ([Ma_nhan_vien], [Ma_ga_tram]) VALUES (N'NV0003', N'TT00001')
INSERT [dbo].[Ga_Tram_Lam_Viec] ([Ma_nhan_vien], [Ma_ga_tram]) VALUES (N'NV0004', N'TT00002')
GO
INSERT [dbo].[Giao_lo] ([Ma_giao_lo], [long], [lat]) VALUES (N'GL1', 32, 22)
INSERT [dbo].[Giao_lo] ([Ma_giao_lo], [long], [lat]) VALUES (N'GL2', 40, 50)
INSERT [dbo].[Giao_lo] ([Ma_giao_lo], [long], [lat]) VALUES (N'GL3', 66, 30)
INSERT [dbo].[Giao_lo] ([Ma_giao_lo], [long], [lat]) VALUES (N'GL4', 34, 28)
GO
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000001', N'Cam Ly', N'212304776', N'phu ho', N'0345876988', N'M', N'nguyenvana@gmail.com', CAST(N'1998-12-24' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000002', N'Dan Truong', N'222333777', N'dao dien', N'0838476988', N'F', N'nguyenthib@gmail.com', CAST(N'2000-11-20' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000003', N'Bich Phuong', N'555888333', N'ca si', N'0300876988', N'F', N'nguyenthic@gmail.com', CAST(N'1990-09-11' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000004', N'Ly Nha Ky', N'111444555', N'nhiep anh', N'0311876988', N'M', N'nguyenvand@gmail.com', CAST(N'2003-08-24' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000005', N'Ly Hai', N'444888999', N'dien vien', N'0322876988', N'M', N'nguyenvane@gmail.com', CAST(N'1995-12-10' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000006', N'Le Van Luong', N'544888999', N'giao vien', N'0342876988', N'M', N'levanluong@gmail.com', CAST(N'1980-02-08' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000007', N'La Van Lau', N'544887999', N'sinh vien', N'0342876995', N'M', N'lavanlau@gmail.com', CAST(N'2001-02-03' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000008', N'Nguyen Thi Na', N'544187999', N'sinh vien', N'0342876986', N'F', N'nguyenthina@gmail.com', CAST(N'2002-12-08' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000009', N'Le Thi Luu', N'644888999', N'sinh vien', N'0342876984', N'F', N'lethiluu@gmail.com', CAST(N'2002-06-04' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000010', N'Tran Thi Loan', N'544888998', N'luat su', N'0342876983', N'F', N'tranthiloan@gmail.com', CAST(N'1989-11-08' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000011', N'Tran Cao Tuong', N'544888996', N'sinh vien', N'0342876982', N'M', N'trancaotuong@gmail.com', CAST(N'2000-02-26' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000012', N'Tran Cong Luc', N'544888995', N'sinh vien', N'0342876918', N'M', N'trancongluc@gmail.com', CAST(N'1999-02-22' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000013', N'Mai Thuc Loan', N'544888994', N'giao vien', N'0342876928', N'M', N'maithucloan@gmail.com', CAST(N'1987-09-08' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000014', N'Le Thi Truong', N'544888993', N'cong nhan', N'0342876938', N'F', N'levanluong@gmail.com', CAST(N'1990-02-28' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000015', N'Luong Nhat Tuong', N'544888992', N'bac si', N'0342876488', N'M', N'luongnhattuong@gmail.com', CAST(N'1985-08-24' AS Date))
INSERT [dbo].[Hanh_Khach] ([Ma_hanh_khach], [ten], [CMND_CCCD], [nghe_nghiep], [dien_thoai], [gioi_tinh], [email], [ngay_sinh]) VALUES (N'KH000016', N'Cao Van Nhat', N'544888991', N'bac si', N'0342876588', N'M', N'caovannhat@gmail.com', CAST(N'1988-03-19' AS Date))
GO
INSERT [dbo].[HD_ve_ngay] ([Ma_ve], [STT], [Ma_tuyen], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VD0705202100001', 1, N'B001', N'BT00003', N'BT00004', CAST(N'06:15:00' AS Time), CAST(N'08:15:00' AS Time))
INSERT [dbo].[HD_ve_ngay] ([Ma_ve], [STT], [Ma_tuyen], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VD0705202100002', 1, N'B001', N'BT00001', N'BT00004', CAST(N'05:00:00' AS Time), CAST(N'08:15:00' AS Time))
INSERT [dbo].[HD_ve_ngay] ([Ma_ve], [STT], [Ma_tuyen], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VD0705202100003', 1, N'B001', N'BT00002', N'BT00004', CAST(N'05:30:00' AS Time), CAST(N'08:15:00' AS Time))
INSERT [dbo].[HD_ve_ngay] ([Ma_ve], [STT], [Ma_tuyen], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VD0705202100004', 1, N'B001', N'BT00003', N'BT00004', CAST(N'06:15:00' AS Time), CAST(N'08:15:00' AS Time))
GO
INSERT [dbo].[HD_ve_thang] ([Ma_ve], [Ngay_su_dung], [Gio_len], [Gio_xuong], [Ga_tram_len], [Ga_tram_xuong]) VALUES (N'VM0705202100001', CAST(N'2021-06-06' AS Date), CAST(N'05:00:00' AS Time), CAST(N'08:15:00' AS Time), N'BT00001', N'BT00004')
INSERT [dbo].[HD_ve_thang] ([Ma_ve], [Ngay_su_dung], [Gio_len], [Gio_xuong], [Ga_tram_len], [Ga_tram_xuong]) VALUES (N'VM0705202100002', CAST(N'2021-06-10' AS Date), CAST(N'05:30:00' AS Time), CAST(N'08:15:00' AS Time), N'BT00002', N'BT00004')
INSERT [dbo].[HD_ve_thang] ([Ma_ve], [Ngay_su_dung], [Gio_len], [Gio_xuong], [Ga_tram_len], [Ga_tram_xuong]) VALUES (N'VM0705202100003', CAST(N'2021-06-08' AS Date), CAST(N'05:00:00' AS Time), CAST(N'06:15:00' AS Time), N'BT00001', N'BT00003')
INSERT [dbo].[HD_ve_thang] ([Ma_ve], [Ngay_su_dung], [Gio_len], [Gio_xuong], [Ga_tram_len], [Ga_tram_xuong]) VALUES (N'VM0705202100004', CAST(N'2021-06-06' AS Date), CAST(N'06:15:00' AS Time), CAST(N'08:15:00' AS Time), N'BT00003', N'BT00004')
GO
INSERT [dbo].[Nhan_Vien] ([Ma_nhan_vien], [ten], [loai_cong_viec], [ngay_sinh], [email], [gioi_tinh], [dien_thoai_di_dong], [dien_thoai_noi_bo]) VALUES (N'NV0001', N'Nguyen Cao Lam', N'Tai xe', CAST(N'1970-03-01' AS Date), N'nguyencaolam@gmail.com', N'M', N'0234098567', N'022211133           ')
INSERT [dbo].[Nhan_Vien] ([Ma_nhan_vien], [ten], [loai_cong_viec], [ngay_sinh], [email], [gioi_tinh], [dien_thoai_di_dong], [dien_thoai_noi_bo]) VALUES (N'NV0002', N'Nguyen Thi Le', N'Bao ve', CAST(N'1980-07-03' AS Date), N'nguyenthile@gmail.com', N'F', N'0222990001', N'0334555444          ')
INSERT [dbo].[Nhan_Vien] ([Ma_nhan_vien], [ten], [loai_cong_viec], [ngay_sinh], [email], [gioi_tinh], [dien_thoai_di_dong], [dien_thoai_noi_bo]) VALUES (N'NV0003', N'Nguyen Thi Hoa', N'Tiep tan', CAST(N'1990-07-04' AS Date), N'nguyenthihoa@gmail.com', N'M', N'0252962201', N'0336565437          ')
INSERT [dbo].[Nhan_Vien] ([Ma_nhan_vien], [ten], [loai_cong_viec], [ngay_sinh], [email], [gioi_tinh], [dien_thoai_di_dong], [dien_thoai_noi_bo]) VALUES (N'NV0004', N'Nguyen Van Ti', N'Bao ve', CAST(N'1990-07-04' AS Date), N'nguyenvanti@gmail.com', N'M', N'0352962233', N'0333565448          ')
GO
INSERT [dbo].[The_Tu] ([Ma_the_tu], [Ngay_mua], [Ma_hanh_khach]) VALUES (N'TT000001', CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'KH000001')
INSERT [dbo].[The_Tu] ([Ma_the_tu], [Ngay_mua], [Ma_hanh_khach]) VALUES (N'TT000002', CAST(N'2019-11-21T00:00:00.000' AS DateTime), N'KH000002')
INSERT [dbo].[The_Tu] ([Ma_the_tu], [Ngay_mua], [Ma_hanh_khach]) VALUES (N'TT000003', CAST(N'2017-06-14T00:00:00.000' AS DateTime), N'KH000003')
INSERT [dbo].[The_Tu] ([Ma_the_tu], [Ngay_mua], [Ma_hanh_khach]) VALUES (N'TT000004', CAST(N'2016-06-06T00:00:00.000' AS DateTime), N'KH000004')
INSERT [dbo].[The_Tu] ([Ma_the_tu], [Ngay_mua], [Ma_hanh_khach]) VALUES (N'TT000005', CAST(N'2029-07-27T00:00:00.000' AS DateTime), N'KH000005')
GO
INSERT [dbo].[Tuyen_tau_dien] ([Ma_tuyen_tau], [Ten_tuyen_tau], [Don_gia], [Ma_tuyen_tau_dien]) VALUES (N'A', N'Số 304', 10000, N'T001')
INSERT [dbo].[Tuyen_tau_dien] ([Ma_tuyen_tau], [Ten_tuyen_tau], [Don_gia], [Ma_tuyen_tau_dien]) VALUES (N'B', N'Bến Thành', 12000, N'T002')
INSERT [dbo].[Tuyen_tau_dien] ([Ma_tuyen_tau], [Ten_tuyen_tau], [Don_gia], [Ma_tuyen_tau_dien]) VALUES (N'C', N'Thống Nhất', 10000, N'T003')
INSERT [dbo].[Tuyen_tau_dien] ([Ma_tuyen_tau], [Ten_tuyen_tau], [Don_gia], [Ma_tuyen_tau_dien]) VALUES (N'D', N'Tân Sơn Nhất', 15000, N'T004')
INSERT [dbo].[Tuyen_tau_dien] ([Ma_tuyen_tau], [Ten_tuyen_tau], [Don_gia], [Ma_tuyen_tau_dien]) VALUES (N'E', N'Số 107', 8000, N'T005')
GO
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'B001')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'B002')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'B003')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'B004')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'B005')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'T001')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'T002')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'T003')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'T004')
INSERT [dbo].[Tuyen_tau_xe] ([Ma_tuyen]) VALUES (N'T005')
GO
SET IDENTITY_INSERT [dbo].[Tuyen_xe_bus] ON 

INSERT [dbo].[Tuyen_xe_bus] ([No], [Ma_tuyen_xe_bus]) VALUES (1, N'B001')
INSERT [dbo].[Tuyen_xe_bus] ([No], [Ma_tuyen_xe_bus]) VALUES (2, N'B002')
INSERT [dbo].[Tuyen_xe_bus] ([No], [Ma_tuyen_xe_bus]) VALUES (3, N'B003')
INSERT [dbo].[Tuyen_xe_bus] ([No], [Ma_tuyen_xe_bus]) VALUES (4, N'B004')
INSERT [dbo].[Tuyen_xe_bus] ([No], [Ma_tuyen_xe_bus]) VALUES (5, N'B005')
SET IDENTITY_INSERT [dbo].[Tuyen_xe_bus] OFF
GO
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VD0705202100001', 2, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 30000, N'KH000011')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VD0705202100002', 2, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 30000, N'KH000010')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VD0705202100003', 2, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 30000, N'KH000003')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VD0705202100004', 2, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 35000, N'KH000012')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VM0705202100001', 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 120000, N'KH000007')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VM0705202100002', 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 60000, N'KH000002')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VM0705202100003', 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 60000, N'KH000008')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VM0705202100004', 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 60000, N'KH000009')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VO0705202100001', 0, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1500, N'KH000001')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VO0705202100002', 0, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 3000, N'KH000005')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VO0705202100003', 0, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 3000, N'KH000006')
INSERT [dbo].[Ve] ([Ma_ve], [Loai_ve], [Ngay_gio_mua], [Gia_ve], [Ma_khach_hang]) VALUES (N'VO0705202100004', 0, CAST(N'2021-05-07T00:00:00.000' AS DateTime), 1500, N'KH000004')
GO
INSERT [dbo].[Ve_1_ngay] ([Ma_ve], [Ngay_su_dung]) VALUES (N'VD0705202100001', CAST(N'2021-06-01' AS Date))
INSERT [dbo].[Ve_1_ngay] ([Ma_ve], [Ngay_su_dung]) VALUES (N'VD0705202100002', CAST(N'2021-05-31' AS Date))
INSERT [dbo].[Ve_1_ngay] ([Ma_ve], [Ngay_su_dung]) VALUES (N'VD0705202100003', CAST(N'2021-05-31' AS Date))
INSERT [dbo].[Ve_1_ngay] ([Ma_ve], [Ngay_su_dung]) VALUES (N'VD0705202100004', CAST(N'2021-06-06' AS Date))
GO
INSERT [dbo].[Ve_le] ([Ma_ve], [Ma_tuyen], [Ngay_su_dung], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VO0705202100001', N'B001', CAST(N'2021-06-06' AS Date), N'BT00003', N'BT00004', CAST(N'06:15:00' AS Time), CAST(N'08:15:00' AS Time))
INSERT [dbo].[Ve_le] ([Ma_ve], [Ma_tuyen], [Ngay_su_dung], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VO0705202100002', N'B001', CAST(N'2021-06-07' AS Date), N'BT00001', N'BT00004', CAST(N'05:00:00' AS Time), CAST(N'08:15:00' AS Time))
INSERT [dbo].[Ve_le] ([Ma_ve], [Ma_tuyen], [Ngay_su_dung], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VO0705202100003', N'B001', CAST(N'2021-06-08' AS Date), N'BT00001', N'BT00004', CAST(N'05:00:00' AS Time), CAST(N'08:15:00' AS Time))
INSERT [dbo].[Ve_le] ([Ma_ve], [Ma_tuyen], [Ngay_su_dung], [Ma_ga_tram_len], [Ma_ga_tram_xuong], [Gio_len], [Gio_xuong]) VALUES (N'VO0705202100004', N'B001', CAST(N'2021-06-09' AS Date), N'BT00002', N'BT00004', CAST(N'05:30:00' AS Time), CAST(N'08:15:00' AS Time))
GO
INSERT [dbo].[Ve_thang] ([Ma_ve], [Ma_tuyen], [Ma_ga_tram_1], [Ma_ga_tram_2]) VALUES (N'VM0705202100001', N'B001', N'BT00001', N'BT00004')
INSERT [dbo].[Ve_thang] ([Ma_ve], [Ma_tuyen], [Ma_ga_tram_1], [Ma_ga_tram_2]) VALUES (N'VM0705202100002', N'B001', N'BT00002', N'BT00004')
INSERT [dbo].[Ve_thang] ([Ma_ve], [Ma_tuyen], [Ma_ga_tram_1], [Ma_ga_tram_2]) VALUES (N'VM0705202100003', N'B001', N'BT00001', N'BT00003')
INSERT [dbo].[Ve_thang] ([Ma_ve], [Ma_tuyen], [Ma_ga_tram_1], [Ma_ga_tram_2]) VALUES (N'VM0705202100004', N'B001', N'BT00003', N'BT00004')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Hanh_Kha__1576C0F2676C8CF3]    Script Date: 18/6/2021 7:57:38 AM ******/
ALTER TABLE [dbo].[Hanh_Khach] ADD UNIQUE NONCLUSTERED 
(
	[dien_thoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Hanh_Kha__B9137313CF6506BE]    Script Date: 18/6/2021 7:57:38 AM ******/
ALTER TABLE [dbo].[Hanh_Khach] ADD UNIQUE NONCLUSTERED 
(
	[CMND_CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Nhan_Vie__8A89B8A2079E8474]    Script Date: 18/6/2021 7:57:38 AM ******/
ALTER TABLE [dbo].[Nhan_Vien] ADD UNIQUE NONCLUSTERED 
(
	[dien_thoai_di_dong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Nhan_Vie__A100E67330D69B25]    Script Date: 18/6/2021 7:57:38 AM ******/
ALTER TABLE [dbo].[Nhan_Vien] ADD UNIQUE NONCLUSTERED 
(
	[dien_thoai_noi_bo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tuyen_ta__D2E63F59CC1FA9E2]    Script Date: 18/6/2021 7:57:38 AM ******/
ALTER TABLE [dbo].[Tuyen_tau_dien] ADD UNIQUE NONCLUSTERED 
(
	[Ten_tuyen_tau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tuyen_xe__C59FF2CDFC20A970]    Script Date: 18/6/2021 7:57:38 AM ******/
ALTER TABLE [dbo].[Tuyen_xe_bus] ADD UNIQUE NONCLUSTERED 
(
	[Ma_tuyen_xe_bus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ('1') FOR [password]
GO
ALTER TABLE [dbo].[The_Tu] ADD  DEFAULT (getdate()) FOR [Ngay_mua]
GO
ALTER TABLE [dbo].[Ve] ADD  DEFAULT (getdate()) FOR [Ngay_gio_mua]
GO
ALTER TABLE [dbo].[Chuyen_tau_xe]  WITH CHECK ADD FOREIGN KEY([Ma_tuyen])
REFERENCES [dbo].[Tuyen_tau_xe] ([Ma_tuyen])
GO
ALTER TABLE [dbo].[Chuyen_tau_xe_ghe_ga_tram]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[Chuyen_tau_xe_ghe_ga_tram]  WITH CHECK ADD FOREIGN KEY([Ma_tuyen], [STT_chuyen])
REFERENCES [dbo].[Chuyen_tau_xe] ([Ma_tuyen], [STT])
GO
ALTER TABLE [dbo].[Doan_duong]  WITH CHECK ADD FOREIGN KEY([Ma_con_duong])
REFERENCES [dbo].[Con_duong] ([Ma_con_duong])
GO
ALTER TABLE [dbo].[Doan_duong]  WITH CHECK ADD FOREIGN KEY([Ma_giao_lo_1])
REFERENCES [dbo].[Giao_lo] ([Ma_giao_lo])
GO
ALTER TABLE [dbo].[Doan_duong]  WITH CHECK ADD FOREIGN KEY([Ma_giao_lo_2])
REFERENCES [dbo].[Giao_lo] ([Ma_giao_lo])
GO
ALTER TABLE [dbo].[Ga_Tram]  WITH CHECK ADD FOREIGN KEY([ma_giao_lo_1], [ma_giao_lo_2])
REFERENCES [dbo].[Doan_duong] ([Ma_giao_lo_1], [Ma_giao_lo_2])
GO
ALTER TABLE [dbo].[Ga_Tram_Lam_Viec]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[Ga_Tram_Lam_Viec]  WITH CHECK ADD FOREIGN KEY([Ma_nhan_vien])
REFERENCES [dbo].[Nhan_Vien] ([Ma_nhan_vien])
GO
ALTER TABLE [dbo].[HD_ve_ngay]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram_xuong])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[HD_ve_ngay]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram_len])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[HD_ve_ngay]  WITH CHECK ADD FOREIGN KEY([Ma_tuyen])
REFERENCES [dbo].[Tuyen_tau_xe] ([Ma_tuyen])
GO
ALTER TABLE [dbo].[HD_ve_ngay]  WITH CHECK ADD FOREIGN KEY([Ma_ve])
REFERENCES [dbo].[Ve] ([Ma_ve])
GO
ALTER TABLE [dbo].[HD_ve_thang]  WITH CHECK ADD FOREIGN KEY([Ga_tram_len])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[HD_ve_thang]  WITH CHECK ADD FOREIGN KEY([Ga_tram_xuong])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[HD_ve_thang]  WITH CHECK ADD FOREIGN KEY([Ma_ve])
REFERENCES [dbo].[Ve] ([Ma_ve])
GO
ALTER TABLE [dbo].[The_Tu]  WITH CHECK ADD FOREIGN KEY([Ma_hanh_khach])
REFERENCES [dbo].[Hanh_Khach] ([Ma_hanh_khach])
GO
ALTER TABLE [dbo].[Tuyen_tau_dien]  WITH CHECK ADD FOREIGN KEY([Ma_tuyen_tau_dien])
REFERENCES [dbo].[Tuyen_tau_xe] ([Ma_tuyen])
GO
ALTER TABLE [dbo].[Tuyen_xe_bus]  WITH CHECK ADD FOREIGN KEY([Ma_tuyen_xe_bus])
REFERENCES [dbo].[Tuyen_tau_xe] ([Ma_tuyen])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([Ma_khach_hang])
REFERENCES [dbo].[Hanh_Khach] ([Ma_hanh_khach])
GO
ALTER TABLE [dbo].[Ve_1_ngay]  WITH CHECK ADD FOREIGN KEY([Ma_ve])
REFERENCES [dbo].[Ve] ([Ma_ve])
GO
ALTER TABLE [dbo].[Ve_le]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram_len])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[Ve_le]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram_xuong])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[Ve_le]  WITH CHECK ADD FOREIGN KEY([Ma_tuyen])
REFERENCES [dbo].[Tuyen_tau_xe] ([Ma_tuyen])
GO
ALTER TABLE [dbo].[Ve_le]  WITH CHECK ADD FOREIGN KEY([Ma_ve])
REFERENCES [dbo].[Ve] ([Ma_ve])
GO
ALTER TABLE [dbo].[Ve_thang]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram_1])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[Ve_thang]  WITH CHECK ADD FOREIGN KEY([Ma_ga_tram_2])
REFERENCES [dbo].[Ga_Tram] ([Ma_ga_tram])
GO
ALTER TABLE [dbo].[Ve_thang]  WITH CHECK ADD FOREIGN KEY([Ma_tuyen])
REFERENCES [dbo].[Tuyen_tau_xe] ([Ma_tuyen])
GO
ALTER TABLE [dbo].[Ve_thang]  WITH CHECK ADD FOREIGN KEY([Ma_ve])
REFERENCES [dbo].[Ve] ([Ma_ve])
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD CHECK  (([proxy]=(2) OR [proxy]=(1) OR [proxy]=(0)))
GO
ALTER TABLE [dbo].[Ga_Tram]  WITH CHECK ADD  CONSTRAINT [Check_Ga_Tram] CHECK  (([Ma_ga_tram] like 'BT%' AND [Ga_Tram]=(0) OR [Ma_ga_tram] like 'TT%' AND [Ga_Tram]=(1)))
GO
ALTER TABLE [dbo].[Ga_Tram] CHECK CONSTRAINT [Check_Ga_Tram]
GO
ALTER TABLE [dbo].[Ga_Tram]  WITH CHECK ADD  CONSTRAINT [Check_Ma_ga_tram] CHECK  (([Ma_ga_tram] like 'BT[0-9][0-9][0-9][0-9][0-9]' OR [Ma_ga_tram] like 'TT[0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Ga_Tram] CHECK CONSTRAINT [Check_Ma_ga_tram]
GO
ALTER TABLE [dbo].[Ga_Tram]  WITH CHECK ADD CHECK  (([Ga_Tram]=(1) OR [Ga_Tram]=(0)))
GO
ALTER TABLE [dbo].[Hanh_Khach]  WITH CHECK ADD  CONSTRAINT [Check_Ma_hanh_khach] CHECK  (([Ma_hanh_khach] like 'KH[0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Hanh_Khach] CHECK CONSTRAINT [Check_Ma_hanh_khach]
GO
ALTER TABLE [dbo].[Hanh_Khach]  WITH CHECK ADD CHECK  (([gioi_tinh]='F' OR [gioi_tinh]='M'))
GO
ALTER TABLE [dbo].[HD_ve_ngay]  WITH CHECK ADD  CONSTRAINT [Check_gio_len_xuong_ngay] CHECK  (([Gio_len]<[Gio_xuong]))
GO
ALTER TABLE [dbo].[HD_ve_ngay] CHECK CONSTRAINT [Check_gio_len_xuong_ngay]
GO
ALTER TABLE [dbo].[HD_ve_thang]  WITH CHECK ADD  CONSTRAINT [Check_gio_len_xuong_thang] CHECK  (([Gio_len]<[Gio_xuong]))
GO
ALTER TABLE [dbo].[HD_ve_thang] CHECK CONSTRAINT [Check_gio_len_xuong_thang]
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD  CONSTRAINT [Check_Ma_nhan_vien] CHECK  (([Ma_nhan_vien] like 'NV[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Nhan_Vien] CHECK CONSTRAINT [Check_Ma_nhan_vien]
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD CHECK  (([gioi_tinh]='F' OR [gioi_tinh]='M'))
GO
ALTER TABLE [dbo].[The_Tu]  WITH CHECK ADD  CONSTRAINT [Check_Ma_the_tu] CHECK  (([Ma_the_tu] like 'TT[0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[The_Tu] CHECK CONSTRAINT [Check_Ma_the_tu]
GO
ALTER TABLE [dbo].[Tuyen_tau_dien]  WITH CHECK ADD  CONSTRAINT [Check_ma_tuyen_tau] CHECK  (([Ma_tuyen_tau] like '[A-Z]'))
GO
ALTER TABLE [dbo].[Tuyen_tau_dien] CHECK CONSTRAINT [Check_ma_tuyen_tau]
GO
ALTER TABLE [dbo].[Tuyen_tau_dien]  WITH CHECK ADD CHECK  (([Ma_tuyen_tau_dien] like 'T[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Tuyen_tau_xe]  WITH CHECK ADD  CONSTRAINT [Check_ma_tuyen] CHECK  (([Ma_tuyen] like 'B[0-9][0-9][0-9]' OR [Ma_tuyen] like 'T[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Tuyen_tau_xe] CHECK CONSTRAINT [Check_ma_tuyen]
GO
ALTER TABLE [dbo].[Tuyen_xe_bus]  WITH CHECK ADD CHECK  (([Ma_tuyen_xe_bus] like 'B[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD CHECK  (([Loai_ve]=(2) OR [Loai_ve]=(1) OR [Loai_ve]=(0)))
GO
ALTER TABLE [dbo].[Ve_1_ngay]  WITH CHECK ADD CHECK  (([Ma_ve] like 'VD[0-3][0-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Ve_le]  WITH CHECK ADD  CONSTRAINT [Check_gio_len_xuong] CHECK  (([Gio_len]<[Gio_xuong]))
GO
ALTER TABLE [dbo].[Ve_le] CHECK CONSTRAINT [Check_gio_len_xuong]
GO
ALTER TABLE [dbo].[Ve_le]  WITH CHECK ADD CHECK  (([Ma_ve] like 'VO[0-3][0-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Ve_thang]  WITH CHECK ADD CHECK  (([Ma_ve] like 'VM[0-3][0-9][0-1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
/****** Object:  StoredProcedure [dbo].[LoTrinhTuyenXeTau]    Script Date: 18/6/2021 7:57:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[LoTrinhTuyenXeTau]
(
	@matuyen char(4)
)
as
begin
	select STT_tram, ten as Ten_Tram from Ga_Tram GT ,
	(
		select Ma_ga_tram, STT_tram from Chuyen_tau_xe_ghe_ga_tram
		where Ma_tuyen = @matuyen AND STT_chuyen = 1
	) A
	where GT.Ma_ga_tram = A.Ma_ga_tram
	order by STT_tram
end;
GO
