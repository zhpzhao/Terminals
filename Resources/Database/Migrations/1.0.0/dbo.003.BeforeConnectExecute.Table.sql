USE [{DATABASE_NAME}]
GO
/****** Object:  Table [dbo].[BeforeConnectExecute]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeforeConnectExecute](
	[FavoriteId] [int] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Command] [nvarchar](255) NULL,
	[CommandArguments] [nvarchar](255) NULL,
	[InitialDirectory] [nvarchar](255) NULL,
	[WaitForExit] [bit] NOT NULL,
 CONSTRAINT [PK_BeforeConnectExecute] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BeforeConnectExecute]  WITH CHECK ADD  CONSTRAINT [FK_BeforeConnectExecute_BeforeConnectExecute] FOREIGN KEY([FavoriteId])
REFERENCES [dbo].[Favorites] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BeforeConnectExecute] CHECK CONSTRAINT [FK_BeforeConnectExecute_BeforeConnectExecute]
GO
