CREATE TABLE Users
(
	Id int identity primary key,
	Username nvarchar(50),
	Password nvarchar(50),
	Email nvarchar(50),
	Timestamp DATETIME,
	[Authorization] int,
	UserType nvarchar(50)
)

CREATE TABLE Files
(
	Id int identity primary key,
	Data varbinary(MAX),
	ContentType nvarchar(50)
)

CREATE TABLE Applications
(
	Id int identity primary key,
	UserId int UNIQUE FOREIGN KEY REFERENCES Users(Id),
	ResumeId int FOREIGN KEY REFERENCES Files(Id),
	Salary int,
	FirstName nvarchar(50),
	LastName nvarchar(50),
	Gender nvarchar(10),
	DateApplied DATETIME,
	Job nvarchar(50),
	Address nvarchar(50),
	City nvarchar(50),
	State nvarchar(20),
	Zip int,	
)


INSERT INTO Users (username, password, usertype, timestamp) VALUES ('test','test', 'applicant', CURRENT_TIMESTAMP)
INSERT INTO Users (username, password, usertype, timestamp) VALUES ('arctrade','arctrade', 'manager', CURRENT_TIMESTAMP)
INSERT INTO Files ([data]) VALUES (0x)
INSERT INTO Applications 
	(userid, dateapplied, resumeid, salary, firstname, lastname, gender, job, address, city, state, zip) 
	VALUES 
	(1, CURRENT_TIMESTAMP, 1, 40000, 'andres','castro','male','software engineer','4145 porte de merano','san diego','ca','92122')





select * from users
select * from applications
select * from files 


