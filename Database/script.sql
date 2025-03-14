USE [master]
GO

CREATE DATABASE [WebBanHangMvc]
GO

USE [WebBanHangMvc]
GO

/****** Object:  Table [dbo].[Advertise]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertise](
	[AdvertiseID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertiseName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Position] [varchar](10) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Advertise] PRIMARY KEY CLUSTERED 
(
	[AdvertiseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CookieID] [char](10) NOT NULL,
	[CustomerID] [int] NULL,
	[CreateDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[CartID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CartDetails_1] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC,
	[ProductID] ASC,
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](20) NOT NULL,
	[HexCode] [char](6) NULL,
 CONSTRAINT [PK_Color_1] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ColorProducts]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorProducts](
	[ProductID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
 CONSTRAINT [PK_ColorProducts] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[CommentContent] [nvarchar](1000) NULL,
	[CommentTime] [smalldatetime] NULL,
	[CustomerID] [int] NULL,
	[Rate] [tinyint] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configurations](
	[ConfigName] [nvarchar](30) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Configurations_1] PRIMARY KEY CLUSTERED 
(
	[ConfigName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varchar](80) NULL,
	[Phone] [varchar](11) NULL,
	[Message] [nvarchar](1000) NULL,
	[CustomerID] [int] NULL,
	[IP] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Coupon](
	[CouponID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Discount] [int] NULL,
	[Type] [varchar](10) NULL,
	[FreeShip] [bit] NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[Indefinite] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Couple] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FacebookID] [varchar](20) NULL,
	[GoogleID] [varchar](20) NULL,
	[Username] [varchar](25) NULL,
	[Passwrord] [varchar](100) NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[Phone] [varchar](11) NULL,
	[Status] [bit] NOT NULL,
	[VerificationCode] [varchar](64) NULL,
	[RegistrationDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictID] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](50) NULL,
	[ProvinceID] [int] NULL,
	[Type] [varchar](10) NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExcludeCoupon]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExcludeCoupon](
	[CouponID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExcludeCoupon] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupProducts]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupProducts](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[ParentGroupID] [int] NULL,
	[Icon] [varchar](100) NULL,
	[Priority] [int] NOT NULL CONSTRAINT [DF_GroupProducts_Priority]  DEFAULT ((0)),
 CONSTRAINT [PK_GroupProduct] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImageProducts]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImageProducts](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](100) NOT NULL,
	[ImagePath] [varchar](255) NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_ImageProduct] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NULL,
	[Link] [nvarchar](255) NULL,
	[ParentMenuID] [int] NULL,
	[Priority] [tinyint] NULL CONSTRAINT [DF_Menus_Priority]  DEFAULT ((0)),
	[Label] [nvarchar](20) NULL,
	[Hot] [bit] NULL CONSTRAINT [DF_Menus_Hot]  DEFAULT ((0)),
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OptionGroups]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OptionGroups](
	[OptionGroupID] [int] IDENTITY(1,1) NOT NULL,
	[OptionGroupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_OptionGroup] PRIMARY KEY CLUSTERED 
(
	[OptionGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Options]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[OptionID] [int] IDENTITY(1,1) NOT NULL,
	[OptionName] [nvarchar](50) NULL,
	[OptionGroupID] [int] NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[OptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [bigint] NULL,
	[Quantity] [tinyint] NULL,
	[ColorID] [int] NULL,
	[Total] [bigint] NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[PaymentID] [int] NULL,
	[OrderDate] [smalldatetime] NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varchar](80) NULL,
	[Address] [nvarchar](100) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[Phone] [varchar](11) NULL,
	[TotalPrice] [bigint] NULL,
	[Discount] [bigint] NULL,
	[PaymentDate] [smalldatetime] NOT NULL,
	[Paid] [bit] NULL,
	[CouponCode] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](10) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductOptions]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOptions](
	[ProductID] [int] NOT NULL,
	[OptionID] [int] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[Priority] [tinyint] NULL,
 CONSTRAINT [PK_ProductOptions] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](120) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Price] [bigint] NOT NULL CONSTRAINT [DF_Products_Price]  DEFAULT ((0)),
	[SalePrice] [bigint] NOT NULL CONSTRAINT [DF_Products_PriceNew]  DEFAULT ((0)),
	[Stock] [int] NOT NULL CONSTRAINT [DF_Products_Quantity]  DEFAULT ((0)),
	[GroupID] [int] NOT NULL,
	[UseMultiColor] [bit] NOT NULL CONSTRAINT [DF_Products_VariationSizeColor]  DEFAULT ((0)),
	[CreateDate] [smalldatetime] NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Products_Active]  DEFAULT ((1)),
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provinces](
	[ProvinceID] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [nvarchar](50) NOT NULL,
	[Type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quantity]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quantity](
	[ProductID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[Stock] [int] NULL,
 CONSTRAINT [PK_Quantity] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/27/2016 12:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](24) NULL,
	[Password] [varchar](100) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varbinary](80) NULL,
	[UserRule] [tinyint] NULL,
	[IP] [varchar](50) NULL,
	[Status] [varchar](10) NOT NULL,
	[RegistrationDate] [smalldatetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (1, N'Đỏ', N'FF0D0D')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (2, N'Đen', N'000000')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (3, N'Vàng', N'FFFB0A')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (4, N'Hồng', N'FF0AB1')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (5, N'Xanh dương', N'0A8DFF')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (6, N'Cam', N'FF7C0A')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (7, N'Xanh lá', N'02C736')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (8, N'Tím', N'7A00CC')
SET IDENTITY_INSERT [dbo].[Color] OFF
INSERT [dbo].[Configurations] ([ConfigName], [Value], [Description]) VALUES (N'product_per_page', N'5', N'Số sản phẩm trên 1 trang')
INSERT [dbo].[Configurations] ([ConfigName], [Value], [Description]) VALUES (N'site_title', N'HiTha Shop', N'Tiêu đề trang web')
INSERT [dbo].[Configurations] ([ConfigName], [Value], [Description]) VALUES (N'support_email', N'admin@sieunoob.vn', N'Email hỗ trợ')
INSERT [dbo].[Configurations] ([ConfigName], [Value], [Description]) VALUES (N'support_phone', N'231232131231', N'Số điện thoại hỗ trợ')
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FacebookID], [GoogleID], [Username], [Passwrord], [FullName], [Email], [Address], [ProvinceID], [DistrictID], [Phone], [Status], [VerificationCode], [RegistrationDate]) VALUES (4, NULL, NULL, NULL, N'026d9dfa19927fae79a57e7af37bb122', N'Lê Trung Hiển', N'hienlt0610@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2016-09-27 00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[GroupProducts] ON 

INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (1, N'Thời trang', NULL, N'diamond', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (2, N'Thời trang nam', 1, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (3, N'Quần áo nam', 2, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (4, N'Giày dép', 2, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (6, N'Phụ kiện', 2, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (7, N'Thời trang nữ', 1, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (8, N'Quần áo nữ', 7, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (9, N'Túi xách', 7, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (10, N'Phụ kiện thời trang', 7, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (11, N'Giày dép nữ', 7, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (12, N'Thời trang trẻ em', 1, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (13, N'Trẻ sơ sinh - Trẻ nhỏ', 12, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (14, N'Trẻ em', 12, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (15, N'Đồng hồ trang sức', NULL, N'codepen', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (16, N'Đồng hồ Nam - Nữ', 15, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (17, N'Đồng hồ đeo tay', 16, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (18, N'Dây đồng hồ', 16, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (19, N'Hộp đồng hồ', 16, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (20, N'Trang sức', 15, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (21, N'Trang sức cao cấp', 20, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (22, N'Trang sức thời trang', 20, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (23, N'Trang sức nam', 20, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (24, N'Trang sức trẻ em', 20, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (25, N'Đồ điện tử', NULL, N'archive', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (26, N'Máy ảnh máy quay', 25, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (27, N'Ống nhòm, kính thiên văn', 26, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (28, N'Máy quay phim', 26, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (29, N'Máy ảnh', 26, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (30, N'Âm thanh gia đình', 25, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (31, N'Âm ly', 30, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (32, N'Loa chủ & Loa trầm', 30, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (33, N'Thiết bị âm thanh gia đình', 30, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (34, N'Sức khỏe & Làm đẹp', NULL, N'heart', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (35, N'Làm đẹp', 34, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (36, N'Nước hoa', 35, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (37, N'Trang điểm', 35, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (38, N'Chăm sóc da', 35, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (39, N'Tăng cường sức khỏe và dinh dưỡng', 34, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (40, N'Thực phẩm chức năng dinh dưỡng', 39, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (41, N'Hình xăm & nghệ thuật xăm', 39, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (42, N'Message', 39, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (43, N'Thiết bị chăm sóc sức khỏe', 34, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (44, N'Thiết bị CSSK Cá nhân', 43, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (45, N'Thiết bị y tế', 43, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (46, N'Hỗ trợ đi lại, xe lăn', 43, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (47, N'Máy tính & ĐTDĐ', NULL, N'laptop', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (48, N'Điện thoại di động', 47, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (49, N'Smart Watchs', 48, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (50, N'Điện thoại di động', 48, NULL, 1)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (51, N'Phụ kiện điện thoại', 48, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (52, N'Máy tính', 47, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (53, N'Máy tính bàn', 52, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (54, N'Máy tính bảng', 52, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (55, N'Laptops & Notebooks', 52, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (56, N'Gia đình & trẻ em', NULL, N'child', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (57, N'Nội ngoại thất', 56, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (58, N'Phòng tắm', 57, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (59, N'Phòng ngủ', 57, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (60, N'Nhà bếp, phòng ăn, bar', 57, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (61, N'Trang trí nội ngoại thất', 57, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (62, N'Đồ trẻ em', 56, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (63, N'Đồ dùng trẻ em', 62, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (64, N'Sức khỏe và an toàn cho trẻ', 62, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (65, N'Trang trí phòng trẻ', 62, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (66, N'Đồ chơi trẻ em', 62, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (67, N'Chăm sóc thú cưng', 56, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (68, N'Bể cá - Cá', 67, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (69, N'Chăm sóc Chim', 67, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (70, N'Chăm sóc Mèo', 67, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (71, N'Chăm sóc Chó', 67, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (72, N'Đồ thể thao', NULL, N'futbol-o', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (73, N'Đồ chơi Golf', 72, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (74, N'Gậy Golf', 73, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (75, N'Túi Golf', 73, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (76, N'Phụ kiện chơi Golf', 73, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (77, N'Các môn thể thao khác', 72, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (78, N'Đạp xe', 77, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (79, N'Thể thao ngoài trời', 77, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (80, N'Thể thao đồng đội', 77, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (81, N'Giải trí & Sở thích', NULL, N'star-o', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (82, N'Đồ chơi - Sở thích', 81, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (83, N'Đồ chơi xây dựng', 82, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (84, N'Xe mô hình', 82, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (85, N'Đồ chơi giáo dục', 82, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (86, N'Búp bê - Gấu bông', 81, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (87, N'Gấu bông', 86, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (88, N'Búp bê', 86, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (89, N'Trò chơi Video', 81, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (90, N'Trò chơi', 89, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (91, N'Phụ kiện', 89, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (92, N'Công nghiệp', NULL, N'plane', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (93, N'Thiết bị điện', 92, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (94, N'Thiết bị thí nghiệm', 93, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (95, N'Thiết bị tự động hóa', 93, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (96, N'Sức khỏe và khoa học đời sống', 92, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (97, N'Thiết bị thẩm mỹ', 96, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (98, N'Ô tô - Xe máy', NULL, N'car', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (99, N'Tivi', 25, NULL, 0)
INSERT [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority]) VALUES (100, N'Phụ kiện thiết bị', 52, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[GroupProducts] OFF
SET IDENTITY_INSERT [dbo].[ImageProducts] ON 

INSERT [dbo].[ImageProducts] ([ImageID], [Caption], [ImagePath], [ProductID]) VALUES (2, N'a', N'173408_1.jpg', 8)
SET IDENTITY_INSERT [dbo].[ImageProducts] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([MenuID], [MenuName], [Link], [ParentMenuID], [Priority], [Label], [Hot]) VALUES (1, N'Home', N'/Home', NULL, 0, N'', 1)
INSERT [dbo].[Menus] ([MenuID], [MenuName], [Link], [ParentMenuID], [Priority], [Label], [Hot]) VALUES (2, N'Khuyến mãi', N'/KhuyenMai', NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Menus] OFF
SET IDENTITY_INSERT [dbo].[OptionGroups] ON 

INSERT [dbo].[OptionGroups] ([OptionGroupID], [OptionGroupName]) VALUES (1, N'Điện tử')
SET IDENTITY_INSERT [dbo].[OptionGroups] OFF
SET IDENTITY_INSERT [dbo].[Options] ON 

INSERT [dbo].[Options] ([OptionID], [OptionName], [OptionGroupID]) VALUES (1, N'Bộ nhớ trong', 1)
INSERT [dbo].[Options] ([OptionID], [OptionName], [OptionGroupID]) VALUES (2, N'Ram', 1)
SET IDENTITY_INSERT [dbo].[Options] OFF
INSERT [dbo].[ProductOptions] ([ProductID], [OptionID], [Value], [Priority]) VALUES (18, 1, N'16GB', 1)
INSERT [dbo].[ProductOptions] ([ProductID], [OptionID], [Value], [Priority]) VALUES (18, 2, N'2GB', 2)
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (3, N'Giày Biti''s Nữ HUNTER LITEKNIT - DSW051333XDG', N'fsdfsdfdsfds', 495000, 500, 50, 1, 0, CAST(N'2016-09-17 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (5, N'Pin sạc dự phòng Xiaomi 10000mAh', N'111111111', 600000, 100, 100, 51, 0, CAST(N'2016-09-17 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (7, N'Sạc nhanh Aukey PA-T2 3 cổng USB 42W', N'fsdfsdfdsfdsfds', 599000, 0, 12, 51, 0, CAST(N'2016-09-17 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (8, N'Xe máy Honda Vision 2016', N'sfdsfsdfsdfds', 36100000, 23000000, 10, 98, 0, CAST(N'2016-09-17 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (9, N'Canon 700D + Lens 18-55 STM', N'fdsfdsfdsfdsfds', 14800000, 9666000, 20, 29, 0, CAST(N'2016-09-21 00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (15, N'Tivi LED ASANZO 32S500T2 32 inch', N'Tivi LED ASANZO 32S500T2 32 inch', 419900, 3100000, 50, 99, 0, CAST(N'2016-09-22 01:12:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (17, N'Thẻ Nhớ Sandisk Micro SD Ultra 32GB Class 10  - 48MB', N'Thẻ Nhớ Sandisk Micro SD Ultra 32GB Class 10 - 48MB/s', 425000, 239000, 25, 51, 0, CAST(N'2016-09-22 01:18:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (18, N'Đồ Chơi Gỗ Mô Hình Vietoys Xe Cũi Thả Hình VT3P-0109', N'Đồ Chơi Gỗ Mô Hình Vietoys Xe Cũi Thả Hình VT3P-0109', 158000, 95000, 100, 66, 0, CAST(N'2016-09-22 01:22:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (19, N'Ổ Cứng Trong PC WD 1TB (64MB) 7200rpm 3.5" Blue™ - WD10EZEX', N'Ổ Cứng Trong PC WD 1TB (64MB) 7200rpm 3.5" Blue™ - WD10EZEX', 1210000, 1160000, 16, 100, 0, CAST(N'2016-09-22 01:27:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (20, N'Máy In Laser Canon LBP 2900', N'Máy In Laser Canon LBP 2900

', 2700000, 2625000, 10, 100, 0, CAST(N'2016-09-22 01:30:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (21, N'Giày Lười Nữ D&A HT1189 - Hồng Đỏ', N'Giày Lười Nữ D&A HT1189 - Hồng Đỏ', 110000, 79000, 80, 11, 0, CAST(N'2016-09-22 11:52:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (22, N'iPhone 6s 16GB - Chính hãng FPT', N'iPhone 6s 16GB - Chính hãng FPT', 16290000, 12990000, 12, 1, 0, CAST(N'2016-09-22 23:47:00' AS SmallDateTime), 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active]) VALUES (23, N'Samsung Galaxy J3', N'Samsung Galaxy J3', 3990000, 2990000, 12, 50, 0, CAST(N'2016-09-22 23:51:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Quantity] ADD  CONSTRAINT [DF_Quantity_Stock]  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customers]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Cart] FOREIGN KEY([CartID])
REFERENCES [dbo].[Cart] ([CartID])
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Cart]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Color]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Products]
GO
ALTER TABLE [dbo].[ColorProducts]  WITH CHECK ADD  CONSTRAINT [FK_ColorProducts_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ColorProducts] CHECK CONSTRAINT [FK_ColorProducts_Color]
GO
ALTER TABLE [dbo].[ColorProducts]  WITH CHECK ADD  CONSTRAINT [FK_ColorProducts_Products1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ColorProducts] CHECK CONSTRAINT [FK_ColorProducts_Products1]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customers]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Products]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Customers]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Districts] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[Districts] ([DistrictID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Districts]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Provinces] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ProvinceID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Provinces]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_Provinces] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ProvinceID])
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Provinces]
GO
ALTER TABLE [dbo].[ExcludeCoupon]  WITH CHECK ADD  CONSTRAINT [FK_ExcludeCoupon_Coupon] FOREIGN KEY([CouponID])
REFERENCES [dbo].[Coupon] ([CouponID])
GO
ALTER TABLE [dbo].[ExcludeCoupon] CHECK CONSTRAINT [FK_ExcludeCoupon_Coupon]
GO
ALTER TABLE [dbo].[ExcludeCoupon]  WITH CHECK ADD  CONSTRAINT [FK_ExcludeCoupon_GroupProducts] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupProducts] ([GroupID])
GO
ALTER TABLE [dbo].[ExcludeCoupon] CHECK CONSTRAINT [FK_ExcludeCoupon_GroupProducts]
GO
ALTER TABLE [dbo].[GroupProducts]  WITH CHECK ADD  CONSTRAINT [FK_GroupProducts_GroupProducts] FOREIGN KEY([ParentGroupID])
REFERENCES [dbo].[GroupProducts] ([GroupID])
GO
ALTER TABLE [dbo].[GroupProducts] CHECK CONSTRAINT [FK_GroupProducts_GroupProducts]
GO
ALTER TABLE [dbo].[ImageProducts]  WITH CHECK ADD  CONSTRAINT [FK_ImageProducts_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ImageProducts] CHECK CONSTRAINT [FK_ImageProducts_Products]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Menus] FOREIGN KEY([ParentMenuID])
REFERENCES [dbo].[Menus] ([MenuID])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Menus]
GO
ALTER TABLE [dbo].[Options]  WITH CHECK ADD  CONSTRAINT [FK_Options_OptionGroups] FOREIGN KEY([OptionGroupID])
REFERENCES [dbo].[OptionGroups] ([OptionGroupID])
GO
ALTER TABLE [dbo].[Options] CHECK CONSTRAINT [FK_Options_OptionGroups]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Color]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Districts] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[Districts] ([DistrictID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Districts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payments] ([PaymentID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Provinces] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ProvinceID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Provinces]
GO
ALTER TABLE [dbo].[ProductOptions]  WITH CHECK ADD  CONSTRAINT [FK_ProductOptions_Options] FOREIGN KEY([OptionID])
REFERENCES [dbo].[Options] ([OptionID])
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_Options]
GO
ALTER TABLE [dbo].[ProductOptions]  WITH CHECK ADD  CONSTRAINT [FK_ProductOptions_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_GroupProducts] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupProducts] ([GroupID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_GroupProducts]
GO
ALTER TABLE [dbo].[Quantity]  WITH CHECK ADD  CONSTRAINT [FK_Quantity_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Quantity] CHECK CONSTRAINT [FK_Quantity_Color]
GO
ALTER TABLE [dbo].[Quantity]  WITH CHECK ADD  CONSTRAINT [FK_Quantity_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Quantity] CHECK CONSTRAINT [FK_Quantity_Products]
GO
USE [master]
GO
ALTER DATABASE WebBanHangMvc SET  READ_WRITE 
GO
