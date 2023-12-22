
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/22/2023 17:54:15
-- Generated from EDMX file: D:\WebBanHangMvc\WebBanHangMvc\WebBanHang\Models\Ecommerce.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [WebBanHangMvc];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Options_OptionGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Attributes] DROP CONSTRAINT [FK_Options_OptionGroups];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductOptions_Options]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductAttributes] DROP CONSTRAINT [FK_ProductOptions_Options];
GO
IF OBJECT_ID(N'[dbo].[FK_Cart_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Carts] DROP CONSTRAINT [FK_Cart_Customers];
GO
IF OBJECT_ID(N'[dbo].[FK_CartDetails_Cart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CartDetails] DROP CONSTRAINT [FK_CartDetails_Cart];
GO
IF OBJECT_ID(N'[dbo].[FK_CartDetails_Color]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CartDetails] DROP CONSTRAINT [FK_CartDetails_Color];
GO
IF OBJECT_ID(N'[dbo].[FK_CartDetails_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CartDetails] DROP CONSTRAINT [FK_CartDetails_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetails_Color]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Color];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductColors_Color1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductColors] DROP CONSTRAINT [FK_ProductColors_Color1];
GO
IF OBJECT_ID(N'[dbo].[FK_Comment_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comments] DROP CONSTRAINT [FK_Comment_Customers];
GO
IF OBJECT_ID(N'[dbo].[FK_Comment_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comments] DROP CONSTRAINT [FK_Comment_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_ExcludeCoupon_Coupon]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExcludeCoupons] DROP CONSTRAINT [FK_ExcludeCoupon_Coupon];
GO
IF OBJECT_ID(N'[dbo].[FK_Customers_Districts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_Districts];
GO
IF OBJECT_ID(N'[dbo].[FK_Customers_Provinces]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_Provinces];
GO
IF OBJECT_ID(N'[dbo].[FK_Customers_Ward]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_Ward];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customers];
GO
IF OBJECT_ID(N'[dbo].[FK_Districts_Provinces]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Districts] DROP CONSTRAINT [FK_Districts_Provinces];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_Districts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Districts];
GO
IF OBJECT_ID(N'[dbo].[FK_Ward_Districts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Wards] DROP CONSTRAINT [FK_Ward_Districts];
GO
IF OBJECT_ID(N'[dbo].[FK_ExcludeCoupon_GroupProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExcludeCoupons] DROP CONSTRAINT [FK_ExcludeCoupon_GroupProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupProducts_GroupProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupProducts] DROP CONSTRAINT [FK_GroupProducts_GroupProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_Products_GroupProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_GroupProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_ImageProducts_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ImageProducts] DROP CONSTRAINT [FK_ImageProducts_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_Menus_Menus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Menus] DROP CONSTRAINT [FK_Menus_Menus];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetails_Orders]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetails_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_OrderStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_OrderStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_Payments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Payments];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_Provinces]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Provinces];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_ShippingStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_ShippingStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_Orders_Ward]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Ward];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductOptions_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductAttributes] DROP CONSTRAINT [FK_ProductOptions_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductColors_Products1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductColors] DROP CONSTRAINT [FK_ProductColors_Products1];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersInRoles_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [FK_UsersInRoles_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersInRoles_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [FK_UsersInRoles_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Contact_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_Contact_Customers];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Advertises]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Advertises];
GO
IF OBJECT_ID(N'[dbo].[Attributes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Attributes];
GO
IF OBJECT_ID(N'[dbo].[AttributeGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AttributeGroups];
GO
IF OBJECT_ID(N'[dbo].[Carts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Carts];
GO
IF OBJECT_ID(N'[dbo].[CartDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CartDetails];
GO
IF OBJECT_ID(N'[dbo].[Colors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Colors];
GO
IF OBJECT_ID(N'[dbo].[Comments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Comments];
GO
IF OBJECT_ID(N'[dbo].[Configurations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Configurations];
GO
IF OBJECT_ID(N'[dbo].[Coupons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Coupons];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Districts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Districts];
GO
IF OBJECT_ID(N'[dbo].[ExcludeCoupons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExcludeCoupons];
GO
IF OBJECT_ID(N'[dbo].[GroupProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GroupProducts];
GO
IF OBJECT_ID(N'[dbo].[ImageProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ImageProducts];
GO
IF OBJECT_ID(N'[dbo].[Menus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Menus];
GO
IF OBJECT_ID(N'[dbo].[OrderDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderDetails];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[OrderStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderStatus];
GO
IF OBJECT_ID(N'[dbo].[Payments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Payments];
GO
IF OBJECT_ID(N'[dbo].[ProductAttributes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductAttributes];
GO
IF OBJECT_ID(N'[dbo].[ProductColors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductColors];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Provinces]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Provinces];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[ShippingStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShippingStatus];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Wards]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Wards];
GO
IF OBJECT_ID(N'[dbo].[Contacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts];
GO
IF OBJECT_ID(N'[dbo].[UsersInRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsersInRoles];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Advertises'
CREATE TABLE [dbo].[Advertises] (
    [AdvertiseID] int IDENTITY(1,1) NOT NULL,
    [AdvertiseName] nvarchar(50)  NULL,
    [Description] nvarchar(255)  NULL,
    [ImageUrl] nvarchar(255)  NULL,
    [Link] nvarchar(255)  NULL,
    [Width] int  NULL,
    [Height] int  NULL,
    [Position] varchar(10)  NULL,
    [Active] bit  NULL
);
GO

-- Creating table 'Attributes'
CREATE TABLE [dbo].[Attributes] (
    [AttrID] int IDENTITY(1,1) NOT NULL,
    [AttrName] nvarchar(50)  NOT NULL,
    [AttriGroupID] int  NULL
);
GO

-- Creating table 'AttributeGroups'
CREATE TABLE [dbo].[AttributeGroups] (
    [AttrGroupID] int IDENTITY(1,1) NOT NULL,
    [AttrGroupName] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Carts'
CREATE TABLE [dbo].[Carts] (
    [CartID] int IDENTITY(1,1) NOT NULL,
    [CookieID] char(10)  NOT NULL,
    [CustomerID] int  NULL,
    [CreateDate] datetime  NOT NULL
);
GO

-- Creating table 'CartDetails'
CREATE TABLE [dbo].[CartDetails] (
    [CartID] int  NOT NULL,
    [ProductID] int  NOT NULL,
    [ColorID] int  NOT NULL,
    [Quantity] int  NOT NULL
);
GO

-- Creating table 'Colors'
CREATE TABLE [dbo].[Colors] (
    [ColorID] int IDENTITY(1,1) NOT NULL,
    [ColorName] nvarchar(20)  NOT NULL,
    [HexCode] char(6)  NOT NULL
);
GO

-- Creating table 'Comments'
CREATE TABLE [dbo].[Comments] (
    [CommentID] int IDENTITY(1,1) NOT NULL,
    [ProductID] int  NOT NULL,
    [CommentContent] nvarchar(1000)  NULL,
    [CommentTime] datetime  NULL,
    [CustomerID] int  NULL,
    [Rate] tinyint  NULL
);
GO

-- Creating table 'Configurations'
CREATE TABLE [dbo].[Configurations] (
    [ConfigName] nvarchar(30)  NOT NULL,
    [Value] nvarchar(50)  NOT NULL,
    [Description] nvarchar(255)  NULL
);
GO

-- Creating table 'Coupons'
CREATE TABLE [dbo].[Coupons] (
    [CouponID] int IDENTITY(1,1) NOT NULL,
    [Code] varchar(10)  NULL,
    [Discount] int  NULL,
    [Type] varchar(10)  NULL,
    [FreeShip] bit  NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Indefinite] bit  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerID] int IDENTITY(1,1) NOT NULL,
    [FacebookID] varchar(20)  NULL,
    [GoogleID] varchar(20)  NULL,
    [Passwrord] varchar(100)  NULL,
    [FullName] nvarchar(50)  NOT NULL,
    [Email] varchar(80)  NOT NULL,
    [Address] nvarchar(100)  NULL,
    [ProvinceID] int  NULL,
    [DistrictID] int  NULL,
    [WardID] int  NULL,
    [Phone] varchar(11)  NULL,
    [Status] bit  NOT NULL,
    [VerificationCode] varchar(64)  NULL,
    [RegistrationDate] datetime  NOT NULL
);
GO

-- Creating table 'Districts'
CREATE TABLE [dbo].[Districts] (
    [DistrictID] int  NOT NULL,
    [DistrictName] nvarchar(50)  NOT NULL,
    [Type] nvarchar(50)  NOT NULL,
    [ProvinceID] int  NOT NULL
);
GO

-- Creating table 'ExcludeCoupons'
CREATE TABLE [dbo].[ExcludeCoupons] (
    [CouponID] int  NOT NULL,
    [GroupID] int  NOT NULL,
    [Description] nvarchar(50)  NULL
);
GO

-- Creating table 'GroupProducts'
CREATE TABLE [dbo].[GroupProducts] (
    [GroupID] int IDENTITY(1,1) NOT NULL,
    [GroupName] nvarchar(50)  NOT NULL,
    [ParentGroupID] int  NULL,
    [Icon] varchar(100)  NULL,
    [Priority] int  NOT NULL
);
GO

-- Creating table 'ImageProducts'
CREATE TABLE [dbo].[ImageProducts] (
    [ImageID] int IDENTITY(1,1) NOT NULL,
    [ProductID] int  NOT NULL,
    [Caption] nvarchar(100)  NULL,
    [ImagePath] varchar(255)  NOT NULL
);
GO

-- Creating table 'Menus'
CREATE TABLE [dbo].[Menus] (
    [MenuID] int IDENTITY(1,1) NOT NULL,
    [MenuName] nvarchar(50)  NULL,
    [Link] nvarchar(255)  NULL,
    [ParentMenuID] int  NULL,
    [Priority] tinyint  NULL,
    [Label] nvarchar(20)  NULL,
    [Hot] bit  NULL
);
GO

-- Creating table 'OrderDetails'
CREATE TABLE [dbo].[OrderDetails] (
    [DetailID] int IDENTITY(1,1) NOT NULL,
    [OrderID] int  NOT NULL,
    [ProductID] int  NOT NULL,
    [Price] bigint  NOT NULL,
    [Quantity] tinyint  NOT NULL,
    [ColorID] int  NULL,
    [Total] bigint  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [OrderID] int IDENTITY(1,1) NOT NULL,
    [CustomerID] int  NOT NULL,
    [PaymentID] int  NOT NULL,
    [OrderDate] datetime  NOT NULL,
    [FullName] nvarchar(50)  NOT NULL,
    [Address] nvarchar(100)  NOT NULL,
    [ProvinceID] int  NOT NULL,
    [DistrictID] int  NOT NULL,
    [WardID] int  NOT NULL,
    [Phone] varchar(11)  NOT NULL,
    [TotalPrice] bigint  NOT NULL,
    [Discount] bigint  NOT NULL,
    [PaymentDate] datetime  NULL,
    [Paid] bit  NOT NULL,
    [CouponCode] varchar(10)  NULL,
    [OrderStatusID] int  NOT NULL,
    [ShippingStatusID] int  NOT NULL,
    [Comment] nvarchar(400)  NULL
);
GO

-- Creating table 'OrderStatus'
CREATE TABLE [dbo].[OrderStatus] (
    [OrderStatusID] int  NOT NULL,
    [OrderStatusName] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'Payments'
CREATE TABLE [dbo].[Payments] (
    [PaymentID] int IDENTITY(1,1) NOT NULL,
    [PaymentType] varchar(10)  NOT NULL,
    [PaymentName] nvarchar(50)  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'ProductAttributes'
CREATE TABLE [dbo].[ProductAttributes] (
    [ProductID] int  NOT NULL,
    [AttrID] int  NOT NULL,
    [Value] nvarchar(50)  NOT NULL,
    [Priority] tinyint  NOT NULL
);
GO

-- Creating table 'ProductColors'
CREATE TABLE [dbo].[ProductColors] (
    [ProductID] int  NOT NULL,
    [ColorID] int  NOT NULL,
    [Stock] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductID] int IDENTITY(1,1) NOT NULL,
    [ProductName] nvarchar(120)  NOT NULL,
    [Detail] nvarchar(max)  NOT NULL,
    [Price] bigint  NOT NULL,
    [SalePrice] bigint  NOT NULL,
    [Stock] int  NOT NULL,
    [GroupID] int  NOT NULL,
    [UseMultiColor] bit  NOT NULL,
    [CreateDate] datetime  NOT NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'Provinces'
CREATE TABLE [dbo].[Provinces] (
    [ProvinceID] int  NOT NULL,
    [ProvinceName] nvarchar(50)  NOT NULL,
    [Type] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [RoleID] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'ShippingStatus'
CREATE TABLE [dbo].[ShippingStatus] (
    [ShippingStatusID] int IDENTITY(1,1) NOT NULL,
    [ShippingName] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [Username] varchar(24)  NOT NULL,
    [Password] varchar(100)  NOT NULL,
    [FullName] nvarchar(50)  NOT NULL,
    [Email] varchar(80)  NOT NULL,
    [IP] varchar(50)  NOT NULL,
    [Status] bit  NOT NULL,
    [RegistrationDate] datetime  NOT NULL
);
GO

-- Creating table 'Wards'
CREATE TABLE [dbo].[Wards] (
    [WardId] int  NOT NULL,
    [WardName] nvarchar(50)  NOT NULL,
    [Type] nvarchar(50)  NOT NULL,
    [DistrictId] int  NOT NULL
);
GO

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [ContactID] int IDENTITY(1,1) NOT NULL,
    [FullName] nvarchar(50)  NOT NULL,
    [Email] varchar(80)  NOT NULL,
    [Phone] varchar(11)  NOT NULL,
    [Message] nvarchar(1000)  NOT NULL,
    [CustomerID] int  NULL,
    [IP] varchar(50)  NOT NULL,
    [Time] datetime  NOT NULL,
    [Seen] bit  NOT NULL
);
GO

-- Creating table 'UsersInRoles'
CREATE TABLE [dbo].[UsersInRoles] (
    [Roles_RoleID] int  NOT NULL,
    [Users_UserID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [AdvertiseID] in table 'Advertises'
ALTER TABLE [dbo].[Advertises]
ADD CONSTRAINT [PK_Advertises]
    PRIMARY KEY CLUSTERED ([AdvertiseID] ASC);
GO

-- Creating primary key on [AttrID] in table 'Attributes'
ALTER TABLE [dbo].[Attributes]
ADD CONSTRAINT [PK_Attributes]
    PRIMARY KEY CLUSTERED ([AttrID] ASC);
GO

-- Creating primary key on [AttrGroupID] in table 'AttributeGroups'
ALTER TABLE [dbo].[AttributeGroups]
ADD CONSTRAINT [PK_AttributeGroups]
    PRIMARY KEY CLUSTERED ([AttrGroupID] ASC);
GO

-- Creating primary key on [CartID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [PK_Carts]
    PRIMARY KEY CLUSTERED ([CartID] ASC);
GO

-- Creating primary key on [CartID], [ProductID], [ColorID] in table 'CartDetails'
ALTER TABLE [dbo].[CartDetails]
ADD CONSTRAINT [PK_CartDetails]
    PRIMARY KEY CLUSTERED ([CartID], [ProductID], [ColorID] ASC);
GO

-- Creating primary key on [ColorID] in table 'Colors'
ALTER TABLE [dbo].[Colors]
ADD CONSTRAINT [PK_Colors]
    PRIMARY KEY CLUSTERED ([ColorID] ASC);
GO

-- Creating primary key on [CommentID], [ProductID] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [PK_Comments]
    PRIMARY KEY CLUSTERED ([CommentID], [ProductID] ASC);
GO

-- Creating primary key on [ConfigName] in table 'Configurations'
ALTER TABLE [dbo].[Configurations]
ADD CONSTRAINT [PK_Configurations]
    PRIMARY KEY CLUSTERED ([ConfigName] ASC);
GO

-- Creating primary key on [CouponID] in table 'Coupons'
ALTER TABLE [dbo].[Coupons]
ADD CONSTRAINT [PK_Coupons]
    PRIMARY KEY CLUSTERED ([CouponID] ASC);
GO

-- Creating primary key on [CustomerID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerID] ASC);
GO

-- Creating primary key on [DistrictID] in table 'Districts'
ALTER TABLE [dbo].[Districts]
ADD CONSTRAINT [PK_Districts]
    PRIMARY KEY CLUSTERED ([DistrictID] ASC);
GO

-- Creating primary key on [CouponID], [GroupID] in table 'ExcludeCoupons'
ALTER TABLE [dbo].[ExcludeCoupons]
ADD CONSTRAINT [PK_ExcludeCoupons]
    PRIMARY KEY CLUSTERED ([CouponID], [GroupID] ASC);
GO

-- Creating primary key on [GroupID] in table 'GroupProducts'
ALTER TABLE [dbo].[GroupProducts]
ADD CONSTRAINT [PK_GroupProducts]
    PRIMARY KEY CLUSTERED ([GroupID] ASC);
GO

-- Creating primary key on [ImageID], [ProductID] in table 'ImageProducts'
ALTER TABLE [dbo].[ImageProducts]
ADD CONSTRAINT [PK_ImageProducts]
    PRIMARY KEY CLUSTERED ([ImageID], [ProductID] ASC);
GO

-- Creating primary key on [MenuID] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [PK_Menus]
    PRIMARY KEY CLUSTERED ([MenuID] ASC);
GO

-- Creating primary key on [DetailID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [PK_OrderDetails]
    PRIMARY KEY CLUSTERED ([DetailID] ASC);
GO

-- Creating primary key on [OrderID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([OrderID] ASC);
GO

-- Creating primary key on [OrderStatusID] in table 'OrderStatus'
ALTER TABLE [dbo].[OrderStatus]
ADD CONSTRAINT [PK_OrderStatus]
    PRIMARY KEY CLUSTERED ([OrderStatusID] ASC);
GO

-- Creating primary key on [PaymentID] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [PK_Payments]
    PRIMARY KEY CLUSTERED ([PaymentID] ASC);
GO

-- Creating primary key on [ProductID], [AttrID] in table 'ProductAttributes'
ALTER TABLE [dbo].[ProductAttributes]
ADD CONSTRAINT [PK_ProductAttributes]
    PRIMARY KEY CLUSTERED ([ProductID], [AttrID] ASC);
GO

-- Creating primary key on [ProductID], [ColorID] in table 'ProductColors'
ALTER TABLE [dbo].[ProductColors]
ADD CONSTRAINT [PK_ProductColors]
    PRIMARY KEY CLUSTERED ([ProductID], [ColorID] ASC);
GO

-- Creating primary key on [ProductID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductID] ASC);
GO

-- Creating primary key on [ProvinceID] in table 'Provinces'
ALTER TABLE [dbo].[Provinces]
ADD CONSTRAINT [PK_Provinces]
    PRIMARY KEY CLUSTERED ([ProvinceID] ASC);
GO

-- Creating primary key on [RoleID] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([RoleID] ASC);
GO

-- Creating primary key on [ShippingStatusID] in table 'ShippingStatus'
ALTER TABLE [dbo].[ShippingStatus]
ADD CONSTRAINT [PK_ShippingStatus]
    PRIMARY KEY CLUSTERED ([ShippingStatusID] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [WardId] in table 'Wards'
ALTER TABLE [dbo].[Wards]
ADD CONSTRAINT [PK_Wards]
    PRIMARY KEY CLUSTERED ([WardId] ASC);
GO

-- Creating primary key on [ContactID] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([ContactID] ASC);
GO

-- Creating primary key on [Roles_RoleID], [Users_UserID] in table 'UsersInRoles'
ALTER TABLE [dbo].[UsersInRoles]
ADD CONSTRAINT [PK_UsersInRoles]
    PRIMARY KEY CLUSTERED ([Roles_RoleID], [Users_UserID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AttriGroupID] in table 'Attributes'
ALTER TABLE [dbo].[Attributes]
ADD CONSTRAINT [FK_Options_OptionGroups]
    FOREIGN KEY ([AttriGroupID])
    REFERENCES [dbo].[AttributeGroups]
        ([AttrGroupID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Options_OptionGroups'
CREATE INDEX [IX_FK_Options_OptionGroups]
ON [dbo].[Attributes]
    ([AttriGroupID]);
GO

-- Creating foreign key on [AttrID] in table 'ProductAttributes'
ALTER TABLE [dbo].[ProductAttributes]
ADD CONSTRAINT [FK_ProductOptions_Options]
    FOREIGN KEY ([AttrID])
    REFERENCES [dbo].[Attributes]
        ([AttrID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductOptions_Options'
CREATE INDEX [IX_FK_ProductOptions_Options]
ON [dbo].[ProductAttributes]
    ([AttrID]);
GO

-- Creating foreign key on [CustomerID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [FK_Cart_Customers]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Cart_Customers'
CREATE INDEX [IX_FK_Cart_Customers]
ON [dbo].[Carts]
    ([CustomerID]);
GO

-- Creating foreign key on [CartID] in table 'CartDetails'
ALTER TABLE [dbo].[CartDetails]
ADD CONSTRAINT [FK_CartDetails_Cart]
    FOREIGN KEY ([CartID])
    REFERENCES [dbo].[Carts]
        ([CartID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ColorID] in table 'CartDetails'
ALTER TABLE [dbo].[CartDetails]
ADD CONSTRAINT [FK_CartDetails_Color]
    FOREIGN KEY ([ColorID])
    REFERENCES [dbo].[Colors]
        ([ColorID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CartDetails_Color'
CREATE INDEX [IX_FK_CartDetails_Color]
ON [dbo].[CartDetails]
    ([ColorID]);
GO

-- Creating foreign key on [ProductID] in table 'CartDetails'
ALTER TABLE [dbo].[CartDetails]
ADD CONSTRAINT [FK_CartDetails_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CartDetails_Products'
CREATE INDEX [IX_FK_CartDetails_Products]
ON [dbo].[CartDetails]
    ([ProductID]);
GO

-- Creating foreign key on [ColorID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_Color]
    FOREIGN KEY ([ColorID])
    REFERENCES [dbo].[Colors]
        ([ColorID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetails_Color'
CREATE INDEX [IX_FK_OrderDetails_Color]
ON [dbo].[OrderDetails]
    ([ColorID]);
GO

-- Creating foreign key on [ColorID] in table 'ProductColors'
ALTER TABLE [dbo].[ProductColors]
ADD CONSTRAINT [FK_ProductColors_Color1]
    FOREIGN KEY ([ColorID])
    REFERENCES [dbo].[Colors]
        ([ColorID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductColors_Color1'
CREATE INDEX [IX_FK_ProductColors_Color1]
ON [dbo].[ProductColors]
    ([ColorID]);
GO

-- Creating foreign key on [CustomerID] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [FK_Comment_Customers]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Comment_Customers'
CREATE INDEX [IX_FK_Comment_Customers]
ON [dbo].[Comments]
    ([CustomerID]);
GO

-- Creating foreign key on [ProductID] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [FK_Comment_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Comment_Products'
CREATE INDEX [IX_FK_Comment_Products]
ON [dbo].[Comments]
    ([ProductID]);
GO

-- Creating foreign key on [CouponID] in table 'ExcludeCoupons'
ALTER TABLE [dbo].[ExcludeCoupons]
ADD CONSTRAINT [FK_ExcludeCoupon_Coupon]
    FOREIGN KEY ([CouponID])
    REFERENCES [dbo].[Coupons]
        ([CouponID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DistrictID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_Customers_Districts]
    FOREIGN KEY ([DistrictID])
    REFERENCES [dbo].[Districts]
        ([DistrictID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customers_Districts'
CREATE INDEX [IX_FK_Customers_Districts]
ON [dbo].[Customers]
    ([DistrictID]);
GO

-- Creating foreign key on [ProvinceID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_Customers_Provinces]
    FOREIGN KEY ([ProvinceID])
    REFERENCES [dbo].[Provinces]
        ([ProvinceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customers_Provinces'
CREATE INDEX [IX_FK_Customers_Provinces]
ON [dbo].[Customers]
    ([ProvinceID]);
GO

-- Creating foreign key on [WardID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_Customers_Ward]
    FOREIGN KEY ([WardID])
    REFERENCES [dbo].[Wards]
        ([WardId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customers_Ward'
CREATE INDEX [IX_FK_Customers_Ward]
ON [dbo].[Customers]
    ([WardID]);
GO

-- Creating foreign key on [CustomerID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_Customers]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_Customers'
CREATE INDEX [IX_FK_Orders_Customers]
ON [dbo].[Orders]
    ([CustomerID]);
GO

-- Creating foreign key on [ProvinceID] in table 'Districts'
ALTER TABLE [dbo].[Districts]
ADD CONSTRAINT [FK_Districts_Provinces]
    FOREIGN KEY ([ProvinceID])
    REFERENCES [dbo].[Provinces]
        ([ProvinceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Districts_Provinces'
CREATE INDEX [IX_FK_Districts_Provinces]
ON [dbo].[Districts]
    ([ProvinceID]);
GO

-- Creating foreign key on [DistrictID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_Districts]
    FOREIGN KEY ([DistrictID])
    REFERENCES [dbo].[Districts]
        ([DistrictID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_Districts'
CREATE INDEX [IX_FK_Orders_Districts]
ON [dbo].[Orders]
    ([DistrictID]);
GO

-- Creating foreign key on [DistrictId] in table 'Wards'
ALTER TABLE [dbo].[Wards]
ADD CONSTRAINT [FK_Ward_Districts]
    FOREIGN KEY ([DistrictId])
    REFERENCES [dbo].[Districts]
        ([DistrictID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Ward_Districts'
CREATE INDEX [IX_FK_Ward_Districts]
ON [dbo].[Wards]
    ([DistrictId]);
GO

-- Creating foreign key on [GroupID] in table 'ExcludeCoupons'
ALTER TABLE [dbo].[ExcludeCoupons]
ADD CONSTRAINT [FK_ExcludeCoupon_GroupProducts]
    FOREIGN KEY ([GroupID])
    REFERENCES [dbo].[GroupProducts]
        ([GroupID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExcludeCoupon_GroupProducts'
CREATE INDEX [IX_FK_ExcludeCoupon_GroupProducts]
ON [dbo].[ExcludeCoupons]
    ([GroupID]);
GO

-- Creating foreign key on [ParentGroupID] in table 'GroupProducts'
ALTER TABLE [dbo].[GroupProducts]
ADD CONSTRAINT [FK_GroupProducts_GroupProducts]
    FOREIGN KEY ([ParentGroupID])
    REFERENCES [dbo].[GroupProducts]
        ([GroupID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupProducts_GroupProducts'
CREATE INDEX [IX_FK_GroupProducts_GroupProducts]
ON [dbo].[GroupProducts]
    ([ParentGroupID]);
GO

-- Creating foreign key on [GroupID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Products_GroupProducts]
    FOREIGN KEY ([GroupID])
    REFERENCES [dbo].[GroupProducts]
        ([GroupID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Products_GroupProducts'
CREATE INDEX [IX_FK_Products_GroupProducts]
ON [dbo].[Products]
    ([GroupID]);
GO

-- Creating foreign key on [ProductID] in table 'ImageProducts'
ALTER TABLE [dbo].[ImageProducts]
ADD CONSTRAINT [FK_ImageProducts_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ImageProducts_Products'
CREATE INDEX [IX_FK_ImageProducts_Products]
ON [dbo].[ImageProducts]
    ([ProductID]);
GO

-- Creating foreign key on [ParentMenuID] in table 'Menus'
ALTER TABLE [dbo].[Menus]
ADD CONSTRAINT [FK_Menus_Menus]
    FOREIGN KEY ([ParentMenuID])
    REFERENCES [dbo].[Menus]
        ([MenuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Menus_Menus'
CREATE INDEX [IX_FK_Menus_Menus]
ON [dbo].[Menus]
    ([ParentMenuID]);
GO

-- Creating foreign key on [OrderID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_Orders]
    FOREIGN KEY ([OrderID])
    REFERENCES [dbo].[Orders]
        ([OrderID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetails_Orders'
CREATE INDEX [IX_FK_OrderDetails_Orders]
ON [dbo].[OrderDetails]
    ([OrderID]);
GO

-- Creating foreign key on [ProductID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetails_Products'
CREATE INDEX [IX_FK_OrderDetails_Products]
ON [dbo].[OrderDetails]
    ([ProductID]);
GO

-- Creating foreign key on [OrderStatusID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_OrderStatus]
    FOREIGN KEY ([OrderStatusID])
    REFERENCES [dbo].[OrderStatus]
        ([OrderStatusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_OrderStatus'
CREATE INDEX [IX_FK_Orders_OrderStatus]
ON [dbo].[Orders]
    ([OrderStatusID]);
GO

-- Creating foreign key on [PaymentID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_Payments]
    FOREIGN KEY ([PaymentID])
    REFERENCES [dbo].[Payments]
        ([PaymentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_Payments'
CREATE INDEX [IX_FK_Orders_Payments]
ON [dbo].[Orders]
    ([PaymentID]);
GO

-- Creating foreign key on [ProvinceID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_Provinces]
    FOREIGN KEY ([ProvinceID])
    REFERENCES [dbo].[Provinces]
        ([ProvinceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_Provinces'
CREATE INDEX [IX_FK_Orders_Provinces]
ON [dbo].[Orders]
    ([ProvinceID]);
GO

-- Creating foreign key on [ShippingStatusID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_ShippingStatus]
    FOREIGN KEY ([ShippingStatusID])
    REFERENCES [dbo].[ShippingStatus]
        ([ShippingStatusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_ShippingStatus'
CREATE INDEX [IX_FK_Orders_ShippingStatus]
ON [dbo].[Orders]
    ([ShippingStatusID]);
GO

-- Creating foreign key on [WardID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Orders_Ward]
    FOREIGN KEY ([WardID])
    REFERENCES [dbo].[Wards]
        ([WardId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orders_Ward'
CREATE INDEX [IX_FK_Orders_Ward]
ON [dbo].[Orders]
    ([WardID]);
GO

-- Creating foreign key on [ProductID] in table 'ProductAttributes'
ALTER TABLE [dbo].[ProductAttributes]
ADD CONSTRAINT [FK_ProductOptions_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProductID] in table 'ProductColors'
ALTER TABLE [dbo].[ProductColors]
ADD CONSTRAINT [FK_ProductColors_Products1]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Roles_RoleID] in table 'UsersInRoles'
ALTER TABLE [dbo].[UsersInRoles]
ADD CONSTRAINT [FK_UsersInRoles_Role]
    FOREIGN KEY ([Roles_RoleID])
    REFERENCES [dbo].[Roles]
        ([RoleID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Users_UserID] in table 'UsersInRoles'
ALTER TABLE [dbo].[UsersInRoles]
ADD CONSTRAINT [FK_UsersInRoles_User]
    FOREIGN KEY ([Users_UserID])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersInRoles_User'
CREATE INDEX [IX_FK_UsersInRoles_User]
ON [dbo].[UsersInRoles]
    ([Users_UserID]);
GO

-- Creating foreign key on [CustomerID] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_Contact_Customers]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Contact_Customers'
CREATE INDEX [IX_FK_Contact_Customers]
ON [dbo].[Contacts]
    ([CustomerID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------