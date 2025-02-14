USE [master]
GO
/****** Object:  Database [Register]    Script Date: 3/21/2024 12:05:03 AM ******/
CREATE DATABASE [Register]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Register', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Register.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Register_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Register_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Register] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Register].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Register] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Register] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Register] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Register] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Register] SET ARITHABORT OFF 
GO
ALTER DATABASE [Register] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Register] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Register] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Register] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Register] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Register] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Register] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Register] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Register] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Register] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Register] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Register] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Register] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Register] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Register] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Register] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Register] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Register] SET RECOVERY FULL 
GO
ALTER DATABASE [Register] SET  MULTI_USER 
GO
ALTER DATABASE [Register] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Register] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Register] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Register] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Register] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Register] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Register', N'ON'
GO
ALTER DATABASE [Register] SET QUERY_STORE = ON
GO
ALTER DATABASE [Register] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Register]
GO
/****** Object:  Table [dbo].[addproduct]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addproduct](
	[pro_id] [int] IDENTITY(1,1) NOT NULL,
	[pro_name] [varchar](50) NULL,
	[pro_catg] [varchar](100) NULL,
	[pro_mrp] [money] NULL,
	[pro_price] [money] NULL,
	[pro_desc] [varchar](max) NULL,
	[pro_image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[Email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Role] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[confirmpassword] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCart]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCart](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[proid] [int] NULL,
	[proprice] [money] NULL,
	[userid] [varchar](50) NULL,
	[dateNdtime] [varchar](50) NULL,
	[is_active] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_addproduct]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ankan>
-- Create date: <23/01/2024,,>
-- Description:	<Add product ,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_addproduct] 

@pro_name varchar(100),
@pro_cate varchar(100),
@pro_mrp money,
@pro_price money,
@pro_decs varchar(max),
@pro_img varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
	insert into addproduct("pro_name","pro_catg","pro_mrp","pro_price","pro_desc","pro_image")values(@pro_name,@pro_cate,@pro_mrp,@pro_price,@pro_decs,@pro_img);
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetProductbyId]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ankan>
-- Create date: <23/01/2024,,>
-- Description:	<Add product ,,>
-- =============================================
create PROCEDURE [dbo].[usp_GetProductbyId] 

@proId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
 select * from addproduct where pro_id=@proId; 
   
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ankan>
-- Create date: <21/01/2024>
-- Description:	<This is a login Stored proceders>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Login]
(
@EmailId varchar(100), 
@Pass varchar(100)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Role from login where Email=@Emailid and password=@Pass;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Register]    Script Date: 3/21/2024 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ankan mondal>
-- Create date: <21/01/2-24>
-- Description:	<This is redister stored procedure>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Register] 
(
@Fname varchar(100), 
@Pass varchar(100), 
@Cpass varchar(100), 
@EmailId varchar(100), 
@Mobile bigint,
@Role varchar(100)="Customer"
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
	if exists(select 1 from login where Email=@EmailId)
	Begin
	select 2;
	end
	else
	begin
	insert into Register([Name],[password],[confirmpassword],[Email],[Mobile]) values(@Fname, @Pass, @Cpass, @EmailId, @Mobile);
	insert into login([Email],[password],[Role]) values( @EmailId, @Pass, @Role);
	select 1;
	end

END
GO
USE [master]
GO
ALTER DATABASE [Register] SET  READ_WRITE 
GO
