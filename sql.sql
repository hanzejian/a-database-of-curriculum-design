CREATE DATABASE [Student_Select]
GO
USE [Student_Select]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[teacher_id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[gender] [nchar](10) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Teacher] ([teacher_id], [name], [gender]) VALUES (N'1', N'1', N'1         ')
INSERT [dbo].[Teacher] ([teacher_id], [name], [gender]) VALUES (N'2', N'2', N'2         ')
/****** Object:  Table [dbo].[Course]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[mode] [nvarchar](50) NOT NULL,
	[credit] [nvarchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Course] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'mode'
GO
INSERT [dbo].[Course] ([course_id], [name], [mode], [credit]) VALUES (N'1', N'1', N'1', N'1')
INSERT [dbo].[Course] ([course_id], [name], [mode], [credit]) VALUES (N'2', N'2', N'2', N'2')
/****** Object:  Table [dbo].[audience]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[audience](
	[audience_id] [nvarchar](50) NOT NULL,
	[academy] [nvarchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[grade] [nvarchar](50) NULL,
	[semester] [int] NULL,
 CONSTRAINT [PK_audience] PRIMARY KEY CLUSTERED 
(
	[audience_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受众ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'audience', @level2type=N'COLUMN',@level2name=N'audience_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学院' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'audience', @level2type=N'COLUMN',@level2name=N'academy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'audience', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'audience', @level2type=N'COLUMN',@level2name=N'semester'
GO
INSERT [dbo].[audience] ([audience_id], [academy], [major], [grade], [semester]) VALUES (N'1', N'1', N'1', N'1', 1)
INSERT [dbo].[audience] ([audience_id], [academy], [major], [grade], [semester]) VALUES (N'2', N'2', N'2', N'2', 2)
/****** Object:  Table [dbo].[Administrator]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[administrator] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[student_id] [nvarchar](50) NOT NULL,
	[gender] [nchar](10) NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Student] ([student_id], [gender], [name], [category]) VALUES (N'1', N'1         ', N'1', N'1')
INSERT [dbo].[Student] ([student_id], [gender], [name], [category]) VALUES (N'2', N'2         ', N'2', N'2')
/****** Object:  Table [dbo].[Plan]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan](
	[plan_id] [nvarchar](50) NOT NULL,
	[audience_id] [nvarchar](50) NOT NULL,
	[course_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[plan_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Plan] UNIQUE NONCLUSTERED 
(
	[audience_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Plan] ([plan_id], [audience_id], [course_id]) VALUES (N'1', N'1', N'1')
INSERT [dbo].[Plan] ([plan_id], [audience_id], [course_id]) VALUES (N'2', N'2', N'2')
/****** Object:  Table [dbo].[Teach]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teach](
	[teach_id] [nvarchar](50) NOT NULL,
	[plan_id] [nvarchar](50) NULL,
	[teacher_id] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teach] PRIMARY KEY CLUSTERED 
(
	[teach_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Teach_1] UNIQUE NONCLUSTERED 
(
	[teach_id] ASC,
	[plan_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Teach] ([teach_id], [plan_id], [teacher_id]) VALUES (N'1', N'1', N'1')
INSERT [dbo].[Teach] ([teach_id], [plan_id], [teacher_id]) VALUES (N'2', N'2', N'2')
/****** Object:  Table [dbo].[Student_Selete]    Script Date: 06/27/2018 10:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Selete](
	[selete_id] [nvarchar](50) NOT NULL,
	[student_id] [nvarchar](50) NOT NULL,
	[teach_id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student_Selete] PRIMARY KEY CLUSTERED 
(
	[selete_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Student_Selete_1] UNIQUE NONCLUSTERED 
(
	[student_id] ASC,
	[teach_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [audience_id]    Script Date: 06/27/2018 10:37:01 ******/
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [audience_id] FOREIGN KEY([audience_id])
REFERENCES [dbo].[audience] ([audience_id])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [audience_id]
GO
/****** Object:  ForeignKey [course_id]    Script Date: 06/27/2018 10:37:01 ******/
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [course_id] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [course_id]
GO
/****** Object:  ForeignKey [plan_id]    Script Date: 06/27/2018 10:37:01 ******/
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [plan_id] FOREIGN KEY([plan_id])
REFERENCES [dbo].[Plan] ([plan_id])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [plan_id]
GO
/****** Object:  ForeignKey [teacher_id]    Script Date: 06/27/2018 10:37:01 ******/
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [teacher_id] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teacher] ([teacher_id])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [teacher_id]
GO
/****** Object:  ForeignKey [student_zhujian]    Script Date: 06/27/2018 10:37:01 ******/
ALTER TABLE [dbo].[Student_Selete]  WITH CHECK ADD  CONSTRAINT [student_zhujian] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[Student_Selete] CHECK CONSTRAINT [student_zhujian]
GO
/****** Object:  ForeignKey [teach_zhujian]    Script Date: 06/27/2018 10:37:01 ******/
ALTER TABLE [dbo].[Student_Selete]  WITH CHECK ADD  CONSTRAINT [teach_zhujian] FOREIGN KEY([teach_id])
REFERENCES [dbo].[Teach] ([teach_id])
GO
ALTER TABLE [dbo].[Student_Selete] CHECK CONSTRAINT [teach_zhujian]
GO
