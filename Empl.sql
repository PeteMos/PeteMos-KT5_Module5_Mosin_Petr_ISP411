CREATE DATABASE [Empl]
GO
USE [Empl]
GO
/****** Object:  Table [dbo].[Emp]    Script Date: 22.10.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleNameId] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](70) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[SeriaOfPassport] [int] NOT NULL,
	[NumberOfPassport] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[LastEnter] [datetime] NOT NULL,
	[EnterTypeId] [int] NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Emp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enter]    Script Date: 22.10.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enter] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Enter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 22.10.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22.10.2024 11:02:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Emp] ON 

INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+77817855837', 2367, 558134, CAST(N'1993-07-03' AS Date), CAST(N'2023-01-08T13:07:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+72309068815', 7101, 669343, CAST(N'1975-06-22' AS Date), CAST(N'2023-01-09T13:07:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+75554448316', 3455, 719630, CAST(N'1991-08-16' AS Date), CAST(N'2023-01-10T13:07:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+73926824442', 2377, 871623, CAST(N'1970-12-22' AS Date), CAST(N'2023-01-11T13:07:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+78364290386', 8755, 921148, CAST(N'1999-05-04' AS Date), CAST(N'2023-01-12T13:07:00.000' AS DateTime), 1, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+72839453092', 4355, 104594, CAST(N'1994-12-06' AS Date), CAST(N'2023-01-13T13:07:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+76213593669', 2791, 114390, CAST(N'1995-03-28' AS Date), CAST(N'2023-01-14T13:07:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+74405610314', 5582, 126286, CAST(N'1977-03-27' AS Date), CAST(N'2023-01-15T13:07:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+73319182434', 2978, 133653, CAST(N'1975-04-12' AS Date), CAST(N'2023-01-16T13:07:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+74932193942', 7512, 141956, CAST(N'1975-12-23' AS Date), CAST(N'2023-01-17T13:07:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+74074855030', 5046, 158433, CAST(N'2000-01-22' AS Date), CAST(N'2023-01-18T13:07:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+79194782497', 2460, 169505, CAST(N'1983-10-03' AS Date), CAST(N'2023-01-19T13:07:00.000' AS DateTime), 1, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+74828029580', 3412, 174593, CAST(N'1998-03-03' AS Date), CAST(N'2023-01-20T13:07:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+74559446449', 4950, 183034, CAST(N'1993-06-08' AS Date), CAST(N'2023-01-21T13:07:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+77103882563', 5829, 219464, CAST(N'1980-09-23' AS Date), CAST(N'2023-01-22T13:07:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+77594523846', 6443, 208059, CAST(N'1991-03-13' AS Date), CAST(N'2023-01-23T13:07:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+76878011332', 7079, 213265, CAST(N'1998-04-14' AS Date), CAST(N'2023-01-24T13:07:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+74257832253', 8207, 522702, CAST(N'1980-04-16' AS Date), CAST(N'2023-01-25T13:07:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+78894494391', 9307, 232158, CAST(N'1993-07-23' AS Date), CAST(N'2023-01-26T13:07:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+78253018250', 1357, 242839, CAST(N'1990-06-01' AS Date), CAST(N'2023-01-27T13:07:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+73973342086', 1167, 256636, CAST(N'1987-12-21' AS Date), CAST(N'2023-01-28T13:07:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+72415703040', 1768, 266986, CAST(N'1981-10-22' AS Date), CAST(N'2023-01-29T13:07:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+77134628265', 1710, 427875, CAST(N'1976-12-22' AS Date), CAST(N'2023-01-30T13:07:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+78548222331', 1806, 289145, CAST(N'1973-06-14' AS Date), CAST(N'2023-01-31T13:07:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Emp] ([Id], [RoleNameId], [LastName], [FirstName], [Patronymic], [Email], [Login], [Password], [Phone], [SeriaOfPassport], [NumberOfPassport], [DateOfBirth], [LastEnter], [EnterTypeId], [GenderId]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+74397136117', 1587, 291249, CAST(N'1987-02-05' AS Date), CAST(N'2023-02-01T13:07:00.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Emp] OFF
GO
SET IDENTITY_INSERT [dbo].[Enter] ON 

INSERT [dbo].[Enter] ([Id], [Enter]) VALUES (1, N'Неуспешно')
INSERT [dbo].[Enter] ([Id], [Enter]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[Enter] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (1, N'ж')
INSERT [dbo].[Gender] ([Id], [Gender]) VALUES (2, N'м')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([Id], [Role]) VALUES (2, N'Исполнитель')
INSERT [dbo].[Role] ([Id], [Role]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Emp]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Enter] FOREIGN KEY([EnterTypeId])
REFERENCES [dbo].[Enter] ([Id])
GO
ALTER TABLE [dbo].[Emp] CHECK CONSTRAINT [FK_Emp_Enter]
GO
ALTER TABLE [dbo].[Emp]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Emp] CHECK CONSTRAINT [FK_Emp_Gender]
GO
ALTER TABLE [dbo].[Emp]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Role] FOREIGN KEY([RoleNameId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Emp] CHECK CONSTRAINT [FK_Emp_Role]
GO
