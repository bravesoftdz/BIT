USE [TradeDB]
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[MaterialGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialGroupName] [nvarchar](200) NULL,
 CONSTRAINT [PK_MaterialGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[UserTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Units](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Transporters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransporterName] [nvarchar](1000) NULL,
	[Cost] [float] NULL,
 CONSTRAINT [PK_Transporters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Places](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlaceName] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[PaymentTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Organizations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [nvarchar](200) NULL,
	[Enabled] [bit] NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Materials](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](50) NULL,
	[MaterialGroup] [int] NULL,
	[Cost] [float] NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[UserType] [int] NULL,
	[UserFIO] [nvarchar](300) NULL,
	[ManagerPercent] [float] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MainTransactions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransactDate] [date] NULL,
	[OrganizationID] [int] NULL,
	[MaterialID] [int] NULL,
	[SalePrice] [float] NULL,
	[SaleVolume] [float] NULL,
	[SaleUnitID] [int] NULL,
	[BuyingPlaceID] [int] NULL,
	[BuyingPrice] [float] NULL,
	[BuyingVolume] [float] NOT NULL,
	[BuyingUnitID] [int] NULL,
	[TransporterID] [int] NULL,
	[TransporterPrice] [float] NULL,
	[CommonProfit] [float] NULL,
	[PaymentType] [int] NULL,
	[ManagerID] [int] NULL,
	[ManagerProfit] [float] NULL,
	[ManagerPercent] [float] NULL,
        [SaleProfit] [float] NULL,
        [TransporterCost] [float] NULL,
        [SpecialCost] [float] NULL,
        [Comment] nvarchar(1000),
 CONSTRAINT [PK_MainTransactions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialGroups] FOREIGN KEY([MaterialGroup])
REFERENCES [dbo].[MaterialGroups] ([ID])
ON DELETE SET NULL

ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_MaterialGroups]

ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserTypes] FOREIGN KEY([UserType])
REFERENCES [dbo].[UserTypes] ([ID])

ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserTypes]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_Materials] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Materials] ([ID])
ON UPDATE SET NULL
ON DELETE SET NULL

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_Materials]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_Organizations] FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organizations] ([ID])
ON UPDATE SET NULL
ON DELETE SET NULL

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_Organizations]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_PaymentTypes] FOREIGN KEY([PaymentType])
REFERENCES [dbo].[PaymentTypes] ([ID])
ON UPDATE SET NULL
ON DELETE SET NULL

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_PaymentTypes]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_Places] FOREIGN KEY([BuyingPlaceID])
REFERENCES [dbo].[Places] ([ID])
ON UPDATE SET NULL
ON DELETE SET NULL

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_Places]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_Transporters] FOREIGN KEY([TransporterID])
REFERENCES [dbo].[Transporters] ([ID])
ON UPDATE SET NULL
ON DELETE SET NULL

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_Transporters]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_Units] FOREIGN KEY([SaleUnitID])
REFERENCES [dbo].[Units] ([ID])
ON UPDATE SET NULL
ON DELETE SET NULL

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_Units]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_Units1] FOREIGN KEY([BuyingUnitID])
REFERENCES [dbo].[Units] ([ID])

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_Units1]

ALTER TABLE [dbo].[MainTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MainTransactions_Users] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE SET NULL
ON DELETE SET NULL

ALTER TABLE [dbo].[MainTransactions] CHECK CONSTRAINT [FK_MainTransactions_Users]

