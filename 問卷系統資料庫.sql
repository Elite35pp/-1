USE [master]
GO
/****** Object:  Database [Questionnaire]    Script Date: 2021/11/17 上午 09:33:44 ******/
CREATE DATABASE [Questionnaire]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Questionnaire', FILENAME = N'D:\MSSQL15.MSSQLSERVER\MSSQL\DATA\Questionnaire.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Questionnaire_log', FILENAME = N'D:\MSSQL15.MSSQLSERVER\MSSQL\DATA\Questionnaire_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Questionnaire] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Questionnaire].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Questionnaire] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Questionnaire] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Questionnaire] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Questionnaire] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Questionnaire] SET ARITHABORT OFF 
GO
ALTER DATABASE [Questionnaire] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Questionnaire] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Questionnaire] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Questionnaire] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Questionnaire] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Questionnaire] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Questionnaire] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Questionnaire] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Questionnaire] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Questionnaire] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Questionnaire] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Questionnaire] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Questionnaire] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Questionnaire] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Questionnaire] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Questionnaire] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Questionnaire] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Questionnaire] SET RECOVERY FULL 
GO
ALTER DATABASE [Questionnaire] SET  MULTI_USER 
GO
ALTER DATABASE [Questionnaire] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Questionnaire] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Questionnaire] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Questionnaire] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Questionnaire] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Questionnaire] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Questionnaire', N'ON'
GO
ALTER DATABASE [Questionnaire] SET QUERY_STORE = OFF
GO
USE [Questionnaire]
GO
/****** Object:  Table [dbo].[Problem]    Script Date: 2021/11/17 上午 09:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem](
	[QtID] [int] NOT NULL,
	[ProblemGuid] [uniqueidentifier] NOT NULL,
	[QtGuid] [uniqueidentifier] NOT NULL,
	[QtProblem] [nvarchar](1000) NOT NULL,
	[IsMust] [bit] NOT NULL,
	[Selection] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_問題] PRIMARY KEY CLUSTERED 
(
	[QtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionnaireItems]    Script Date: 2021/11/17 上午 09:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionnaireItems](
	[QtItemsID] [int] NOT NULL,
	[QtItemsState] [int] NOT NULL,
	[QtItemsName] [nvarchar](50) NOT NULL,
	[QtItemsText] [nvarchar](1000) NOT NULL,
	[QtItemsIsMust] [int] NOT NULL,
	[QtItemsSelection] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_QuestionnaireItems] PRIMARY KEY CLUSTERED 
(
	[QtItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionnaireList]    Script Date: 2021/11/17 上午 09:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionnaireList](
	[QtID] [int] NOT NULL,
	[QtCaption] [nvarchar](100) NOT NULL,
	[StTime] [date] NOT NULL,
	[EdTime] [date] NOT NULL,
	[CtTime] [date] NOT NULL,
	[OnOff] [nvarchar](50) NOT NULL,
	[QtAmount] [nvarchar](50) NOT NULL,
	[QtGuid] [uniqueidentifier] NOT NULL,
	[QtContent] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Questionnaire] PRIMARY KEY CLUSTERED 
(
	[QtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply]    Script Date: 2021/11/17 上午 09:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[ReplyID] [int] NOT NULL,
	[UserGuid] [uniqueidentifier] NOT NULL,
	[QtID] [int] NOT NULL,
	[Answer] [nvarchar](1000) NOT NULL,
	[ReplyDate] [date] NOT NULL,
 CONSTRAINT [PK_Reply] PRIMARY KEY CLUSTERED 
(
	[ReplyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReplyInfo]    Script Date: 2021/11/17 上午 09:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplyInfo](
	[UserGuid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[QtID] [int] NOT NULL,
 CONSTRAINT [PK_答題人資料] PRIMARY KEY CLUSTERED 
(
	[UserGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Problem] ([QtID], [ProblemGuid], [QtGuid], [QtProblem], [IsMust], [Selection]) VALUES (1, N'09d22b21-9956-484a-b5df-5dc51a508838', N'05def07e-3e39-49f1-a0ca-e6cbda73579a', N'投給最希望和解的人', 1, N'何廢料')
INSERT [dbo].[Problem] ([QtID], [ProblemGuid], [QtGuid], [QtProblem], [IsMust], [Selection]) VALUES (2, N'060f2722-b54e-41f4-a4a1-a58409fe712b', N'7e677ffb-4948-4a79-9bcf-2d50bb6a4f89', N'投給你最喜歡的高中生', 1, N'+7/77')
GO
INSERT [dbo].[QuestionnaireList] ([QtID], [QtCaption], [StTime], [EdTime], [CtTime], [OnOff], [QtAmount], [QtGuid], [QtContent]) VALUES (1, N'三信大和解之最終之戰', CAST(N'2021-11-12' AS Date), CAST(N'2021-11-13' AS Date), CAST(N'2021-11-12' AS Date), N'投票中', N'前往', N'9a0ab6c7-7921-427a-a89d-a0af55557961', N'投給最希望和解的人')
INSERT [dbo].[QuestionnaireList] ([QtID], [QtCaption], [StTime], [EdTime], [CtTime], [OnOff], [QtAmount], [QtGuid], [QtContent]) VALUES (2, N'吃飯時間', CAST(N'2021-11-12' AS Date), CAST(N'2021-11-30' AS Date), CAST(N'2021-11-12' AS Date), N'投票中', N'前往', N'621f6aab-48e4-4d27-9c1d-a53b3460f848', N'投出大家吃飯的時間')
INSERT [dbo].[QuestionnaireList] ([QtID], [QtCaption], [StTime], [EdTime], [CtTime], [OnOff], [QtAmount], [QtGuid], [QtContent]) VALUES (3, N'高校之星', CAST(N'2021-11-15' AS Date), CAST(N'2021-12-31' AS Date), CAST(N'2021-11-15' AS Date), N'投票中', N'前往', N'36a883ea-7cd2-4f62-85fe-5a320ac4af55', N'投出最唐的人')
INSERT [dbo].[QuestionnaireList] ([QtID], [QtCaption], [StTime], [EdTime], [CtTime], [OnOff], [QtAmount], [QtGuid], [QtContent]) VALUES (4, N'投投看', CAST(N'2021-11-16' AS Date), CAST(N'2021-12-31' AS Date), CAST(N'2021-11-16' AS Date), N'投票中', N'前往', N'9c0d4d1f-5a0e-46de-a07b-96db40ea0012', N'投看看人')
INSERT [dbo].[QuestionnaireList] ([QtID], [QtCaption], [StTime], [EdTime], [CtTime], [OnOff], [QtAmount], [QtGuid], [QtContent]) VALUES (5, N'試試看', CAST(N'2021-11-16' AS Date), CAST(N'2021-12-31' AS Date), CAST(N'2021-11-16' AS Date), N'投票中', N'前往', N'13caca5d-3a3c-4c09-946b-7f482ae4e597', N'試試看投票')
INSERT [dbo].[QuestionnaireList] ([QtID], [QtCaption], [StTime], [EdTime], [CtTime], [OnOff], [QtAmount], [QtGuid], [QtContent]) VALUES (6, N'玩看看', CAST(N'2021-11-16' AS Date), CAST(N'2021-12-31' AS Date), CAST(N'2021-11-16' AS Date), N'投票中', N'前往', N'd09db4d3-0fae-4031-811d-3e7ec591a807', N'玩看看投票')
GO
INSERT [dbo].[ReplyInfo] ([UserGuid], [Name], [Phone], [Email], [Age], [QtID]) VALUES (N'f3df5021-4886-40c4-8f1d-9996cbd18399', N'林久泰', N'0987087087', N'9487@gmail.com', 23, 1)
GO
ALTER TABLE [dbo].[QuestionnaireList] ADD  CONSTRAINT [DF_Table_1_CreatDate]  DEFAULT (getdate()) FOR [CtTime]
GO
ALTER TABLE [dbo].[Reply] ADD  CONSTRAINT [DF_Reply_ReplyDate]  DEFAULT (getdate()) FOR [ReplyDate]
GO
USE [master]
GO
ALTER DATABASE [Questionnaire] SET  READ_WRITE 
GO
