USE [data_python]
GO
/****** Object:  Table [dbo].[input_data]    Script Date: 5/14/2024 1:45:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[input_data](
	[id] [nchar](10) NOT NULL,
	[name] [nchar](10) NULL,
	[sl] [int] NULL,
 CONSTRAINT [PK_input_data] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[output_data]    Script Date: 5/14/2024 1:45:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[output_data](
	[id_out] [nchar](10) NOT NULL,
	[name] [nchar](10) NULL,
	[sl_out] [int] NULL,
 CONSTRAINT [PK_output_data] PRIMARY KEY CLUSTERED 
(
	[id_out] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
