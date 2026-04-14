
create Database IMS

USE IMS

-------TABLE 1 tblCourse------

Create table tblcourse
(
ID int primary key,
Course char(50),
Fee money
)

------------------question 2-------------
insert into tblCourse (ID,Course,Fee)
values 
	(1,'payroll',5000),
	(2,'Recuriment',7000),
	(3,'GST',8000),
	(4,'Tally',5000),
	(5,'Excel',7000),
	(6,'VBA',8000),
	(7,'SQL/Access',5000),
	(8,'Python',7000),
	(9,'SAS',5000),
	(10,'Tablue',8000),
	(11,'PowerBI',8000),
	(12,'R',7000)

------------question 8----------------------
update tblcourse set fee = 7000
where course = 'Tablue'

update tblcourse set fee = 10000
where course = 'R'

----------------question 7---------------------
update tblcourse set fee = 7000
where course = 'PowerBI'

update tblcourse set fee = 10000
where course = 'Python'


-------TABLE 2 tblCenter-------

Create table tblCenter
(
ID int primary key,
center char(50)
)

Alter table tblCenter
Alter Column center char (50) not null
 
---------------question 4------------
Update tblCenter set center = 'East Delhi'
Where ID = 101

Update tblCenter set center = 'Noida'
Where ID = 102

Update tblCenter set center = 'Gurugram'
Where ID = 103

Update tblCenter set center = 'Laxmi Nagar'
Where center ='East Delhi'

Update tblCenter set center = 'Noida Sec-2'
Where center = 'Noida'

Update tblCenter set center = 'Gurugram Sec-16'
Where center = 'Gurugram'

alter table tblCenter 
add Online char(50)

------------question 3-------------
insert into tblCenter(ID,center)
Values
	(101,'C1'),
	(102,'C2'),
	(103,'C3')

--------------------question 10--------------
insert into tblCenter(ID,center)values(104,'C4')

-------TABLE 2 tblGender-------

Create table tblGender
(
ID int primary key,
Gender char(50)
)
-------question 5--------------------
insert into tblgender(ID,Gender)
Values 
	(201,'G1'),
	(202,'G2'),
	(203,'G3')

update tblGender set Gender = 'Male'
where ID  =  201

update tblGender set Gender = 'Female'
where ID  =  202

update tblGender set Gender = 'Unknown'
where ID  =  203

-------TABLE 2 tblStudent-------

Create table tblStudent
(
ID int Primary Key not null,
Name char(50) not null,
Age int,
GenderID int,
Email varchar(100),
City char(50),
JobStatus char(50),
CenterID int foreign key references tblCenter(ID)
)

-----------------question 1-----------------

insert into tblStudent(ID,Name,Age,GenderID,Email,City,JobStatus,CenterID)
Values 
	(1001,'Atul Gupta',23,201,'atulgpt@gmail.com','East Delhi','Fresher',101),
	(1002,'Vaibhav Rastogi',21,201,'vaibhav@gmail.com','Noida','Non-Function',102),
	(1003,'Abhishek Singh',22,201,'abhishek@gmail.com','Delhi','Employed',103),
	(1004,'Anchal Srivastava',23,202,'anchal@gmail.com','Gurugram','Fresher',102),
	(1005,'Ananya Gupta',20,202,'ananya@gmail.com','Delhi','Employed',101),
	(1006,'Harshvardhan',23,201,'harsh@gmail.com','Gurugram','Non-Function',102),
	(1007,'Ayush Kant',20,203,'ayush@gmail.com','Noida','Fresher',103),
	(1008,'Ayush Singh',22,203,'ayush21@gmail.com','East-Delhi','Non-Function',102),
	(1009,'Ayushi Mishra',22,202,'ayushi@gmail.com','Noida','Employed',101),
	(1010,'Prakhar Gupta',21,201,'prakhar@gmail.com','Gurugram','Non-Function',103),
	(1011,'Adi singh',23,201,'adi@gmail.com','East Delhi','Fresher',103),
	(1012,'Raj Rastogi',21,201,'raj@gmail.com','Noida','Non-Function',102),
	(1013,'Raghav Singh',22,201,'raghav@gmail.com','Delhi','Employed',103),
	(1014,'Rahul Srivastava',23,201,'rahul@gmail.com','Gurugram','Fresher',102),
	(1015,'Mahi Gupta',20,202,'mahi@gmail.com','Delhi','Employed',101),
	(1016,'Harsh Sinha',23,201,'harshsinha@gmail.com','Gurugram','Non-Function',102),
	(1017,'Mohan Kant',20,203,'mohan@gmail.com','Noida','Fresher',103),
	(1018,'Nirmal Singh',22,201,'nirmal@gmail.com','East-Delhi','Non-Function',102),
	(1019,'Ayyer Mishra',22,201,'ayyer@gmail.com','Noida','Employed',101),
	(1020,'Prakhar sahu',21,203,'prasahu@gmail.com','Gurugram','Non-Function',103),
	(1021,'Raja',23,201,'raja@gmail.com','East Delhi','Fresher',101),
	(1022,'Vashi Rastogi',21,201,'vaish@gmail.com','Noida','Non-Function',102),
	(1023,'Abhi Sinha',22,201,'abhishek@gmail.com','Delhi','Employed',103),
	(1024,'Anchal Singh',23,202,'anch@gmail.com','Gurugram','Fresher',102),
	(1025,'Ananya Yadav',20,202,'anyad@gmail.com','Delhi','Employed',101),
	(1026,'vardhan',23,201,'vardhan@gmail.com','Gurugram','Non-Function',102),
	(1027,'Ayush Mittal',20,203,'ayushm@gmail.com','Noida','Fresher',103),
	(1028,'Ayush Pal',22,203,'ayushpal@gmail.com','East-Delhi','Non-Function',102),
	(1029,'Ayushi Yadav',22,202,'ayushiy@gmail.com','Noida','Employed',101),
	(1030,'shahy Gupta',21,201,'sg@gmail.com','Gurugram','Non-Function',103),
	(1031,'Atul Kashyap',23,201,'atulk@gmail.com','East Delhi','Fresher',101),
	(1032,'Rahul Umar',21,201,'Rahumar@gmail.com','Noida','Non-Function',102),
	(1033,'Abhishek Mittal',22,201,'abhishekm@gmail.com','Delhi','Employed',103),
	(1034,'ankita',23,202,'ankita@gmail.com','Gurugram','Fresher',102),
	(1035,'Anya',20,202,'anya@gmail.com','Delhi','Employed',101),
	(1036,'Ronoroa',23,201,'ronoroa@gmail.com','Gurugram','Non-Function',102),
	(1037,'zoro',20,203,'zoro@gmail.com','Noida','Fresher',103),
	(1038,'luffy',22,203,'luffy@gmail.com','East-Delhi','Non-Function',102),
	(1039,'Nami',22,202,'Nami@gmail.com','Noida','Employed',101),
	(1040,'Ussop',21,201,'Ussop@gmail.com','Gurugram','Non-Function',103),
	(1041,'Sanji',23,201,'Sanji@gmail.com','East Delhi','Fresher',101),
	(1042,'Kaido',21,201,'Kaido@gmail.com','Noida','Non-Function',102),
	(1043,'John',22,201,'John@gmail.com','Delhi','Employed',103),
	(1044,'Sashi',23,202,'Sashi@gmail.com','Gurugram','Fresher',102),
	(1045,'Sakura',20,202,'Sakura@gmail.com','Delhi','Employed',101),
	(1046,'Uzumaki',23,201,'uzumaki@gmail.com','Gurugram','Non-Function',102),
	(1047,'Kakashi',20,203,'kakashi@gmail.com','Noida','Fresher',103),
	(1048,'Oggy',22,203,'oggy@gmail.com','East-Delhi','Non-Function',102),
	(1049,'Jackie',22,202,'jack@gmail.com','Noida','Employed',101),
	(1050,'Johnny',21,201,'johnny@gmail.com','Gurugram','Non-Function',103),
	(1051,'Saanj',23,201,'sanj@gmail.com','East Delhi','Fresher',101),
	(1052,'Sanjay',21,201,'sanjay@gmail.com','Noida','Non-Function',102),
	(1053,'Ranks',22,201,'ranks@gmail.com','Delhi','Employed',103),
	(1054,'Meg',23,202,'meg@gmail.com','Gurugram','Fresher',102),
	(1055,'Simone',20,202,'simone@gmail.com','Delhi','Employed',101),
	(1056,'Sundar',23,201,'sundar@gmail.com','Gurugram','Non-Function',102),
	(1057,'Pichai',20,203,'pichai@gmail.com','Noida','Fresher',103),
	(1058,'Monica',22,203,'monica@gmail.com','East-Delhi','Non-Function',102),
	(1059,'simran',22,202,'simmi@gmail.com','Noida','Employed',101),
	(1060,'Ami',21,201,'ami@gmail.com','Gurugram','Non-Function',103),
	(1061,'Augustus',23,201,'gus@gmail.com','East Delhi','Fresher',101),
	(1062,'Wates',21,201,'Wates@gmail.com','Noida','Non-Function',102),
	(1063,'Mathew',22,201,'mat@gmail.com','Delhi','Employed',103),
	(1064,'Rachel',23,202,'rach@gmail.com','Gurugram','Fresher',102),
	(1065,'Geller',20,202,'Geller@gmail.com','Delhi','Employed',101),
	(1066,'Ross',23,201,'ross@gmail.com','Gurugram','Non-Function',102),
	(1067,'Ayush mishra',20,203,'ayushmis@gmail.com','Noida','Fresher',103),
	(1068,'Momenta',22,203,'Momenta@gmail.com','East-Delhi','Non-Function',102),
	(1069,'Quagie',22,202,'quag@gmail.com','Noida','Employed',101),
	(1070,'Peter',21,201,'pete@gmail.com','Gurugram','Non-Function',103),
	(1071,'Stewie',23,201,'stew@gmail.com','East Delhi','Fresher',101),
	(1072,'Sundriyal',21,201,'sundriyal@gmail.com','Noida','Non-Function',102),
	(1073,'Bajirao',22,201,'Baji@gmail.com','Delhi','Employed',103),
	(1074,'Saumya',23,202,'saum@gmail.com','Gurugram','Fresher',102),
	(1075,'Medhavi',20,202,'medhavi@gmail.com','Delhi','Employed',101),
	(1076,'Madhya',23,201,'madhya@gmail.com','Gurugram','Non-Function',102),
	(1077,'Medha',20,203,'medha@gmail.com','Noida','Fresher',103),
	(1078,'Joey',22,203,'joey@gmail.com','East-Delhi','Non-Function',102),
	(1079,'Phoebe',22,202,'pheebs@gmail.com','Noida','Employed',101),
	(1080,'Samrat',21,201,'Samy@gmail.com','Gurugram','Non-Function',103),
	(1081,'shiv',23,201,'shiv@gmail.com','East Delhi','Fresher',101),
	(1082,'Raman',21,201,'raman@gmail.com','Noida','Non-Function',102),
	(1083,'Ankur',22,201,'ankur@gmail.com','Delhi','Employed',103),
	(1084,'Aniket',23,202,'aniket@gmail.com','Gurugram','Fresher',102),
	(1085,'Ramashree',20,202,'rama@gmail.com','Delhi','Employed',101),
	(1086,'Shiva',23,201,'shiva@gmail.com','Gurugram','Non-Function',102),
	(1087,'Amber',20,203,'amber@gmail.com','Noida','Fresher',103),
	(1088,'Depp',22,203,'dep@gmail.com','East-Delhi','Non-Function',102),
	(1089,'Mia',22,202,',mia@gmail.com','Noida','Employed',101),
	(1090,'Pranav',21,201,'pranav@gmail.com','Gurugram','Non-Function',103),
	(1091,'Niks',23,201,'niks@gmail.com','East Delhi','Fresher',101),
	(1092,'Indis',21,201,'indis@gmail.com','Noida','Non-Function',102),
	(1093,'Nick',22,201,'nick@gmail.com','Delhi','Employed',103),
	(1094,'Ambuji',23,202,'ambuj@gmail.com','Gurugram','Fresher',102),
	(1095,'Malkova',20,202,'malk@gmail.com','Delhi','Employed',101),
	(1096,'Chotu',23,201,'chotu@gmail.com','Gurugram','Non-Function',102),
	(1097,'Jahnvi',20,203,'jahnvi@gmail.com','Noida','Fresher',103),
	(1098,'Aditya',22,203,'aditya@gmail.com','East-Delhi','Non-Function',102),
	(1099,'Ayushi Mittal',22,202,'mits@gmail.com','Noida','Employed',101),
	(1100,'Prakhar Yagyaseni',21,201,'prakgpt@gmail.com','Gurugram','Non-Function',103)

	---------question 9-------------
alter table tblStudent
drop constraint UQ_tblStudent_email unique from email

update tblStudent
set Email=' '
where id between 10 and 15

-------TABLE 2 tblApply-------


create table tblApply
(
AppID int primary key,
StudID int foreign key references tblStudent(ID),
CourseID int foreign key references tblCourse(ID),
CenterID int foreign key references tblCenter(ID)
)

--------------question 6------------------------
insert into tblApply(AppID,StudID,CourseID,CenterID)
Values 
	(301,1001,1,101),
	(302,1002,2,102),
	(303,1003,3,103),
	(304,1004,4,103),
	(305,1005,1,102),
	(306,1006,7,102),
	(307,1007,6,101),
	(308,1008,2,103),
	(309,1009,4,101),
	(310,1010,3,102),
	(311,1011,7,103),
	(312,1012,5,101),
	(313,1013,7,102),
	(314,1014,2,102),
	(315,1015,1,101),
	(316,1016,2,102),
	(317,1017,3,103),
	(318,1018,4,103),
	(319,1019,1,102),
	(320,1020,7,102),
	(321,1021,6,101),
	(322,1022,2,103),
	(323,1023,4,101),
	(324,1024,3,102),
	(325,1025,7,103),
	(326,1026,5,101),
	(327,1027,7,102),
	(328,1028,2,102),
	(329,1029,7,102),
	(330,1030,2,102),
	(331,1031,1,101),
	(332,1032,2,102),
	(333,1033,3,103),
	(334,1034,4,103),
	(335,1035,1,102),
	(336,1036,7,102),
	(337,1037,6,101),
	(338,1038,2,103),
	(339,1039,4,101),
	(340,1040,3,102),
	(341,1041,7,103),
	(342,1042,5,101),
	(343,1043,7,102),
	(344,1044,2,102),
	(345,1045,1,101),
	(346,1046,2,102),
	(347,1047,3,103),
	(348,1048,4,103),
	(349,1049,1,102),
	(350,1050,7,102),
	(351,1051,6,101),
	(352,1052,2,103),
	(353,1053,4,101),
	(354,1054,3,102),
	(355,1055,7,103),
	(356,1056,5,101),
	(357,1057,7,102),
	(358,1058,2,102),
	(359,1059,7,102),
	(360,1060,2,102),
	(361,1061,6,101),
	(362,1062,2,103),
	(363,1063,4,101),
	(364,1064,3,102),
	(365,1065,7,103),
	(366,1066,5,101),
	(367,1067,7,102),
	(368,1068,2,102),
	(369,1069,7,102),
	(370,1070,2,102),
	(371,1071,1,101),
	(372,1072,2,102),
	(373,1073,3,103),
	(374,1074,4,103),
	(375,1075,1,102),
	(376,1076,7,102),
	(377,1077,6,101),
	(378,1078,2,103),
	(379,1079,4,101),
	(380,1080,3,102),
	(381,1081,7,103),
	(382,1082,5,101),
	(383,1083,7,102),
	(384,1084,2,102),
	(385,1085,1,101),
	(386,1086,2,102),
	(387,1087,3,103),
	(388,1088,4,103),
	(389,1089,1,102),
	(390,1090,7,102),
	(391,1091,6,101),
	(392,1092,2,103),
	(393,1093,4,101),
	(394,1094,3,102),
	(395,1095,7,103),
	(396,1096,5,101),
	(397,1097,7,102),
	(398,1098,2,102),
	(399,1099,7,102),
	(400,1100,2,102)


Select * from tblApply
Select * from tblStudent
Select * from tblCenter
Select * from tblCourse 
Select * from tblGender


------------------CONSTRAINTS----------------

----Question 1------

Alter table tblStudent
Add Constraint tblStudent Default 'Delhi' for City

----Question 2-------

alter table tblCourse
alter column course char(20) not null

----Question 3-------

Alter table tblApply
Drop Constraint FK__tblApply__CourseID

Alter table tblApply
Add Constraint FK_tblApply_CenterID Foreign Key (CenterID) References tblCourse(ID)

----Question 4-------

alter table tblcourse
add constraint CK_tblcour_fee check (fee>=5000)

---------Question 5	-------

alter table tblcenter
alter column center char(20) not null

---------Question 6	-------
alter table tblStudent
add constraint DF_tblStuden_CenterID default 1 for centerID



---------------------------------------Query-----------------------------
----------------Question  1---------------------
select name,Email from tblStudent where CenterID=101

----------------Question  2---------------------
select * from tblStudent where age between 20 and 30 
order by name asc

----------------Question  3---------------------
select * from tblStudent where name like '[AKNV]%'
order by name asc

----------------Question  4---------------------
Select top 2 * from  tblcourse
order by fee desc
----------------Question  5---------------------
alter table tblCenter
add Location char(20)
select * from tblCenter
update tblCenter
set Location = ' Delhi'
where ID = 101 

update tblCenter
set Location = 'Noida'
where ID = 102 

update tblCenter
set Location = 'Gurgaon'
where ID = 103 

----------------Question  6---------------------
Select * from tblCenter
select Location ,COUNT(Center) from tblCenter
group by Location
having COUNT(Center)>2

----------------Question  7---------------------
select * from tblStudent where age not in (20,25,27,28)
order by name asc0

----------------Question  8---------------------
select * from tblstudent where name like '[K,N,S]%' and Email  like '%gmail%'

----------------Question  9---------------------
select * from tblStudent where Email not like '%gmail%' and  Age>25

----------------Question  10---------------------
select * from tblStudent where city in ('delhi','noida','gurugram') and age between 25 and 40

----------------Question  11---------------------
select city, count(*) as total_students from tblstudent
group by City	

----------------Question  12---------------------
select * from tblStudent
select city,GenderID,  max(age) as Age from tblStudent
group by city,GenderID
order by age desc

----------------Question  13---------------------
select city, max(age) as Age from tblStudent where GenderID=102
group by City

----------------Question  14--------------------
select city, count(City) as city from tblStudent where jobStatus='Non-Function'
group by City
having count(city)>2


----------------Question  15---------------------
select JobStatus,city, count(*) as jobs from tblStudent
group by JobStatus,City


----------------Question  16---------------------
select city,jobStatus, min(age) as Age from tblStudent
group by City,JobStatus

select city,jobStatus, MAX(age) as Age from tblStudent
group by City,JobStatus


----------------Question  17---------------------
select jobStatus, min(age) as age from tblStudent where JobStatus='Non-Function'
group by JobStatus


----------------Question  18---------------------
select CenterID, count(name) as center_name from tblStudent
group by CenterID


----------------Question  12---------------------
select city,name from tblStudent
order by name desc

----------------Question  12---------------------
Select * from tblStudent
Where Email not like '%@%'

---------------------------------------sub query-----------------------

----------------Question  1---------------------
select name,age,City from tblStudent 
where city not in('noida','lucknow','delhi')
group by name ,age,City

----------------Question  2---------------------
select * from tblStudent
where age in(select top 2(age)  from tblStudent
order by age desc)

----------------Question  3---------------------
select * from tblStudent
where City in
(select City from tblStudent
group by city,name,id
having count(*)>5)

----------------Question  4---------------------
select * from tblStudent
where age not in(select max(age) from tblStudent)

----------------Question  5---------------------
select * from tblStudent 
where city not in ('gaziyabad','Noida')

----------------Question 6---------------------
select * from tblStudent
where CenterID=101 and city in (select city from tblStudent
group by city
having count(*)>2)

----------------Question  7---------------------
select * from tblStudent 
where age> (select avg(age) from tblStudent)

----------------Question  8---------------------
select * from tblStudent
update tblStudent set City ='Delhi'
where ID in(1005,1006,1007,1008,1009)

----------------Question  9---------------------
select * from tblStudent
where age in 
(select top 2 (age) from tblStudent 
order by age)

----------------Question  9---------------------
select * from tblStudent
where City in( select city from tblStudent where city in ('delhi','Noida'))


-----------------------------------------joins-----------------------
select * from tblCourse
select * from tblStudent
select * from tblApply
select * from tblCenter

alter table tblstudent
add CourseID int

alter table tblstudent
Drop column CourseID

Select S.Name ,C.Course from  tblCourse C
inner join tblApply A on C.ID = A.CourseID

where C.course in ('Excel','VBA')


-----------Join Query 2----------------------------

select s.Name from tblStudent s
join tblApply a on s.id = a.StuID
join tblCourse c on c.ID = a.CourseID
where c.Course in ('Excel','VBA')

-----------Join Query 3----------------------------

select CenterID , Sum(c.Fee) as [Total Fees ] from tblCourse c
join tblApply a on a.CourseID = c.id
where CenterID in (101,102)
group by CenterID

select CenterID , Sum(c.Fee) as [Total Fees ] from tblCourse c
join tblApply a on a.CourseID = c.id
---where CenterID in (101,102)
group by CenterID


-----------Join Query 4----------------------------

select * from tblCourse
select * from tblStudent
select * from tblApply
select * from tblCenter
select * from tblNewGender

select c.Center ,count(g.Gender ) as [Count] from tblCenter c
join tblStudent s on s.CenterID = c.ID
join tblNewGender g on g.id = s.GenderID
where g.gender in ('Male','Female')
group by c.Center

-----------Join Query 5----------------------------

select L.Location , Sum(c.Fee) as [Total Fees ] from tblCourse c
join tblApply a on a.CourseID = c.id
join tblCenter L on L.ID = a.CenterID
group by Location


-----------Join Query 6----------------------------

Select * from tblApply
Select * from tblCourse
Select * from tblStudent

Select S.Name , COUNT(A.CourseID) as Course 
from tblStudent S
join tblApply A 
on A.StuID= S.ID
group by S.Name
having count(A.courseid) >=2


-----------Join Query 7----------------------------

select * from tblCourse
select * from tblStudent
select * from tblApply
select * from tblCenter

select C.course , Count(A.StuID) as [Number of Students] ,sum(C.Fee) as [Total Fees ]from tblCourse C
join tblApply A on A.CourseID = C.ID
where C.Course in ('HR','SQL/Access','VBA','GST')
group by C.course

-----------Join Query 8----------------------------

select Name , Location from tblStudent
order by Location

-----------Join Query 9----------------------------

select S.Name ,C.Course ,L.Center from tblStudent S
join tblCenter L on L.ID = S.Centerid
join tblApply A on A.StuID = S.ID
join tblCourse C on C.ID = A.CourseID
where L.Location = 'Delhi'


-----------Join Query 10----------------------------

Select top 2 (L.Center),Sum(C.Fee) as [Total Collection]  from tblCenter L
join tblApply A on A.CenterID = L.ID
join tblCourse C on C.ID = A.CourseID
group by L.Center
order by Sum(C.Fee) Desc


-----------Join Query 11----------------------------

select S.Name , Count(A.courseid) as [Number of Course] from tblStudent S
join tblApply A on A.StuID = S.ID
group by S.Name
having count(A.courseid) >=2

Select S.Name from tblStudent S join tblApply A on A.StuID = S.ID
where S.ID in( select A.courseid from tblApply A
group by A.CourseID
 having count(A.courseid) >2)
 

---- -----------------Procedure------------------------
--- Ans 1

Create Proc sptblStudentGenderCenter
As 
Begin
Select S.Name , S.Age , G.Gender, C.Center
from tblStudent S
Left Join tblGender G 
on S.GenderID = G.ID
Left Join tblCenter C
on S.CenterID = C.ID
End


---- Ans 2 
select * from tblstudent
create proc sptblNameCenter
 @gender char(50),
 @center char(50)
 as
 begin
 select S.Name,G.Gender,S.Location,C.Center 
 from tblStudent S
 left join tblCenter C
 on S.centerid = C.ID
 left join tblGender G
 on S.GenderID = G.ID
 where gender = @gender and Center = @center
end
exec sptblNameCenter @gender = 'male',@center ='noida'

--Ans 3

Create Proc sptblStudentGenderCenterEmail
As 
Begin
Select S.Name , S.Age , G.Gender, C.Center,S.Email
from tblStudent S
Left Join tblGender G 
on S.GenderID = G.ID
Left Join tblCenter C
on S.CenterID = C.ID
End
exec sptblStudentGenderCenterEmail


---Ans 4
---Create Input Procedure diplay all column where GenderID =1

Select * from tblCenter
--- Ans 9 
Create Procedure sptblCenterLoc
@Center char(25),
@Location char(25)
As 
Begin
Update tblCenter Set Center = @Center 
Where Location= @Location
End

Execute sptblCenterLoc @Center='Mcleodganj' , @Location='Dharmshala'
Execute sptblCenterLoc @Center='Nadi' , @Location='Dharmshala'
sp_helptext sptblCenterLoc





