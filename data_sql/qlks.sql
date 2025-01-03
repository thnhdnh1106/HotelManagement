USE [master]
GO
/****** Object:  Database [QuanLyKhachSan]    Script Date: 1/2/2025 10:35:00 PM ******/
CREATE DATABASE [QuanLyKhachSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyKhachSan', FILENAME = N'C:\ĐồÁn_HotelManagement\data_sql\QuanLyKhachSan_Mdf.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyKhachSan_log', FILENAME = N'C:\ĐồÁn_HotelManagement\data_sql\QuanLyKhachSan_Log.ldf' , SIZE = 6208KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyKhachSan] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyKhachSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyKhachSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyKhachSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyKhachSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyKhachSan] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyKhachSan] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [QuanLyKhachSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyKhachSan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyKhachSan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyKhachSan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyKhachSan] SET QUERY_STORE = OFF
GO
USE [QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[MaCV] [nvarchar](50) NOT NULL,
	[Khu] [int] NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDangKy]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDangKy](
	[MaDK] [nvarchar](50) NOT NULL,
	[MaKhach] [nvarchar](50) NULL,
	[MaPhong] [nvarchar](50) NULL,
	[NgayDangKy] [smalldatetime] NULL,
	[NgayDen] [smalldatetime] NULL,
	[NgayDi] [smalldatetime] NULL,
	[TienDat] [int] NULL,
	[SoNguoi] [int] NULL,
	[NgiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDangKy] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[MaDV] [nvarchar](50) NOT NULL,
	[TenDV] [nvarchar](50) NOT NULL,
	[GiaTien] [int] NOT NULL,
 CONSTRAINT [PK_tblDichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKhach] [nvarchar](50) NOT NULL,
	[HoDem] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[QuocTich] [nvarchar](50) NOT NULL,
	[NghiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[MaCV] [nvarchar](50) NOT NULL,
	[HoDem] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[NghiChu] [nvarchar](50) NULL,
	[MatKhau] [varchar](255) NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhong]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhong](
	[MaPhong] [nvarchar](50) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[LoaiPhong] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,
	[DaDangKy] [bit] NOT NULL,
	[DaNhanPhong] [bit] NOT NULL,
 CONSTRAINT [PK_tblPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSDDV]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSDDV](
	[MaDK] [nvarchar](50) NOT NULL,
	[MaDV] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgaySuDung] [smalldatetime] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tblSDDV_1] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThanhToan]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThanhToan](
	[MaDK] [nvarchar](50) NOT NULL,
	[MaPhong] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[NgayThanhToan] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tblThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaDK] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblPhong] ADD  CONSTRAINT [DF_DaDangKy]  DEFAULT ((0)) FOR [DaDangKy]
GO
ALTER TABLE [dbo].[tblPhong] ADD  CONSTRAINT [DF_DaNhanPhong]  DEFAULT ((0)) FOR [DaNhanPhong]
GO
ALTER TABLE [dbo].[tblDangKy]  WITH CHECK ADD  CONSTRAINT [FK_tblDangKy_tblKhachHang] FOREIGN KEY([MaKhach])
REFERENCES [dbo].[tblKhachHang] ([MaKhach])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDangKy] CHECK CONSTRAINT [FK_tblDangKy_tblKhachHang]
GO
ALTER TABLE [dbo].[tblDangKy]  WITH CHECK ADD  CONSTRAINT [FK_tblDangKy_tblPhong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tblPhong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDangKy] CHECK CONSTRAINT [FK_tblDangKy_tblPhong]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[tblChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblChucVu]
GO
ALTER TABLE [dbo].[tblSDDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSDDV_tblDangKy] FOREIGN KEY([MaDK])
REFERENCES [dbo].[tblDangKy] ([MaDK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSDDV] CHECK CONSTRAINT [FK_tblSDDV_tblDangKy]
GO
ALTER TABLE [dbo].[tblSDDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSDDV_tblDichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[tblDichVu] ([MaDV])
GO
ALTER TABLE [dbo].[tblSDDV] CHECK CONSTRAINT [FK_tblSDDV_tblDichVu]
GO
ALTER TABLE [dbo].[tblSDDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSDDV_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblSDDV] CHECK CONSTRAINT [FK_tblSDDV_tblNhanVien]
GO
ALTER TABLE [dbo].[tblThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_tblThanhToan_tblDangKy] FOREIGN KEY([MaDK])
REFERENCES [dbo].[tblDangKy] ([MaDK])
GO
ALTER TABLE [dbo].[tblThanhToan] CHECK CONSTRAINT [FK_tblThanhToan_tblDangKy]
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_Delete]
	@MaCV nvarchar(100)
As
	Delete [tblChucVu] 
	Where  ([MaCV]= @MaCV)
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_Insert]
	@MaCV nvarchar(100),
	@Khu int,
	@TenDonVi nvarchar(100),
	@ChucVu nvarchar(100)
As
	Insert Into [tblChucVu]
	(
		[MaCV],
		[Khu],
		[TenDonVi],
		[ChucVu]
	)
	Values
	(
		@MaCV,
		@Khu,
		@TenDonVi,
		@ChucVu
	)

GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblChucVu_SelectAll]
As
	Select * From [tblChucVu]
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_SelectByID]
	@MaCV nvarchar(100)
As
	Select *  From [tblChucVu]
 	Where  ([MaCV] = @MaCV)
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaCV]) As RowNum,*
		From [tblChucVu]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblChucVu]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblChucVu]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_TestByID]
	@MaCV nvarchar(100),
	@TestID Bit Output
As
	Select [MaCV] From [tblChucVu]
 	Where  ([MaCV] = @MaCV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblChucVu_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblChucVu_Update]
	@MaCV nvarchar(100),
	@Khu int,
	@TenDonVi nvarchar(100),
	@ChucVu nvarchar(100)
As
	Update [tblChucVu]  Set
		[Khu] = @Khu,
		[TenDonVi] = @TenDonVi,
		[ChucVu] = @ChucVu
	Where ([MaCV] = @MaCV)
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_Delete]
	@MaDK nvarchar(50)
As
	Delete [tblDangKy] 
	Where  ([MaDK]= @MaDK)
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblDangKy_Insert]
	@MaDK nvarchar(50),
	@MaKhach nvarchar(50) = null ,
	@MaPhong nvarchar(50) = null ,
	@NgayDangKy smalldatetime = null,
	@NgayDen smalldatetime = null ,
	@NgayDi smalldatetime = null ,
	@TienDat int = null,
	@SoNguoi int = null,
	@NgiChu nvarchar(50) = null
As

	Insert Into [tblDangKy]
	(
		[MaDK],
		[MaKhach],
		[MaPhong],
		[NgayDangKy],
		[NgayDen],
		[NgayDi],
		[TienDat],
		[SoNguoi],
		[NgiChu]
	)
	Values
	(
		@MaDK,
		@MaKhach,
		@MaPhong,
		@NgayDangKy,
		@NgayDen,
		@NgayDi,
		@TienDat,
		@SoNguoi,
		@NgiChu
	)

GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblDangKy_SelectAll]
As
	Select * From [tblDangKy]
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_SelectByID]
	@MaDK nvarchar(100)
As
	Select *  From [tblDangKy]
 	Where  ([MaDK] = @MaDK)
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDK]) As RowNum,*
		From [tblDangKy]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblDangKy]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblDangKy]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDangKy_TestByID]
	@MaDK nvarchar(100),
	@TestID Bit Output
As
	Select [MaDK] From [tblDangKy]
 	Where  ([MaDK] = @MaDK)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblDangKy_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblDangKy_Update]
	@MaDK nvarchar(50),
	@MaKhach nvarchar(50) ,
	@MaPhong nvarchar(50) =  null ,
	@NgayDangKy smalldatetime = null,
	@NgayDen smalldatetime = null ,
	@NgayDi smalldatetime = null ,
	@TienDat int = null,
	@SoNguoi int = null,
	@NgiChu nvarchar(50) = null
As
	Update [tblDangKy]  Set
		[MaKhach] = @MaKhach,
		[MaPhong] = CASE WHEN @MaPhong IS NOT NULL THEN @MaPhong ELSE [MaPhong] END,
		[NgayDangKy] = @NgayDangKy,
		[NgayDen] = @NgayDen,
		[NgayDi] = @NgayDi,
		[TienDat] = @TienDat,
		[SoNguoi] = @SoNguoi,
		[NgiChu] = @NgiChu
	Where ([MaDK] = @MaDK)
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblDichVu_Delete]
    @MaDV NVARCHAR(50) -- Đổi từ NVARCHAR(100) sang NVARCHAR(50)
AS
BEGIN
    DELETE FROM [tblDichVu]
    WHERE [MaDV] = @MaDV;
END;
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_Insert]
	@MaDV nvarchar(100),
	@TenDV nvarchar(100),
	@GiaTien bigint
As
	Insert Into [tblDichVu]
	(
		[MaDV],
		[TenDV],
		[GiaTien]
	)
	Values
	(
		@MaDV,
		@TenDV,
		@GiaTien
	)

GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblDichVu_SelectAll]
As
	Select * From [tblDichVu]
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_SelectByID]
	@MaDV nvarchar(100)
As
	Select *  From [tblDichVu]
 	Where  ([MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDV]) As RowNum,*
		From [tblDichVu]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblDichVu]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblDichVu]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_TestByID]
	@MaDV nvarchar(100),
	@TestID Bit Output
As
	Select [MaDV] From [tblDichVu]
 	Where  ([MaDV] = @MaDV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblDichVu_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblDichVu_Update]
	@MaDV nvarchar(100),
	@TenDV nvarchar(100),
	@GiaTien bigint
As
	Update [tblDichVu]  Set
		[TenDV] = @TenDV,
		[GiaTien] = @GiaTien
	Where ([MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblKhachHang_Delete]
    @MaKhach NVARCHAR(50) -- Đổi từ NVARCHAR(100) sang NVARCHAR(50)
AS
BEGIN
    DELETE FROM [tblKhachHang]
    WHERE [MaKhach] = @MaKhach;
END;
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_GetByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tblKhachHang_GetByID](
	@MaKhach nvarchar(50))
AS
BEGIN
	SELECT * FROM tblKhachHang WHERE MaKhach = @MaKhach
END
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_Insert]
	@MaKhach nvarchar(100),
	@HoDem nvarchar(100),
	@Ten nvarchar(100),
	@NgaySinh smalldatetime,
	@CMND nvarchar(100),
	@QuocTich nvarchar(100),
	@NghiChu nvarchar(100)
As
	Insert Into [tblKhachHang]
	(
		[MaKhach],
		[HoDem],
		[Ten],
		[NgaySinh],
		[CMND],
		[QuocTich],
		[NghiChu]
	)
	Values
	(
		@MaKhach,
		@HoDem,
		@Ten,
		@NgaySinh,
		@CMND,
		@QuocTich,
		@NghiChu
	)

GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblKhachHang_SelectAll]
As
	Select * From [tblKhachHang]
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_SelectByID]
	@MaKhach nvarchar(100)
As
	Select *  From [tblKhachHang]
 	Where  ([MaKhach] = @MaKhach)
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaKhach]) As RowNum,*
		From [tblKhachHang]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblKhachHang]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblKhachHang]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_TestByID]
	@MaKhach nvarchar(100),
	@TestID Bit Output
As
	Select [MaKhach] From [tblKhachHang]
 	Where  ([MaKhach] = @MaKhach)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblKhachHang_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblKhachHang_Update]
	@MaKhach nvarchar(100),
	@HoDem nvarchar(100),
	@Ten nvarchar(100),
	@NgaySinh smalldatetime,
	@CMND nvarchar(100),
	@QuocTich nvarchar(100),
	@NghiChu nvarchar(100)
As
	Update [tblKhachHang]  Set
		[HoDem] = @HoDem,
		[Ten] = @Ten,
		[NgaySinh] = @NgaySinh,
		[CMND] = @CMND,
		[QuocTich] = @QuocTich,
		[NghiChu] = @NghiChu
	Where ([MaKhach] = @MaKhach)
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblNhanVien_Delete]
	@MaNV nvarchar(100)
As
	Delete [tblNhanVien] 
	Where  ([MaNV]= @MaNV)
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblNhanVien_Insert]
    @MaNV NVARCHAR(50),
    @MaCV NVARCHAR(50)	,
    @HoDem NVARCHAR(50),
    @Ten NVARCHAR(50),
    @NgaySinh SMALLDATETIME,
    @CMND NVARCHAR(50),
    @NghiChu NVARCHAR(50),
    @MatKhau NVARCHAR(255) -- Thêm tham số mới
AS
BEGIN
    -- Chèn dữ liệu vào bảng tblNhanVien
    INSERT INTO tblNhanVien (MaNV, MaCV, HoDem, Ten, NgaySinh, CMND, NghiChu, MatKhau)
    VALUES (@MaNV, @MaCV, @HoDem, @Ten, @NgaySinh, @CMND, @NghiChu, @MatKhau);
END;
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblNhanVien_SelectAll]
As
	Select * From [tblNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_SelectByID]
	@MaNV nvarchar(100)
As
	Select *  From [tblNhanVien]
 	Where  ([MaNV] = @MaNV)
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaNV]) As RowNum,*
		From [tblNhanVien]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblNhanVien]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblNhanVien]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblNhanVien_TestByID]
	@MaNV nvarchar(100),
	@TestID Bit Output
As
	Select [MaNV] From [tblNhanVien]
 	Where  ([MaNV] = @MaNV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblNhanVien_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblNhanVien_Update]
    @MaNV NVARCHAR(50),
    @MaCV NVARCHAR(50) ,
    @HoDem NVARCHAR(50),
    @Ten NVARCHAR(50),
    @NgaySinh SMALLDATETIME,
    @CMND NVARCHAR(50),
    @NghiChu NVARCHAR(50),
    @MatKhau NVARCHAR(255) -- Thêm tham số mới
AS
BEGIN
    -- Cập nhật dữ liệu vào bảng tblNhanVien
    UPDATE tblNhanVien
    SET 
        MaCV = @MaCV,
        HoDem = @HoDem,
        Ten = @Ten,
        NgaySinh = @NgaySinh,
        CMND = @CMND,
        NghiChu = @NghiChu,
        MatKhau = @MatKhau -- Thêm cột MatKhau vào đây
    WHERE MaNV = @MaNV;
END;
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_DaDangKy]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[tblPhong_DaDangKy]
AS
BEGIN
    SET NOCOUNT ON; 
    -- Thêm logic của bạn ở đây
    SELECT * 
    FROM tblPhong 
    WHERE DaDangKy = 1;
END

GO
/****** Object:  StoredProcedure [dbo].[tblPhong_DaNhanPhong]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblPhong_DaNhanPhong]
AS
BEGIN
    SET NOCOUNT ON; 
    -- Thêm logic của bạn ở đây
    SELECT * 
    FROM tblPhong 
    WHERE DaNhanPhong = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_Delete]
	@MaPhong nvarchar(100)
As
	Delete [tblPhong] 
	Where  ([MaPhong]= @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_Insert]
	@MaPhong nvarchar(100),
	@TenPhong nvarchar(100),
	@LoaiPhong nvarchar(100),
	@Gia bigint
As
	Insert Into [tblPhong]
	(
		[MaPhong],
		[TenPhong],
		[LoaiPhong],
		[Gia]
	)
	Values
	(
		@MaPhong,
		@TenPhong,
		@LoaiPhong,
		@Gia
	)

GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblPhong_SelectAll]
As
	Select * From [tblPhong]
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_SelectByID]
	@MaPhong nvarchar(100)
As
	Select *  From [tblPhong]
 	Where  ([MaPhong] = @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaPhong]) As RowNum,*
		From [tblPhong]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblPhong]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblPhong]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_TestByID]
	@MaPhong nvarchar(100),
	@TestID Bit Output
As
	Select [MaPhong] From [tblPhong]
 	Where  ([MaPhong] = @MaPhong)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblPhong_Update]
	@MaPhong nvarchar(100),
	@TenPhong nvarchar(100),
	@LoaiPhong nvarchar(100),
	@Gia bigint
As
	Update [tblPhong]  Set
		[TenPhong] = @TenPhong,
		[LoaiPhong] = @LoaiPhong,
		[Gia] = @Gia
	Where ([MaPhong] = @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_UpdateDangKy]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblPhong_UpdateDangKy]
    @MaPhong NVARCHAR(50),
    @DaDangKy BIT
AS
BEGIN
    UPDATE tblPhong
    SET DaDangKy = @DaDangKy
    WHERE MaPhong = @MaPhong;
END
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_UpdateNhanPhong]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblPhong_UpdateNhanPhong]
    @MaPhong NVARCHAR(50),
    @DaNhanPhong BIT
AS
BEGIN
    UPDATE tblPhong
    SET DaNhanPhong = @DaNhanPhong
    WHERE MaPhong = @MaPhong;
END
GO
/****** Object:  StoredProcedure [dbo].[tblPhong_UpdateStatus]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tblPhong_UpdateStatus]
    @MaPhong nvarchar(50),
    @DaDangKy bit,
    @DaNhanPhong bit
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE tblPhong
    SET DaDangKy = @DaDangKy,
        DaNhanPhong = @DaNhanPhong
    WHERE MaPhong = @MaPhong

	RETURN @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_Delete]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100)
As
	Delete [tblSDDV] 
	Where  ([MaDK]= @MaDK and [MaDV]= @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_Insert]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100),
	@MaNV nvarchar(100) = null,
	@NgaySuDung smalldatetime = null,
	@SoLuong int = null
As
	Insert Into [tblSDDV]
	(
		[MaDK],
		[MaDV],
		[MaNV],
		[NgaySuDung],
		[SoLuong]
	)
	Values
	(
		@MaDK,
		@MaDV,
		@MaNV,
		@NgaySuDung,
		@SoLuong
	)

GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblSDDV_SelectAll]
As
	Select * From [tblSDDV]
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectAllByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[tblSDDV_SelectAllByID]
@MaDK nvarchar(50)
AS
	Select *From tblSDDV
	Where MaDK = @MaDK
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_SelectByID]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100)
As
	Select *  From [tblSDDV]
 	Where  ([MaDK] = @MaDK and [MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDK],[MaDV]) As RowNum,*
		From [tblSDDV]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblSDDV]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblSDDV]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_TestByID]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100),
	@TestID Bit Output
As
	Select [MaDK],[MaDV] From [tblSDDV]
 	Where  ([MaDK] = @MaDK and [MaDV] = @MaDV)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblSDDV_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblSDDV_Update]
	@MaDK nvarchar(100),
	@MaDV nvarchar(100),
	@MaNV nvarchar(100),
	@NgaySuDung smalldatetime,
	@SoLuong int
As
	Update [tblSDDV]  Set
		[MaNV] = @MaNV,
		[NgaySuDung] = @NgaySuDung,
		[SoLuong] = @SoLuong
	Where ([MaDK] = @MaDK and [MaDV] = @MaDV)
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_Delete]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_Delete]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100)
As
	Delete [tblThanhToan] 
	Where  ([MaDK]= @MaDK and [MaPhong]= @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_Insert]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_Insert]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100),
	@MaNV nvarchar(100),
	@NgayThanhToan smalldatetime
As
	Insert Into [tblThanhToan]
	(
		[MaDK],
		[MaPhong],
		[MaNV],
		[NgayThanhToan]
	)
	Values
	(
		@MaDK,
		@MaPhong,
		@MaNV,
		@NgayThanhToan
	)

GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectAll]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tblThanhToan_SelectAll]
As
	Select * From [tblThanhToan]
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_SelectByID]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100)
As
	Select *  From [tblThanhToan]
 	Where  ([MaDK] = @MaDK and [MaPhong] = @MaPhong)
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectPage]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_SelectPage]
	@CurrentPage int,
	@PageSize int,
	@RowCount int output
As
	With TablePaging As
	(
		 Select ROW_NUMBER()
		Over(Order By [MaDK],[MaPhong]) As RowNum,*
		From [tblThanhToan]
	)
	Select @RowCount = Count(RowNum) from  TablePaging
	Select * From TablePaging
	Where RowNum Between (@CurrentPage - 1) * @PageSize + 1 And @CurrentPage * @PageSize
	Order By RowNum
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_SelectTop]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_SelectTop]
	@Top	Nvarchar(10),
	@Where	Nvarchar(200),
	@Order	Nvarchar(200)
AS
	Declare @SQL Nvarchar(500)
	Set @SQL = 'Select Top (' + @Top + ') * From [tblThanhToan]'
	if Len(@Top) = 0
		Begin
			Set @SQL = 'Select * From [tblThanhToan]'
		End
	If len(@Where) >0 
		Begin
			Set @SQL = @SQL + ' Where ' + @Where
		End
	If Len(@Order) >0
		Begin
			Set @SQL = @SQL + ' Order By ' + @Order
		End
Execute sp_executesql @SQL
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_TestByID]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_TestByID]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100),
	@TestID Bit Output
As
	Select [MaDK],[MaPhong] From [tblThanhToan]
 	Where  ([MaDK] = @MaDK and [MaPhong] = @MaPhong)
	If(@@rowcount =0) Set @TestID = 0
	Else Set @TestID = 1
GO
/****** Object:  StoredProcedure [dbo].[tblThanhToan_Update]    Script Date: 1/2/2025 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[tblThanhToan_Update]
	@MaDK nvarchar(100),
	@MaPhong nvarchar(100),
	@MaNV nvarchar(100),
	@NgayThanhToan smalldatetime
As
	Update [tblThanhToan]  Set
		[MaNV] = @MaNV,
		[NgayThanhToan] = @NgayThanhToan
	Where ([MaDK] = @MaDK and [MaPhong] = @MaPhong)
GO
USE [master]
GO
ALTER DATABASE [QuanLyKhachSan] SET  READ_WRITE 
GO
