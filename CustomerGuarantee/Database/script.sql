USE [CustomerCase]
GO
/****** Object:  Table [dbo].[CustomerCaseInfor]    Script Date: 20/03/2023 4:21:25 PM ******/
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
/****** Object:  Table [dbo].[tCustomerUser]    Script Date: 20/03/2023 4:21:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCustomerUser](
	[CustomerUserId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](200) NULL,
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
/****** Object:  Table [dbo].[tUSers]    Script Date: 20/03/2023 4:21:25 PM ******/
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

INSERT [dbo].[CustomerCaseInfor] ([CustomerCaseID], [CustomerName], [NguoiLienHe], [Address], [PhoneCustomer], [Email], [ProductName], [ProductImage], [CarName], [CarAddress], [CarPhoneNumber], [InforFromCustomer], [BillNumber], [Description], [DateCreate], [CodeGenerate], [Status], [UserEdit], [ThoiGianXuLy], [DateUpdate], [GhiChuXuLy], [NgayGui], [UserNgayGui], [UserTenNhaXe], [UserAddress], [USerSoDTNhaXe], [UserGuiType], [USerGuiTra], [UserSDTGiaoHang], [ProductSeri], [ProductNgayMua], [ProductTinhTrangLoi], [ProductPhukien], [PhuongThucGui], [TenGiaoNhan], [SoDienThoaiGiaoNhan], [HinhThucGui], [GhiChuPhatSinh], [Step1], [Step2], [Step3], [Step4], [Step5], [StarRate], [RateDescription]) VALUES (55, N'Công Ty TNHH', N'Nghiệp', N'55/10/36 Thành Mỹ', N'0914566873', N'lethanhnghiep1993@gmail.com', N'HP05', N'', N'Hoa Mai', N'Nguyễn Thái bình', N'0987875654', NULL, N'23434', N'', CAST(N'2023-03-17 17:23:39.120' AS DateTime), N'V6HQHG7O5RLO', 4, N'admin', N'18/03/2023 2:38:23 PM', NULL, N'Nội dung xử lý', N'2023-03-19', CAST(N'2023-03-19 14:37:00.000' AS DateTime), N'Hoa Mai', N'Nguyễn Thái Bình', N'0879877686', 1, N'Minh', NULL, N'42343 344', N'2022-10-10', N'ko lên nguồn', N'sạc', NULL, N'', N'', 3, N'Cần thêm thời gian để bảo hành', CAST(N'2023-03-17 17:23:39.120' AS DateTime), CAST(N'2023-03-18 11:14:56.070' AS DateTime), CAST(N'2023-03-18 11:17:58.580' AS DateTime), CAST(N'2023-03-18 14:13:58.477' AS DateTime), CAST(N'2023-03-18 14:38:24.647' AS DateTime), 4, N'Dịch vụ tốt')
INSERT [dbo].[CustomerCaseInfor] ([CustomerCaseID], [CustomerName], [NguoiLienHe], [Address], [PhoneCustomer], [Email], [ProductName], [ProductImage], [CarName], [CarAddress], [CarPhoneNumber], [InforFromCustomer], [BillNumber], [Description], [DateCreate], [CodeGenerate], [Status], [UserEdit], [ThoiGianXuLy], [DateUpdate], [GhiChuXuLy], [NgayGui], [UserNgayGui], [UserTenNhaXe], [UserAddress], [USerSoDTNhaXe], [UserGuiType], [USerGuiTra], [UserSDTGiaoHang], [ProductSeri], [ProductNgayMua], [ProductTinhTrangLoi], [ProductPhukien], [PhuongThucGui], [TenGiaoNhan], [SoDienThoaiGiaoNhan], [HinhThucGui], [GhiChuPhatSinh], [Step1], [Step2], [Step3], [Step4], [Step5], [StarRate], [RateDescription]) VALUES (56, N'Công Ty TNHH', N'Nghiệp', N'55/10/36 Thành Mỹ', N'0914566873', N'lethanhnghiep1993@gmail.com', N'MÁy in ', N'2023032003391504_may-in-phun-mau-epson-l1210-tai-hcm-vido-31-510x510.jpg', N'', N'', N'', NULL, N'', N'', CAST(N'2023-03-20 15:40:32.950' AS DateTime), N'TCN9QU4E99V7', 1, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'643535545', N'2022-03-10', N'ko in dc', N'ko có sp kèm theo', NULL, N'Minh', N'0998473655', 2, NULL, CAST(N'2023-03-20 15:40:32.950' AS DateTime), CAST(N'2023-03-20 16:18:30.240' AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CustomerCaseInfor] OFF
SET IDENTITY_INSERT [dbo].[tCustomerUser] ON 

INSERT [dbo].[tCustomerUser] ([CustomerUserId], [CustomerName], [CustomerPhone], [CustomerUser], [CustomerPassword], [CustomerEmail], [CustomerAddress]) VALUES (19, N'Công Ty TNHH', N'0914566873', N'lethanhnghiep1993@gmail.com', N'YrItVniimrc=', N'lethanhnghiep1993@gmail.com', N'55/10/36 Thành Mỹ')
INSERT [dbo].[tCustomerUser] ([CustomerUserId], [CustomerName], [CustomerPhone], [CustomerUser], [CustomerPassword], [CustomerEmail], [CustomerAddress]) VALUES (20, NULL, NULL, N'LUUHH@NGUYENKIMVN.VN', N'Fk4HvaSaK4I=', N'LUUHH@NGUYENKIMVN.VN', NULL)
SET IDENTITY_INSERT [dbo].[tCustomerUser] OFF
SET IDENTITY_INSERT [dbo].[tUSers] ON 

INSERT [dbo].[tUSers] ([UserID], [UserName], [Password], [Email], [Hoten]) VALUES (2, N'admin', N'YrItVniimrc=', N'lamgamekhong@gmail.com', NULL)
INSERT [dbo].[tUSers] ([UserID], [UserName], [Password], [Email], [Hoten]) VALUES (3, N'nghieplt', N'BdAxdrrrVNk=', N'lethanhnghiep1993@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[tUSers] OFF
