USE [RoyalRoute]
GO
/****** Object:  StoredProcedure [dbo].[Booking_approve]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Booking_approve]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update Booking set status='A' where Book_id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[BookingInsert]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BookingInsert]
(

@User_id as int,
@Hotel_id as int,
@Package_id as int,
@Source as varchar(50),
@Date as DateTime,
@No_Persons as int,
@Room_type as varchar(50)


)
as
begin
begin transaction
declare @result as varchar(30), @exist as int,@count as int

begin
set @count=(select count (*) from Booking where User_id=@User_id and Package_id=@Package_id and status ='A')
if(@count=0)
begin
insert into Booking([User_id],[Hotel_id],[Package_id],[Source],[Date],[No_Persons],[Room_type], [Status])
 values                (@User_id,@Hotel_id,@Package_id,@Source,@Date,@No_Persons,@Room_type,'P')
 end
 else
 begin
 set @result='already exist'
 commit transaction
select @result
 end
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result

end

GO
/****** Object:  StoredProcedure [dbo].[ContactInsert]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ContactInsert]
(
@name as varchar(50),
@email as varchar(50),
@phone as varchar(50),
@subject as varchar(50),
@Msg as varchar(50),
@date as DateTime

)
as
begin
begin transaction
declare @result as varchar(30), @exist as int

begin
insert into Contact([name],[email],[phone], [subject],[message],[date],[status])
 values                (@name,@email,@phone,@subject,@Msg,@date,'A')
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[Hotel_delete]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Hotel_delete]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update Hotels set status='D' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[HotelInsert]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[HotelInsert]
(
@name as varchar(50),
@place as varchar(50),
@address as varchar(50),
@rating as float,
@image as varchar(50),
@contact as varchar(50)

)
as
begin
begin transaction
declare @result as varchar(30), @exist as int

begin
insert into Hotels([name],[place],[address],[rating],[image],[contact],[status])
 values                (@name,@place,@address,@rating,@image,@contact,'A')
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[HotelUpdate]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[HotelUpdate]
(
@id as int,
@name as varchar(50),
@place as varchar(50),
@address as varchar(50),
@rating as float,
@image as varchar(50),
@contact as varchar(50)

)
as
begin
begin transaction
declare @result as varchar(30)


update Hotels set [name]=@name,[place]=@place,[address]=@address,[rating]=@rating,[image]=@image,[contact]=@contact where id=@id 
                             
if(@@ERROR>0)
begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end

commit transaction
select @result
end

GO
/****** Object:  StoredProcedure [dbo].[logincheck]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[logincheck]
(
@email as varchar(50),
@password as varchar(50)
)
as
begin
begin transaction
declare @result as varchar(30), @exist as int,@id as int,@role as varchar(30)

set @exist = (select count (*) from users where email= @email and status ='A' and password=@password)

if (@exist>0)
begin 
set @role=(select role from users where email=@email)
set @id=(select id from users where email=@email)
set @result ='Success,'+convert (varchar(20),@id)+','+@role
end
else
begin
set @id=0
set @result ='Failed,'+convert (varchar(20),@id)
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[Msg_delete]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Msg_delete]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update Contact set status='D' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[pakage_delete]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pakage_delete]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update pakages set status='D' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[pakage_edit]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pakage_edit]
(
@id as int,
@place as varchar(50),
@rate as int,
@days as int,
@nights as int,
@image as varchar(50)
)
as
begin
begin transaction
declare @result as varchar(30)


update pakages set place=@place,rate=@rate,days=@days,nights=@nights,image=@image where id=@id 
                             
if(@@ERROR>0)
begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end

commit transaction
select @result
end

GO
/****** Object:  StoredProcedure [dbo].[PakageInsert]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PakageInsert]
(
@place as varchar(50),
@rate as int,
@days as int,
@nights as int,
@image as varchar(50)

)
as
begin
begin transaction
declare @result as varchar(30), @exist as int,@count as int

begin

set @count=(select count (*) from pakages where place=@place and rate=@rate and days=@days and nights=@nights and status ='A')
if(@count=0)
begin
insert into pakages([place],[rate],[days],[nights],[image],[status])
 values                (@place,@rate,@days,@nights,@image,'A')

 end
 else
 begin
 set @result='already exist'
 commit transaction
select @result
 end
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[selectallbookings]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectallbookings]
as
begin


SELECT Booking.Book_id, Booking.No_Persons, Booking.Source, Booking.Date ,pakages.place,users.name,Hotels.name as Hname 
FROM Booking
INNER JOIN pakages ON pakages.id = Booking.Package_id
INNER JOIN users ON users.id = Booking.User_id
INNER JOIN Hotels ON Hotels.id = Booking.Hotel_id
where Booking.Status='P'

end
GO
/****** Object:  StoredProcedure [dbo].[selectBookingById]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectBookingById]
(
@id as int
)


as
begin


SELECT Booking.Book_id, Booking.No_Persons, Booking.Source,Booking.Room_type,Booking.Status, Booking.Date ,pakages.place,Hotels.name as Hname 
FROM Booking
INNER JOIN pakages ON pakages.id = Booking.Package_id
INNER JOIN users ON users.id = Booking.User_id
INNER JOIN Hotels ON Hotels.id = Booking.Hotel_id
where Booking.Status!='D' and users.id=@id

end
GO
/****** Object:  StoredProcedure [dbo].[selectfeedbacks]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectfeedbacks]
as
begin
select [id],[name],[email],[phone],[subject],[message],[date] from Contact where status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selecthotel]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selecthotel]
as
begin
select [id],[name],[place],[address],[rating],[image], [contact] from Hotels where status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selecthotelbyid]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selecthotelbyid]
(@id as int)
as
begin
select [name],[place],[address],[rating], [image],[contact] from [dbo].[Hotels] where id=@id and status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selecthotelbyplace]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selecthotelbyplace]
(@place as varchar(50))
as
begin
select [id],[name],[address],[rating], [image],[contact] from [dbo].[Hotels] where place=@place and status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selectpackagebyid]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectpackagebyid]
(@id as int)
as
begin
select  [place],[rate],[days],[nights],[image] from [dbo].[pakages] where id=@id and status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selectpakages]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectpakages]
as
begin
select id,place,rate,days,nights,image from pakages where status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selectrequests]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectrequests]
as
begin
select id,name,district,email,phone,image,date from users where status='P'
end
GO
/****** Object:  StoredProcedure [dbo].[selectuser]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectuser]
as
begin
select id,name,district,email,phone,image,date from users where status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selectuserbyid]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectuserbyid]
(@id as int)
as
begin
select name,district,email,phone,image,password  from users where id=@id and status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[user_approve]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[user_approve]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update users set status='A' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[user_delete]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[user_delete]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update users set status='D' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[UserInsert]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UserInsert]
(
@name as varchar(50),
@district as varchar(50),
@email as varchar(50),
@image as varchar(50),
@phone as varchar(50),
@password as varchar(50),
@date as DateTime

)
as
begin
begin transaction
declare @result as varchar(30), @exist as int
set @exist = (select count (*) from users where name= @name and status ='A')

if (@exist>0)
begin 
set @result ='Already Exist'
end
else
begin
insert into users([name],[district],[email],[phone],[image],[password],[status],[date],[role])
 values                (@name,@district,@email,@phone,@image,@password,'P',@date,'user')
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[UserUpdate]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UserUpdate]
(
@id as int,
@name as varchar(50),
@district as varchar(50),
@email as varchar(50),
@image as varchar(50),
@phone as varchar(50),
@password as varchar(50)


)
as
begin
begin transaction
declare @result as varchar(30)
begin


update users set name=@name, district=@district , email=@email ,image=@image,phone=@phone,password=@password where id=@id 
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[Book_id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[Hotel_id] [int] NULL,
	[Package_id] [int] NULL,
	[Source] [varchar](50) NULL,
	[No_Persons] [int] NULL,
	[Room_type] [varchar](50) NULL,
	[Date] [datetime] NULL,
	[Status] [char](10) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[subject] [varchar](50) NULL,
	[message] [varchar](50) NULL,
	[date] [datetime] NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hotels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[place] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[rating] [varchar](50) NULL,
	[image] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[status] [char](10) NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pakages]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pakages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[place] [varchar](50) NULL,
	[rate] [int] NULL,
	[days] [int] NULL,
	[nights] [int] NULL,
	[image] [varchar](50) NULL,
	[status] [char](10) NULL,
 CONSTRAINT [PK_pakages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/2/2021 2:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[image] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[status] [char](10) NULL,
	[date] [datetime] NULL,
	[role] [varchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([Book_id], [User_id], [Hotel_id], [Package_id], [Source], [No_Persons], [Room_type], [Date], [Status]) VALUES (5, 2, 1, 1, N'', 1, N'Single Room', CAST(0x0000ACE000000000 AS DateTime), N'P         ')
INSERT [dbo].[Booking] ([Book_id], [User_id], [Hotel_id], [Package_id], [Source], [No_Persons], [Room_type], [Date], [Status]) VALUES (6, 2, 1, 4, N'london', 4, N'Single Room', CAST(0x0000ACE000000000 AS DateTime), N'A         ')
INSERT [dbo].[Booking] ([Book_id], [User_id], [Hotel_id], [Package_id], [Source], [No_Persons], [Room_type], [Date], [Status]) VALUES (7, 2, 1, 4, N'london', 4, N'Double Room', CAST(0x0000923D00000000 AS DateTime), N'A         ')
INSERT [dbo].[Booking] ([Book_id], [User_id], [Hotel_id], [Package_id], [Source], [No_Persons], [Room_type], [Date], [Status]) VALUES (8, 2, 2, 1, N'Germany', 3, N'Single Room', CAST(0x0000AD3D00000000 AS DateTime), N'P         ')
INSERT [dbo].[Booking] ([Book_id], [User_id], [Hotel_id], [Package_id], [Source], [No_Persons], [Room_type], [Date], [Status]) VALUES (1008, 2, 4, 2005, N'india', 5, N'Suit Room', CAST(0x0000AD3E00000000 AS DateTime), N'P         ')
INSERT [dbo].[Booking] ([Book_id], [User_id], [Hotel_id], [Package_id], [Source], [No_Persons], [Room_type], [Date], [Status]) VALUES (1009, 2, 4, 2005, N'india', 4, N'Single Room', CAST(0x0000AD3E00000000 AS DateTime), N'P         ')
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [name], [email], [phone], [subject], [message], [date], [status]) VALUES (1, N'ponnu', N'abcd2@gmail.com', N'8779879789', N'ertr', N'gghghdfhdfhdfhdfgdgddgfgdssffac', CAST(0x0000ACFC01010927 AS DateTime), N'D')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([id], [name], [place], [address], [rating], [image], [contact], [status]) VALUES (1, N'ROYAL PALACE', N'india', N'DELHI', N'4.5', N'~/image/5995.jpg', N'965412368', N'A         ')
INSERT [dbo].[Hotels] ([id], [name], [place], [address], [rating], [image], [contact], [status]) VALUES (2, N'ROYAL CASINO', N'paris', N'2nd Street ,central city', N'4.3', N'~/image/9940.jpg', N'452665688', N'A         ')
INSERT [dbo].[Hotels] ([id], [name], [place], [address], [rating], [image], [contact], [status]) VALUES (3, N'TIAMO', N'london', N'2nd Street ,central city', N'5', N'~/image/2441.jpg', N'9874546123', N'A         ')
INSERT [dbo].[Hotels] ([id], [name], [place], [address], [rating], [image], [contact], [status]) VALUES (4, N'Star Plaza', N'kerala', N'Alleppey', N'5', N'~/image/3754.jpg', N'9639639522', N'A         ')
INSERT [dbo].[Hotels] ([id], [name], [place], [address], [rating], [image], [contact], [status]) VALUES (5, N'Dream Land', N'kerala', N'Alleppey', N'4.5', N'~/image/6462.jpg', N'9874563210', N'A         ')
SET IDENTITY_INSERT [dbo].[Hotels] OFF
SET IDENTITY_INSERT [dbo].[pakages] ON 

INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (1, N'paris', 200000, 10, 11, N'~/image/0480.jpg', N'A         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (2, N'london', 203000, 10, 11, N'~/image/9614.jpg', N'D         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (3, N'london', 203000, 10, 11, N'~/image/3170.jpg', N'A         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (4, N'india', 50000, 10, 9, N'~/image/5283.jpg', N'A         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (5, N'japan', 200200, 10, 9, N'~/image/0882.jpg', N'D         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (1005, N'Germany', 200000, 10, 11, N'~/image/5328.jpg', N'A         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (1006, N'Germany', 200000, 10, 11, N'~/image/7055.jpg', N'D         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (1007, N'Germany', 200000, 10, 11, N'~/image/8510.jpg', N'D         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (1008, N'Germany', 200000, 10, 11, N'~/image/3132.jpg', N'D         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (1009, N'Europe', 203000, 10, 11, N'~/image/0410.jpg', N'A         ')
INSERT [dbo].[pakages] ([id], [place], [rate], [days], [nights], [image], [status]) VALUES (2005, N'kerala', 50001, 10, 9, N'~/image/4608.jpg', N'A         ')
SET IDENTITY_INSERT [dbo].[pakages] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [district], [email], [phone], [image], [password], [status], [date], [role]) VALUES (1, N'aadhi', N'kochi', N'abcd1@gmail.com', N'8779879789', N'~/image/6710.jpg', N'12345', N'A         ', CAST(0x0000ACF300FB8E86 AS DateTime), N'admin')
INSERT [dbo].[users] ([id], [name], [district], [email], [phone], [image], [password], [status], [date], [role]) VALUES (2, N'aswathi', N'thrissur', N'abcd2@gmail.com', N'96789678678', N'~/image/9085.jpg', N'12345', N'A         ', CAST(0x0000ACF300FB8E86 AS DateTime), N'user')
INSERT [dbo].[users] ([id], [name], [district], [email], [phone], [image], [password], [status], [date], [role]) VALUES (3, N'aadhi', N'thrissur', N'abcd3@gmail.com', N'8779879789', N'~/image/5129.jpg', N'222', N'A         ', CAST(0x0000ACF300FB8E86 AS DateTime), N'user')
INSERT [dbo].[users] ([id], [name], [district], [email], [phone], [image], [password], [status], [date], [role]) VALUES (4, N'ponnu', N'kochi', N'ponnu@gmail.com', N'8779879789', NULL, N'12345', N'A         ', CAST(0x0000ACF300FB8E86 AS DateTime), N'user')
INSERT [dbo].[users] ([id], [name], [district], [email], [phone], [image], [password], [status], [date], [role]) VALUES (6, N'pravi', N'thrissur', N'pravi@gmail.com', N'8779879789', N'~/image/5129.jpg', N'12345', N'P         ', CAST(0x0000ACF300FB8E86 AS DateTime), N'user')
INSERT [dbo].[users] ([id], [name], [district], [email], [phone], [image], [password], [status], [date], [role]) VALUES (7, N'ashik', N'thrissur', N'ashik@gmail.com', N'8779879789', N'~/image/5948.jpg', N'12345', N'P         ', CAST(0x0000ACFD0103CF9A AS DateTime), N'user')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Hotels] FOREIGN KEY([Hotel_id])
REFERENCES [dbo].[Hotels] ([id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Hotels]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_pakages] FOREIGN KEY([Package_id])
REFERENCES [dbo].[pakages] ([id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_pakages]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_users] FOREIGN KEY([User_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_users]
GO
