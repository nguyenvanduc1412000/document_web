
/****** Object:  Database [FootballWeb]    Script Date: 11/11/2021 9:26:25 PM ******/
CREATE DATABASE [FootballWeb]
GO
 USE [FootballWeb]
GO
ALTER DATABASE [FootballWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FootballWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FootballWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FootballWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FootballWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [FootballWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FootballWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FootballWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FootballWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FootballWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FootballWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FootballWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FootballWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FootballWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FootballWeb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FootballWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FootballWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FootballWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FootballWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FootballWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FootballWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FootballWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FootballWeb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FootballWeb] SET  MULTI_USER 
GO
ALTER DATABASE [FootballWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FootballWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FootballWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FootballWeb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FootballWeb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FootballWeb]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id_post] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[idu] [int] NULL,
	[content] [nvarchar](max) NULL,
	[image] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[id_post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[cardId] [int] IDENTITY(1,1) NOT NULL,
	[playerId] [int] NOT NULL,
	[matchId] [int] NOT NULL,
	[time] [int] NOT NULL,
	[red] [bit] NOT NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[cardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[club]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[club](
	[clubId] [int] IDENTITY(1,1) NOT NULL,
	[clubName] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NULL,
	[kit] [nvarchar](50) NULL,
	[stadium] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[clubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[cmtId] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](max) NOT NULL,
	[userId] [int] NOT NULL,
	[id_post] [int] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[cmtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite](
	[uid] [int] NOT NULL,
	[pid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goal]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goal](
	[goalId] [int] IDENTITY(1,1) NOT NULL,
	[scorer] [int] NOT NULL,
	[assistant] [int] NULL,
	[matchId] [int] NOT NULL,
	[time] [int] NULL,
	[og] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[goalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match](
	[matchId] [int] IDENTITY(1,1) NOT NULL,
	[home] [int] NOT NULL,
	[away] [int] NOT NULL,
	[date] [date] NULL,
	[homeScore] [int] NULL,
	[awayScore] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[matchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchStat]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchStat](
	[matchId] [int] NOT NULL,
	[isHome] [bit] NOT NULL,
	[possession] [float] NOT NULL,
	[shot] [int] NOT NULL,
	[sot] [int] NOT NULL,
	[corners] [int] NOT NULL,
	[offside] [int] NOT NULL,
	[foul] [int] NOT NULL,
 CONSTRAINT [PK_MatchStat] PRIMARY KEY CLUSTERED 
(
	[matchId] ASC,
	[isHome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player](
	[playerId] [int] IDENTITY(1,1) NOT NULL,
	[playerName] [nvarchar](50) NOT NULL,
	[dob] [date] NULL,
	[pos] [int] NULL,
	[number] [int] NULL,
	[country] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[clubId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[playerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[position]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[position](
	[posId] [int] IDENTITY(1,1) NOT NULL,
	[posName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[posId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RankTable]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RankTable](
	[clubId] [int] NOT NULL,
	[W] [int] NOT NULL,
	[D] [int] NOT NULL,
	[L] [int] NOT NULL,
	[GF] [int] NOT NULL,
	[GA] [int] NOT NULL,
 CONSTRAINT [PK_RankTable] PRIMARY KEY CLUSTERED 
(
	[clubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Squad]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Squad](
	[squadId] [int] IDENTITY(1,1) NOT NULL,
	[isMatch] [bit] NOT NULL,
	[isHome] [bit] NULL,
	[userId] [int] NULL,
	[matchId] [int] NULL,
 CONSTRAINT [PK_Squad] PRIMARY KEY CLUSTERED 
(
	[squadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SquadInfo]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SquadInfo](
	[squadInfoId] [int] IDENTITY(1,1) NOT NULL,
	[playerId] [int] NOT NULL,
	[squadId] [int] NOT NULL,
	[posNo] [int] NULL,
 CONSTRAINT [PK_SquadInfo] PRIMARY KEY CLUSTERED 
(
	[squadInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[favClub] [int] NULL,
	[email] [nvarchar](50) NOT NULL,
	[type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userType]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userType](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 11/11/2021 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[vidId] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[link] [nvarchar](max) NOT NULL,
	[time] [nvarchar](10) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[blogId] [int] NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[vidId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id_post], [title], [idu], [content], [image], [date]) VALUES (6, N'Bóng đá PSG - Angers: Ngược dòng nghẹt thở, Mbappe', 1, N'Thế trận áp đảo được PSG tạo ra ngay sau tiếng còi khai cuộc. Sức ép của đội chủ nhà giúp họ kiểm soát bóng vượt trội trước Angers và đẩy đối thủ vào thế chống đỡ. Thế nhưng, sự thiếu hiệu quả của hàng công đã khiến PSG không thể tìm được bàn mở tỷ số trong hiệp 1.', N'img/blog/blog-2.jpg', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Blog] ([id_post], [title], [idu], [content], [image], [date]) VALUES (10, N'Fan MU trách Solskjaer không biết dùng', 1, N'Các CĐV MU cho rằng HLV Ole Gunnar Solskjaer đang sử dụng sai Fred sau khi chứng kiến màn trình diễn của tiền vệ này ở trận Brazil - Uruguay mới đây.', N'img/blog/blog-3.jpg', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Blog] ([id_post], [title], [idu], [content], [image], [date]) VALUES (13, N'Choáng ván cuộc đua Giày vàng châu Âu', 1, N'Mùa giải 2020/21, Robert Lewandowski giành danh hiệu Chiếc giày vàng châu Âu, xếp trên Lionel Messi. Nhưng ở thời điểm hiện tại, những người thống trị bảng xếp hạng lại không phải các siêu sao hàng đầu.', N'img/blog/blog-4.jpg', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Blog] ([id_post], [title], [idu], [content], [image], [date]) VALUES (14, N'MU đấu Leicester: Solskjaer quyết thắng', 1, N'Ở chuyến làm khách của Leicester City tối nay (21h, 16/10) tại vòng 8 giải Ngoại hạng Anh, MU đón nhận nhiều áp lực về phong độ kém ổn định và tổn thất lực lượng. Dẫu vậy, HLV Solskjaer vẫn tin các học trò sẽ không làm ông thất vọng.', N'img/blog/blog-2.jpg', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[Blog] ([id_post], [title], [idu], [content], [image], [date]) VALUES (17, N'Quả bóng vàng', 1, N'Vào ngày 29/11, lễ trao giải Quả bóng vàng 2021 sẽ được tổ chức tại Paris. Mới đây, tạp chí France Football, đơn vị tổ chức giải thưởng cá nhân danh giá bao năm qua đưa ra thông báo chính thức về kế hoạch tổ chức bầu chọn và lễ trao giải Quả bóng vàng 2021. Nhà hát Chatelet là nơi được chọn cho sự kiện lớn của môn bóng đá trong năm nay.', N'img/blog/blog-5.jpg', CAST(N'2021-10-16' AS Date))
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Card] ON 

INSERT [dbo].[Card] ([cardId], [playerId], [matchId], [time], [red]) VALUES (1, 7, 1, 20, 0)
INSERT [dbo].[Card] ([cardId], [playerId], [matchId], [time], [red]) VALUES (2, 19, 1, 90, 1)
INSERT [dbo].[Card] ([cardId], [playerId], [matchId], [time], [red]) VALUES (4, 8, 2, 41, 0)
INSERT [dbo].[Card] ([cardId], [playerId], [matchId], [time], [red]) VALUES (5, 33, 2, 87, 0)
INSERT [dbo].[Card] ([cardId], [playerId], [matchId], [time], [red]) VALUES (6, 19, 16, 86, 1)
SET IDENTITY_INSERT [dbo].[Card] OFF
GO
SET IDENTITY_INSERT [dbo].[club] ON 

INSERT [dbo].[club] ([clubId], [clubName], [image], [kit], [stadium]) VALUES (1, N'Man United', N'mu.png', N'', N'Old Trafford')
INSERT [dbo].[club] ([clubId], [clubName], [image], [kit], [stadium]) VALUES (2, N'Man City', N'mc.png', N'', N'Etihad')
INSERT [dbo].[club] ([clubId], [clubName], [image], [kit], [stadium]) VALUES (3, N'Chelsea', N'chel.png', N'', N'Stamford Bridge')
INSERT [dbo].[club] ([clubId], [clubName], [image], [kit], [stadium]) VALUES (4, N'Liverpool', N'liver.png', N'', N'Anfield')
INSERT [dbo].[club] ([clubId], [clubName], [image], [kit], [stadium]) VALUES (5, N'Juventus', N'juve.png', NULL, N'Allianz')
SET IDENTITY_INSERT [dbo].[club] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([cmtId], [content], [userId], [id_post], [date]) VALUES (1, N'gggg', 2, 6, CAST(N'2021-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtId], [content], [userId], [id_post], [date]) VALUES (2, N'Good', 2, 6, CAST(N'2021-11-10' AS Date))
INSERT [dbo].[Comment] ([cmtId], [content], [userId], [id_post], [date]) VALUES (3, N'Good game', 6, 6, CAST(N'2021-11-11' AS Date))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (4, 10)
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (4, 17)
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (4, 6)
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (4, 13)
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (1, 17)
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (2, 6)
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (6, 10)
INSERT [dbo].[Favourite] ([uid], [pid]) VALUES (1, 6)
GO
SET IDENTITY_INSERT [dbo].[goal] ON 

INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (1, 13, 11, 1, 4, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (3, 17, NULL, 1, 45, 1)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (4, 24, 22, 1, 49, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (5, 22, NULL, 1, 70, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (14, 15, NULL, 1, 50, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (15, 38, 41, 2, 5, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (16, 13, 11, 2, 43, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (17, 15, 9, 2, 67, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (18, 38, 33, 16, 19, 0)
INSERT [dbo].[goal] ([goalId], [scorer], [assistant], [matchId], [time], [og]) VALUES (19, 24, 22, 16, 45, 0)
SET IDENTITY_INSERT [dbo].[goal] OFF
GO
SET IDENTITY_INSERT [dbo].[match] ON 

INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (1, 1, 2, CAST(N'2021-09-08' AS Date), 3, 2, 1)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (2, 1, 3, CAST(N'2021-09-16' AS Date), 2, 1, 1)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (11, 5, 3, CAST(N'2021-10-01' AS Date), NULL, NULL, 0)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (13, 4, 1, CAST(N'2021-09-29' AS Date), NULL, NULL, 0)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (14, 2, 4, CAST(N'2021-10-08' AS Date), NULL, NULL, 0)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (15, 5, 1, CAST(N'2021-10-11' AS Date), NULL, NULL, 0)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (16, 3, 2, CAST(N'2021-09-22' AS Date), 1, 1, 1)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (17, 4, 2, CAST(N'2021-11-19' AS Date), NULL, NULL, 0)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (18, 1, 5, CAST(N'2021-11-05' AS Date), NULL, NULL, 0)
INSERT [dbo].[match] ([matchId], [home], [away], [date], [homeScore], [awayScore], [status]) VALUES (19, 3, 5, CAST(N'2021-11-14' AS Date), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[match] OFF
GO
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (1, 0, 46, 5, 3, 4, 1, 5)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (1, 1, 54, 8, 4, 6, 2, 4)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (2, 0, 43, 6, 2, 2, 3, 1)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (2, 1, 57, 5, 3, 5, 2, 2)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (11, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (11, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (13, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (13, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (14, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (14, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (15, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (15, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (16, 0, 56, 8, 4, 7, 1, 7)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (16, 1, 44, 5, 3, 4, 2, 5)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (17, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (17, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (18, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (18, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (19, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MatchStat] ([matchId], [isHome], [possession], [shot], [sot], [corners], [offside], [foul]) VALUES (19, 1, 0, 0, 0, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[player] ON 

INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (1, N'David de Gea', CAST(N'1900-01-01' AS Date), 1, 1, N'Spain', N'MU_DdeGea.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (2, N'Tom Heaton', CAST(N'1900-01-01' AS Date), 1, 22, N'England', N'MU_THeaton.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (3, N'Dean Henderson', CAST(N'1900-01-01' AS Date), 1, 26, N'England', N'MU_DHenderson.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (4, N'Victor Lindelof', CAST(N'1900-01-01' AS Date), 2, 2, N'Sweden', N'MU_VLindelof.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (5, N'Eric Bailly', CAST(N'1900-01-01' AS Date), 2, 3, N'Invory Coast', N'MU_EBailly.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (6, N'Harry Maguire', CAST(N'1900-01-01' AS Date), 2, 5, N'England', N'MU_HMaguire.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (7, N'Luke Shaw', CAST(N'1900-01-01' AS Date), 2, 23, N'England', N'MU_LShaw.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (8, N'Aaron Wan-Bissaka', CAST(N'1900-01-01' AS Date), 2, 29, N'England', N'MU_AWan-Bissaka.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (9, N'Paul Pogba', CAST(N'1900-01-01' AS Date), 3, 6, N'France', N'MU_PPogba.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (10, N'Fred', CAST(N'1900-01-01' AS Date), 3, 17, N'Brazil', N'MU_Fred.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (11, N'Bruno Fernandes', CAST(N'1900-01-01' AS Date), 3, 18, N'Portugal', N'MU_BFernandes.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (12, N'Scott McTominay', CAST(N'1900-01-01' AS Date), 3, 39, N'Scotland', N'MU_SMcTominay.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (13, N'Cristiano Ronaldo', CAST(N'1900-01-01' AS Date), 4, 7, N'Portugal', N'MU_CRonaldo.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (14, N'Marcus Rashford', CAST(N'1900-01-01' AS Date), 4, 10, N'England', N'MU_MRashford.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (15, N'Edinson Cavani', CAST(N'1900-01-01' AS Date), 4, 21, N'Uruguay', N'MU_ECavani.png', 1)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (16, N'Ederson', CAST(N'1900-01-01' AS Date), 1, 31, N'Brazil', N'MC_Ederson.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (17, N'Kyle Walker', CAST(N'1900-01-01' AS Date), 2, 2, N'England', N'MC_KWalker.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (18, N'Ruben Dias', CAST(N'1900-01-01' AS Date), 2, 3, N'Portugal', N'MC_RDias.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (19, N'John Stones', CAST(N'1900-01-01' AS Date), 2, 5, N'England', N'MC_JStone.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (20, N'Joao Cancelo', CAST(N'1900-01-01' AS Date), 2, 27, N'Portugal', N'MC_JCancelo.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (21, N'Jack Grealish', CAST(N'1900-01-01' AS Date), 3, 10, N'England', N'MC_JGrealish.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (22, N'Kevin De Bruyne', CAST(N'1900-01-01' AS Date), 3, 17, N'Belgium', N'MC_KDeBruyne.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (23, N'Bernardo Silva', CAST(N'1900-01-01' AS Date), 3, 20, N'Portugal', N'MC_BSilva.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (24, N'Raheem Sterling', CAST(N'1900-01-01' AS Date), 4, 7, N'England', N'MC_RSterling.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (25, N'Cabriel Jesus', CAST(N'1900-01-01' AS Date), 4, 9, N'Brazil', N'MC_CJesus.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (26, N'Ferran Torres', CAST(N'1900-01-01' AS Date), 4, 21, N'Spain', N'MC_FTorres.png', 2)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (27, N'Antonio Rudiger', CAST(N'1993-07-09' AS Date), 2, 2, N'Germany', N'Chel_ARudiger.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (28, N'Ben Chilwell', NULL, 2, 21, N'England', N'Chel_BChilwell.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (29, N'Callum Hudson-Odoi', NULL, 3, 20, N'England', N'Chel_CHudson-Odoi.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (30, N'Edouard Mendy', NULL, 1, 16, N'Senegal', N'Chel_EMendy.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (31, N'Kepa', NULL, 1, 1, N'Spain', N'Chel_Kepa.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (32, N'Lewis Baker', NULL, 3, 32, N'England', N'Chel_LBaker.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (33, N'Marcos Alonso', NULL, 2, 3, N'Spain', N'Chel_MAlonso.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (34, N'Mason Mount', NULL, 3, 19, N'England', N'Chel_MMount.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (35, N'Ross Barkley', NULL, 3, 18, N'England', N'Chel_RBarkley.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (36, N'Reece James', NULL, 2, 24, N'England', N'Chel_RJames.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (37, N'Ruben Loftus-Cheek', NULL, 4, 12, N'England', N'Chel_RLoftus-Cheek.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (38, N'Romelu Lukaku', NULL, 4, 9, N'Belgium', N'Chel_RLukaku.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (39, N'Trevoh Chalobah', NULL, 2, 14, N'England', N'Chel_TChalobah.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (40, N'Thiago Silva', NULL, 2, 6, N'Brazil', N'Chel_TSilva.png', 3)
INSERT [dbo].[player] ([playerId], [playerName], [dob], [pos], [number], [country], [image], [clubId]) VALUES (41, N'Timo Werner', NULL, 4, 11, N'Germany', N'Chel_TWerner.png', 3)
SET IDENTITY_INSERT [dbo].[player] OFF
GO
SET IDENTITY_INSERT [dbo].[position] ON 

INSERT [dbo].[position] ([posId], [posName]) VALUES (1, N'Goalkeeper')
INSERT [dbo].[position] ([posId], [posName]) VALUES (2, N'Defender')
INSERT [dbo].[position] ([posId], [posName]) VALUES (3, N'Midfielder')
INSERT [dbo].[position] ([posId], [posName]) VALUES (4, N'Striker')
SET IDENTITY_INSERT [dbo].[position] OFF
GO
INSERT [dbo].[RankTable] ([clubId], [W], [D], [L], [GF], [GA]) VALUES (1, 2, 0, 0, 5, 3)
INSERT [dbo].[RankTable] ([clubId], [W], [D], [L], [GF], [GA]) VALUES (2, 0, 1, 1, 3, 4)
INSERT [dbo].[RankTable] ([clubId], [W], [D], [L], [GF], [GA]) VALUES (3, 0, 1, 1, 2, 3)
INSERT [dbo].[RankTable] ([clubId], [W], [D], [L], [GF], [GA]) VALUES (4, 0, 0, 0, 0, 0)
INSERT [dbo].[RankTable] ([clubId], [W], [D], [L], [GF], [GA]) VALUES (5, 0, 0, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Squad] ON 

INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (1, 1, 1, NULL, 1)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (2, 1, 0, NULL, 1)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (3, 1, 1, NULL, 2)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (4, 1, 0, NULL, 2)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (8, 0, NULL, 1, NULL)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (9, 0, NULL, 2, NULL)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (10, 0, NULL, 3, NULL)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (11, 0, NULL, 4, NULL)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (12, 0, NULL, 6, NULL)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (13, 0, NULL, 7, NULL)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (14, 0, NULL, 8, NULL)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (15, 1, 1, NULL, 11)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (16, 1, 0, NULL, 11)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (19, 1, 1, NULL, 13)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (20, 1, 0, NULL, 13)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (21, 1, 1, NULL, 14)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (22, 1, 0, NULL, 14)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (23, 1, 1, NULL, 15)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (24, 1, 0, NULL, 15)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (25, 1, 1, NULL, 16)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (26, 1, 0, NULL, 16)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (27, 1, 1, NULL, 17)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (28, 1, 0, NULL, 17)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (29, 1, 1, NULL, 18)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (30, 1, 0, NULL, 18)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (31, 1, 1, NULL, 19)
INSERT [dbo].[Squad] ([squadId], [isMatch], [isHome], [userId], [matchId]) VALUES (32, 1, 0, NULL, 19)
SET IDENTITY_INSERT [dbo].[Squad] OFF
GO
SET IDENTITY_INSERT [dbo].[SquadInfo] ON 

INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1, 8, 1, 1)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (2, 15, 1, 2)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (3, 12, 1, 3)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (4, 6, 1, 4)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (5, 1, 1, 5)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (6, 13, 1, 6)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (8, 4, 1, 8)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (9, 9, 1, 9)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (10, 14, 1, 10)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (11, 7, 1, 11)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (13, 2, 1, 12)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (14, 5, 1, 12)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (15, 10, 1, 12)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (19, 8, 3, 1)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (20, 14, 3, 2)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (21, 12, 3, 3)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (22, 4, 3, 4)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (23, 1, 3, 5)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (32, 6, 3, 8)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (33, 9, 3, 9)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1045, 11, 3, 7)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1046, 7, 3, 11)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1047, 15, 3, 10)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1048, 11, 1, 7)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1049, 13, 3, 6)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1068, 1, 9, 5)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1069, 4, 9, 4)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1070, 6, 9, 8)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1071, 16, 2, 5)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1072, 18, 2, 4)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1073, 19, 2, 8)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1074, 17, 2, 1)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1075, 20, 2, 11)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1076, 23, 2, 7)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1077, 22, 2, 3)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1078, 21, 2, 9)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1079, 24, 2, 2)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1080, 25, 2, 6)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1081, 26, 2, 10)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1082, 30, 4, 5)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1083, 27, 4, 4)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1084, 29, 4, 8)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1085, 32, 4, 1)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1086, 36, 4, 11)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1087, 33, 4, 7)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1088, 37, 4, 9)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1089, 39, 4, 3)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1090, 38, 4, 6)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1091, 41, 4, 2)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1092, 34, 4, 10)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1093, 31, 25, 5)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1094, 27, 25, 4)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1095, 40, 25, 8)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1096, 36, 25, 11)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1097, 33, 25, 1)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1098, 28, 25, 7)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1099, 29, 25, 3)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1100, 37, 25, 9)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1101, 41, 25, 6)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1102, 38, 25, 2)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1103, 32, 25, 10)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1104, 16, 26, 5)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1105, 19, 26, 4)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1106, 18, 26, 8)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1107, 17, 26, 1)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1108, 20, 26, 11)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1109, 23, 26, 7)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1110, 22, 26, 3)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1111, 21, 26, 9)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1112, 26, 26, 2)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1113, 24, 26, 6)
INSERT [dbo].[SquadInfo] ([squadInfoId], [playerId], [squadId], [posNo]) VALUES (1114, 25, 26, 10)
SET IDENTITY_INSERT [dbo].[SquadInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([userId], [username], [password], [name], [gender], [dob], [favClub], [email], [type]) VALUES (1, N'admin', N'Admin123', N'Administrator', 1, CAST(N'2001-06-21' AS Date), NULL, N'admin@gmail.com', 1)
INSERT [dbo].[user] ([userId], [username], [password], [name], [gender], [dob], [favClub], [email], [type]) VALUES (2, N'manutd', N'Manutd123', N'Manchester United Manager', 1, CAST(N'2021-11-12' AS Date), 1, N'manutd@gmail.com', 2)
INSERT [dbo].[user] ([userId], [username], [password], [name], [gender], [dob], [favClub], [email], [type]) VALUES (3, N'mancity', N'Mancity123', N'Manchester City Manager', NULL, NULL, 2, N'mancity@gmail.com', 2)
INSERT [dbo].[user] ([userId], [username], [password], [name], [gender], [dob], [favClub], [email], [type]) VALUES (4, N'chelsea', N'Chelsea123', N'Chelsea Manager', NULL, NULL, 3, N'chelsea@gmail.com', 2)
INSERT [dbo].[user] ([userId], [username], [password], [name], [gender], [dob], [favClub], [email], [type]) VALUES (6, N'fan', N'Fan123', N'Ninh Duc Anh', 1, CAST(N'2001-06-21' AS Date), 1, N'ninhkhoai2106@gmail.com', 3)
INSERT [dbo].[user] ([userId], [username], [password], [name], [gender], [dob], [favClub], [email], [type]) VALUES (7, N'liver', N'Liver123', N'Liverpool Manager', NULL, NULL, 4, N'liver@gmail.com', 2)
INSERT [dbo].[user] ([userId], [username], [password], [name], [gender], [dob], [favClub], [email], [type]) VALUES (8, N'juve', N'Juve123', N'Juventus Manager', NULL, NULL, 5, N'juve@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[userType] ON 

INSERT [dbo].[userType] ([typeId], [typeName]) VALUES (1, N'Admin')
INSERT [dbo].[userType] ([typeId], [typeName]) VALUES (2, N'Manager')
INSERT [dbo].[userType] ([typeId], [typeName]) VALUES (3, N'Fan')
INSERT [dbo].[userType] ([typeId], [typeName]) VALUES (4, N'Pending')
SET IDENTITY_INSERT [dbo].[userType] OFF
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([vidId], [content], [link], [time], [image], [blogId]) VALUES (2, N'HIGHLIGHTS ATLETICO MADRID - LIVERPOOL| UCL 2021/22', N'https://www.youtube.com/watch?v=d_h8USZbqX8', N'11:54', N'hq720.jpg', NULL)
INSERT [dbo].[Video] ([vidId], [content], [link], [time], [image], [blogId]) VALUES (3, N'HIGHLIGHTS AJAX - DORTMUND ', N'https://www.youtube.com/watch?v=k2b5txzcjG0', N'9:45', N'hq722.jpg', NULL)
INSERT [dbo].[Video] ([vidId], [content], [link], [time], [image], [blogId]) VALUES (4, N'HIGHLIGHTS PSG - LEIPZIG| UCL 2021/22', N'https://www.youtube.com/watch?v=7OLgxM_i8C0', N'11:13', N'hq721.jpg', NULL)
INSERT [dbo].[Video] ([vidId], [content], [link], [time], [image], [blogId]) VALUES (5, N'CƠ HỘI NÀO CHO CÁC ĐỘI BÓNG ANH?| PHÂN TÍCH CHIẾN THUẬT', N'https://www.youtube.com/watch?v=22GasemsQU4', N'17:24', N'hqdefault.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_user] FOREIGN KEY([idu])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_user]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_match] FOREIGN KEY([matchId])
REFERENCES [dbo].[match] ([matchId])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_match]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_player] FOREIGN KEY([playerId])
REFERENCES [dbo].[player] ([playerId])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_player]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Blog] FOREIGN KEY([id_post])
REFERENCES [dbo].[Blog] ([id_post])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Blog]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_user] FOREIGN KEY([userId])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_user]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_Blog] FOREIGN KEY([pid])
REFERENCES [dbo].[Blog] ([id_post])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_Blog]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_user] FOREIGN KEY([uid])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_user]
GO
ALTER TABLE [dbo].[goal]  WITH CHECK ADD FOREIGN KEY([assistant])
REFERENCES [dbo].[player] ([playerId])
GO
ALTER TABLE [dbo].[goal]  WITH CHECK ADD FOREIGN KEY([matchId])
REFERENCES [dbo].[match] ([matchId])
GO
ALTER TABLE [dbo].[goal]  WITH CHECK ADD FOREIGN KEY([scorer])
REFERENCES [dbo].[player] ([playerId])
GO
ALTER TABLE [dbo].[match]  WITH CHECK ADD FOREIGN KEY([away])
REFERENCES [dbo].[club] ([clubId])
GO
ALTER TABLE [dbo].[match]  WITH CHECK ADD FOREIGN KEY([home])
REFERENCES [dbo].[club] ([clubId])
GO
ALTER TABLE [dbo].[MatchStat]  WITH CHECK ADD  CONSTRAINT [FK_MatchStat_match] FOREIGN KEY([matchId])
REFERENCES [dbo].[match] ([matchId])
GO
ALTER TABLE [dbo].[MatchStat] CHECK CONSTRAINT [FK_MatchStat_match]
GO
ALTER TABLE [dbo].[player]  WITH CHECK ADD FOREIGN KEY([clubId])
REFERENCES [dbo].[club] ([clubId])
GO
ALTER TABLE [dbo].[player]  WITH CHECK ADD FOREIGN KEY([pos])
REFERENCES [dbo].[position] ([posId])
GO
ALTER TABLE [dbo].[RankTable]  WITH CHECK ADD  CONSTRAINT [FK_RankTable_club] FOREIGN KEY([clubId])
REFERENCES [dbo].[club] ([clubId])
GO
ALTER TABLE [dbo].[RankTable] CHECK CONSTRAINT [FK_RankTable_club]
GO
ALTER TABLE [dbo].[Squad]  WITH CHECK ADD  CONSTRAINT [FK_Squad_match] FOREIGN KEY([matchId])
REFERENCES [dbo].[match] ([matchId])
GO
ALTER TABLE [dbo].[Squad] CHECK CONSTRAINT [FK_Squad_match]
GO
ALTER TABLE [dbo].[Squad]  WITH CHECK ADD  CONSTRAINT [FK_Squad_user] FOREIGN KEY([userId])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[Squad] CHECK CONSTRAINT [FK_Squad_user]
GO
ALTER TABLE [dbo].[SquadInfo]  WITH CHECK ADD  CONSTRAINT [FK_SquadInfo_player] FOREIGN KEY([playerId])
REFERENCES [dbo].[player] ([playerId])
GO
ALTER TABLE [dbo].[SquadInfo] CHECK CONSTRAINT [FK_SquadInfo_player]
GO
ALTER TABLE [dbo].[SquadInfo]  WITH CHECK ADD  CONSTRAINT [FK_SquadInfo_Squad] FOREIGN KEY([squadId])
REFERENCES [dbo].[Squad] ([squadId])
GO
ALTER TABLE [dbo].[SquadInfo] CHECK CONSTRAINT [FK_SquadInfo_Squad]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([favClub])
REFERENCES [dbo].[club] ([clubId])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([type])
REFERENCES [dbo].[userType] ([typeId])
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Blog] FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id_post])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Blog]
GO
USE [master]
GO
ALTER DATABASE [FootballWeb] SET  READ_WRITE 
GO
