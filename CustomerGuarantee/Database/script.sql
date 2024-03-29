USE [CustomerCase]
GO
/****** Object:  Table [dbo].[CustomerCaseInfor]    Script Date: 20/03/2023 5:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCaseInfor](
	[CustomerCaseID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](200) NULL,
	[NguoiLienHe] [nvarchar](200) NULL,
	[Address] [nvarchar](500) NULL,
	[PhoneCustomer] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[ProductName] [nvarchar](500) NULL,
	[ProductImage] [nvarchar](500) NULL,
	[CarName] [nvarchar](500) NULL,
	[CarAddress] [nvarchar](500) NULL,
	[CarPhoneNumber] [nvarchar](200) NULL,
	[InforFromCustomer] [nvarchar](500) NULL,
	[BillNumber] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[DateCreate] [datetime] NULL,
	[CodeGenerate] [nvarchar](200) NULL,
	[Status] [int] NULL,
	[UserEdit] [nvarchar](200) NULL,
	[ThoiGianXuLy] [nvarchar](200) NULL,
	[DateUpdate] [datetime] NULL,
	[GhiChuXuLy] [nvarchar](500) NULL,
	[NgayGui] [nvarchar](500) NULL,
	[UserNgayGui] [datetime] NULL,
	[UserTenNhaXe] [nvarchar](500) NULL,
	[UserAddress] [nvarchar](500) NULL,
	[USerSoDTNhaXe] [nvarchar](200) NULL,
	[UserGuiType] [int] NULL,
	[USerGuiTra] [nvarchar](200) NULL,
	[UserSDTGiaoHang] [nvarchar](200) NULL,
	[ProductSeri] [nvarchar](200) NULL,
	[ProductNgayMua] [nvarchar](200) NULL,
	[ProductTinhTrangLoi] [nvarchar](200) NULL,
	[ProductPhukien] [nvarchar](500) NULL,
	[PhuongThucGui] [int] NULL,
	[TenGiaoNhan] [nvarchar](200) NULL,
	[SoDienThoaiGiaoNhan] [nvarchar](200) NULL,
	[HinhThucGui] [int] NULL,
	[GhiChuPhatSinh] [nvarchar](500) NULL,
	[Step1] [datetime] NULL,
	[Step2] [datetime] NULL,
	[Step3] [datetime] NULL,
	[Step4] [datetime] NULL,
	[Step5] [datetime] NULL,
	[StarRate] [int] NULL,
	[RateDescription] [nvarchar](500) NULL,
 CONSTRAINT [PK_CustomerCaseInfor] PRIMARY KEY CLUSTERED 
(
	[CustomerCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tCustomerUser]    Script Date: 20/03/2023 5:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCustomerUser](
	[CustomerUserId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](200) NULL,
	[CustomerNLH] [nvarchar](500) NULL,
	[CustomerPhone] [nvarchar](200) NULL,
	[CustomerUser] [nvarchar](200) NULL,
	[CustomerPassword] [nvarchar](200) NULL,
	[CustomerEmail] [nvarchar](200) NULL,
	[CustomerAddress] [nvarchar](500) NULL,
 CONSTRAINT [PK_tCustomerUser] PRIMARY KEY CLUSTERED 
(
	[CustomerUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tUSers]    Script Date: 20/03/2023 5:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUSers](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Hoten] [nvarchar](200) NULL,
 CONSTRAINT [PK_tUSers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CustomerCaseInfor] ON 

INSERT [dbo].[CustomerCaseInfor] ([CustomerCaseID], [CustomerName], [NguoiLienHe], [Address], [PhoneCustomer], [Email], [ProductName], [ProductImage], [CarName], [CarAddress], [CarPhoneNumber], [InforFromCustomer], [BillNumber], [Description], [DateCreate], [CodeGenerate], [Status], [UserEdit], [ThoiGianXuLy], [DateUpdate], [GhiChuXuLy], [NgayGui], [UserNgayGui], [UserTenNhaXe], [UserAddress], [USerSoDTNhaXe], [UserGuiType], [USerGuiTra], [UserSDTGiaoHang], [ProductSeri], [ProductNgayMua], [ProductTinhTrangLoi], [ProductPhukien], [PhuongThucGui], [TenGiaoNhan], [SoDienThoaiGiaoNhan], [HinhThucGui], [GhiChuPhatSinh], [Step1], [Step2], [Step3], [Step4], [Step5], [StarRate], [RateDescription]) VALUES (57, N'Công ty TNHH', N'Nghiệp', N'55/10/36 Thành Mỹ P.8 Quận Tân Bình TPHCM', N'0914556873', N'lethanhnghiep1993@gmail.com', N'Máy Tính HP Core I5', N'2023032005292906_laptop hp core i5.jpg', N'Hoa Mai', N'Nguyễn Thái Bình', N'09087076', NULL, N'', N'', CAST(N'2023-03-20 17:30:26.990' AS DateTime), N'7VWI77ZOC6MN', 0, NULL, NULL, NULL, NULL, N'2023-03-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'846450-594375', N'2022-03-15', N'ko lên nguồn', N'cục sạc', NULL, N'', N'', 3, NULL, CAST(N'2023-03-20 17:30:26.990' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CustomerCaseInfor] OFF
SET IDENTITY_INSERT [dbo].[tCustomerUser] ON 

INSERT [dbo].[tCustomerUser] ([CustomerUserId], [CustomerName], [CustomerNLH], [CustomerPhone], [CustomerUser], [CustomerPassword], [CustomerEmail], [CustomerAddress]) VALUES (20, NULL, NULL, NULL, N'LUUHH@NGUYENKIMVN.VN', N'Fk4HvaSaK4I=', N'LUUHH@NGUYENKIMVN.VN', NULL)
INSERT [dbo].[tCustomerUser] ([CustomerUserId], [CustomerName], [CustomerNLH], [CustomerPhone], [CustomerUser], [CustomerPassword], [CustomerEmail], [CustomerAddress]) VALUES (21, N'Nghiệp', N'Nghiệp', N'0914556873', N'lethanhnghiep1993@gmail.com', N'kaRidgTM+uPCMvZ1p4oLdw==', N'lethanhnghiep1993@gmail.com', N'55/10/36 Thành Mỹ P.8 Quận Tân Bình TPHCM')
SET IDENTITY_INSERT [dbo].[tCustomerUser] OFF
SET IDENTITY_INSERT [dbo].[tUSers] ON 

INSERT [dbo].[tUSers] ([UserID], [UserName], [Password], [Email], [Hoten]) VALUES (2, N'admin', N'YrItVniimrc=', N'lamgamekhong@gmail.com', NULL)
INSERT [dbo].[tUSers] ([UserID], [UserName], [Password], [Email], [Hoten]) VALUES (3, N'nghieplt', N'BdAxdrrrVNk=', N'lethanhnghiep1993@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[tUSers] OFF
