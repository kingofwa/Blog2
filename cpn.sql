USE [Web_company]
GO
/****** Object:  User [IIS APPPOOL\Web_congty]    Script Date: 13/03/2021 22:45:01 ******/
CREATE USER [IIS APPPOOL\Web_congty] FOR LOGIN [IIS APPPOOL\Web_congty] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[About_custommers]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About_custommers](
	[Id] [int] NOT NULL,
	[AC_name] [nvarchar](250) NULL,
	[AC_email] [nvarchar](250) NULL,
 CONSTRAINT [PK_About_custommers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[id_categories] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] NOT NULL,
	[C_name] [nvarchar](250) NULL,
	[C_status] [bit] NULL,
	[C_note] [nvarchar](250) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_uer] [int] NULL,
	[Noi_dung] [nvarchar](max) NULL,
	[Time] [datetime] NULL,
	[Status] [bit] NULL,
	[felling] [int] NULL,
	[Vote] [int] NULL,
	[Type_comment] [int] NULL,
	[Id_post] [int] NULL,
	[Id_reply] [int] NULL,
	[id_user_vote] [varchar](250) NULL,
	[Id_software] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechBack_Cus]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechBack_Cus](
	[Id] [int] NOT NULL,
	[F_name] [nvarchar](250) NULL,
	[F_content] [nvarchar](250) NULL,
	[F_email] [varchar](150) NULL,
	[F_Status] [int] NULL,
	[F_image] [varchar](250) NULL,
 CONSTRAINT [PK_FechBack_Cus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Information_company]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information_company](
	[Id] [int] NOT NULL,
	[Name_CPN] [nvarchar](250) NULL,
	[Phone_hot] [int] NULL,
	[Bank_number] [int] NULL,
	[Email_true] [nvarchar](250) NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](250) NULL,
	[Facebook] [varchar](250) NULL,
	[Email_CPN] [varchar](250) NULL,
	[Youtube] [varchar](250) NULL,
	[Google] [varchar](250) NULL,
	[Viber] [varchar](250) NULL,
	[Slogan] [nvarchar](250) NULL,
	[Addred] [nvarchar](150) NULL,
	[Logo] [varchar](250) NULL,
	[Register] [date] NULL,
	[Notification_TB] [nvarchar](500) NULL,
	[Advertisement_QC] [varchar](500) NULL,
	[Best_Company] [nvarchar](250) NULL,
 CONSTRAINT [PK_Information_company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Introduction]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduction](
	[Id] [int] NOT NULL,
	[Intro_name] [nvarchar](500) NULL,
	[Intro_desc] [nvarchar](max) NULL,
	[Intro_image] [varchar](150) NULL,
	[Intro_link] [varchar](250) NULL,
	[Intro_title] [nvarchar](500) NULL,
	[Intro_status] [bit] NULL,
 CONSTRAINT [PK_Introduction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maketting]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maketting](
	[Id] [int] NOT NULL,
	[M_name] [nvarchar](250) NULL,
	[M_title] [nvarchar](250) NULL,
	[M_link] [varchar](250) NULL,
	[M_image] [varchar](250) NULL,
 CONSTRAINT [PK_Maketting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_DT]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_DT](
	[Id] [int] NOT NULL,
	[Name_partner] [nvarchar](250) NULL,
	[image_partner] [varchar](150) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Partner_DT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Id_brand] [int] NULL,
	[Image] [varchar](250) NULL,
	[Author] [nvarchar](150) NULL,
	[Status] [bit] NULL,
	[Title] [nvarchar](250) NULL,
	[Details] [nvarchar](max) NULL,
	[Prominence_Nb] [bit] NULL,
	[Common_Pb] [bit] NULL,
	[Time_up_post] [date] NULL,
	[Type_post] [bit] NULL,
	[View_client] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_user]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_user](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Id_uer] [int] NULL,
	[Id_brand] [int] NULL,
	[Image] [varchar](500) NULL,
	[Author] [nvarchar](150) NULL,
	[Status] [bit] NULL,
	[Title] [nvarchar](500) NULL,
	[Details] [nvarchar](max) NULL,
	[View_client] [int] NULL,
	[Time_up] [datetime] NULL,
	[Type_post] [bit] NULL,
	[Common] [bit] NULL,
 CONSTRAINT [PK_Post_user] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_system]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_system](
	[Id] [int] NOT NULL,
	[Ten_DuAn] [nvarchar](150) NULL,
	[Ten_KySu] [nvarchar](150) NULL,
	[Tongtien_DuAn] [decimal](18, 0) NULL,
	[Diachi_DuAn] [nvarchar](250) NULL,
	[Thoigiankhoicong] [date] NULL,
	[Thoigianhoanthanh] [date] NULL,
	[Hinhanhchitiet] [nvarchar](max) NULL,
	[Hinhanhmota] [varchar](250) NULL,
	[Motangan] [nvarchar](250) NULL,
	[ChiTietDuAn] [nvarchar](max) NULL,
	[Ghi_chu] [nvarchar](500) NULL,
	[TheLoai_DuAn] [int] NULL,
 CONSTRAINT [PK_Project_system] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] NOT NULL,
	[Services_name] [nvarchar](250) NULL,
	[Services_title] [nvarchar](250) NULL,
	[Services_link] [varchar](250) NULL,
	[Services_image] [varchar](250) NULL,
	[Services_desc] [nvarchar](max) NULL,
	[Services_status] [bit] NULL,
	[Services_maketting] [bit] NULL,
	[Services_note] [nvarchar](250) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] NOT NULL,
	[S_name] [nvarchar](250) NULL,
	[S_description] [nvarchar](500) NULL,
	[S_link] [varchar](250) NULL,
	[S_image] [varchar](150) NULL,
	[S_active] [bit] NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoftWare_Case]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoftWare_Case](
	[Id] [int] NOT NULL,
	[Sw_title] [nvarchar](150) NULL,
	[Sw_name] [nvarchar](150) NULL,
	[Sw_image] [varchar](250) NULL,
	[Sw_link] [varchar](250) NULL,
	[Sw_Status] [bit] NULL,
	[Sw_note] [nvarchar](500) NULL,
	[Sw_desc] [nvarchar](max) NULL,
	[Sw_author] [nvarchar](50) NULL,
 CONSTRAINT [PK_SoftWare_Case] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl.Uers]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl.Uers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[email] [nvarchar](250) NULL,
	[password] [nvarchar](150) NULL,
	[Image_cus] [nvarchar](250) NULL,
	[Day] [date] NULL,
	[Run_status] [int] NULL,
	[phone] [int] NULL,
	[question] [nvarchar](500) NULL,
	[reply] [nvarchar](500) NULL,
	[addred] [nvarchar](250) NULL,
	[type_uer] [int] NULL,
	[public_private] [int] NULL,
	[folow] [varchar](max) NULL,
 CONSTRAINT [PK_tbl.Uers_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KH_Register_Receive_News]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KH_Register_Receive_News](
	[Id_KH] [int] IDENTITY(1,1) NOT NULL,
	[Email_KH] [nvarchar](250) NULL,
	[Time_KH] [datetime] NULL,
 CONSTRAINT [PK_tbl_KH_Register_Receive_News] PRIMARY KEY CLUSTERED 
(
	[Id_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Question_client]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Question_client](
	[Id_question] [int] IDENTITY(1,1) NOT NULL,
	[Conten_question] [nvarchar](max) NULL,
	[Email_question] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[Time_question] [datetime] NULL,
 CONSTRAINT [PK_tbl_Question_client] PRIMARY KEY CLUSTERED 
(
	[Id_question] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Register_Software_Client]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Register_Software_Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name_login] [nvarchar](150) NULL,
	[Pass_login] [nvarchar](150) NULL,
	[Name_Client] [nvarchar](250) NULL,
	[Phone_Client] [int] NULL,
	[Email_CLient] [varchar](250) NULL,
	[Addred_Client] [nvarchar](500) NULL,
	[Name_Businet] [nvarchar](500) NULL,
	[Send_messenger] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[Option_sw] [int] NULL,
	[Id_Sw] [int] NULL,
	[Option_time] [int] NULL,
	[Time_register] [datetime] NULL,
 CONSTRAINT [PK_tbl_Register_Software_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Uers_Admin]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Uers_Admin](
	[Id_user] [int] IDENTITY(1,1) NOT NULL,
	[Email_user] [nvarchar](250) NULL,
	[Password_user] [nvarchar](250) NULL,
	[Image_user] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tbl_Uers_Admin] PRIMARY KEY CLUSTERED 
(
	[Id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[__Count_post]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[__Count_post]
as
select  COUNT(p.Id_brand) as count_post , b.Id,b.Name,b.id_categories
from Post as p, Brand as b
where p.Id_brand=b.Id
group by  b.Id,b.Name,b.id_categories
GO
/****** Object:  StoredProcedure [dbo].[Binhlan_phanmem]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Binhlan_phanmem]
as
select  c.Id,c.Id_software,c.Id_uer,c.Noi_dung,c.Status,c.Time,s.Sw_name,u.name
from Comment as c, SoftWare_Case as s , [tbl.Uers] as U
where c.Id_software=s.Id and c.Id_uer = U.Id and c.Type_comment = 1
group by  c.Id,c.Id_software,c.Id_uer,c.Noi_dung,c.Status,c.Time,s.Sw_name,u.name
GO
/****** Object:  StoredProcedure [dbo].[Binhluan_blog]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Binhluan_blog]
as
select  c.Id,c.Id_post,c.Id_uer,c.Noi_dung,c.Status,c.Time,p.Name,(u.name) as Name_user
from Comment as c, Post as p ,[tbl.Uers] as u
where c.Id_post=p.Id and c.Id_uer = u.Id and c.Type_comment = 1
group by  c.Id,c.Id_post,c.Id_uer,c.Noi_dung,c.Status,c.Time,p.Name,(u.name)
GO
/****** Object:  StoredProcedure [dbo].[Client_register_now_software]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Client_register_now_software]
as
select s.Sw_name,R.Addred_Client,r.Id,r.Id_Sw,r.Name_Businet,r.Name_Client,r.Option_sw,r.Option_time,r.Phone_Client,r.Send_messenger,r.Status,r.Email_CLient
from SoftWare_Case as s, tbl_Register_Software_Client as R
where s.Id=R.Id_Sw
group by s.Sw_name,R.Addred_Client,r.Id,r.Id_Sw,r.Name_Businet,r.Name_Client,r.Option_sw,r.Option_time,r.Phone_Client,r.Send_messenger,r.Status,r.Email_CLient
GO
/****** Object:  StoredProcedure [dbo].[DANH_MUC]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DANH_MUC]
as
select c.C_name,c.C_status,c.Id,b.id_categories,b.Name,b.status
from Categories as C, Brand as b
where c.Id=b.id_categories
group by c.C_name,c.C_status,c.Id,b.id_categories,b.Name,b.status
GO
/****** Object:  StoredProcedure [dbo].[list_comment]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[list_comment]
as
select u.name,u.Image_cus,c.Id,c.felling,c.Id_post,c.Id_reply,c.Id_uer,c.Noi_dung,c.Status,c.Time,c.Type_comment,c.Vote,c.Id_software
from [tbl.Uers] as u, Comment as c
where u.Id=c.Id_uer
group by u.name,u.Image_cus,c.Id,c.felling,c.Id_post,c.Id_reply,c.Id_uer,c.Noi_dung,c.Status,c.Time,c.Type_comment,c.Vote,c.Id_software
GO
/****** Object:  StoredProcedure [dbo].[List_reply_comment]    Script Date: 13/03/2021 22:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[List_reply_comment]
as
select u.Id,u.name,u.Image_cus,c.Time,c.Noi_dung,c.Id as Id_comment,c.Id_post,c.Type_comment,c.Id_reply,c.Id_software
from [tbl.Uers] as u, Comment as c
where u.Id=c.Id_uer
group by u.Id,u.name,u.Image_cus,c.Time,c.Noi_dung,c.Id,c.Id_post,c.Type_comment,c.Id_reply,c.Id_software
GO
