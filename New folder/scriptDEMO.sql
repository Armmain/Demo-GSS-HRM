USE [DB_DEMOTEST]
GO
/****** Object:  Table [dbo].[tb_hrm_menu]    Script Date: 1/12/2016 9:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_hrm_menu](
	[node_id] [int] IDENTITY(1,1) NOT NULL,
	[name_menuTH] [nvarchar](150) NULL,
	[name_menuEN] [nvarchar](150) NULL,
	[menu_order] [int] NULL,
	[menu_flg] [int] NULL,
 CONSTRAINT [PK_hrm_menu] PRIMARY KEY CLUSTERED 
(
	[node_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_hrm_submenu]    Script Date: 1/12/2016 9:56:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_hrm_submenu](
	[submenu_id] [int] IDENTITY(1,1) NOT NULL,
	[subparent_id] [int] NULL,
	[name_menuTH] [nvarchar](150) NULL,
	[name_menuEN] [nvarchar](150) NULL,
	[menu_url] [nvarchar](150) NULL,
	[menu_icon] [nvarchar](50) NULL,
	[menu_order] [int] NULL,
	[menu_flg] [int] NULL,
 CONSTRAINT [PK_hrm_submenu] PRIMARY KEY CLUSTERED 
(
	[submenu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tb_hrm_menu] ON 

INSERT [dbo].[tb_hrm_menu] ([node_id], [name_menuTH], [name_menuEN], [menu_order], [menu_flg]) VALUES (1, N'ตั้งค่า', N'Master setting', 1, 0)
SET IDENTITY_INSERT [dbo].[tb_hrm_menu] OFF
SET IDENTITY_INSERT [dbo].[tb_hrm_submenu] ON 

INSERT [dbo].[tb_hrm_submenu] ([submenu_id], [subparent_id], [name_menuTH], [name_menuEN], [menu_url], [menu_icon], [menu_order], [menu_flg]) VALUES (2, 1, N'ตั้งค่า เมนู', N'Menu Setting', N'Master/master_menu.aspx', N'Content\Images\icon\list.png', 1, 0)
SET IDENTITY_INSERT [dbo].[tb_hrm_submenu] OFF
