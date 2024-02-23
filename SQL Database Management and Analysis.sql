                  --Assignment – SQL Queries--
create database SQL_assignments
use SQL_assignments

create table STUDIES(PNAME varchar(30), INSTITUTE varchar(30), 
COURSE varchar(30), COURSE_FEE int,
primary key (PNAME))

insert into STUDIES values('ANAND', 'SABHARI', 'PGDCA', 4500)
insert into STUDIES values('ALTAF', 'COIT', 'DCA', 7200)
insert into STUDIES values('JULIANA', 'BDPS', 'MCA', 22000)
insert into STUDIES values('KAMALA', 'PRAGATHI', 'DCA', 5000)
insert into STUDIES values('MARY', 'SABHARI', 'PGDCA', 4500)
insert into STUDIES values('NELSON', 'PRAGATHI', 'DAP', 6200)
insert into STUDIES values('PATRICK', 'PRAGATHI', 'DCAP', 5200)
insert into STUDIES values('QADIR', 'APPLE', 'HDCA', 14000)
insert into STUDIES values('RAMESH', 'SABHARI', 'PGDCA', 4500)
insert into STUDIES values('REBECCA', 'BRILLIANT', 'DCAP', 11000)
insert into STUDIES values('REMITHA', 'BDPS', 'DCS', 6000)
insert into STUDIES values('REVATHI', 'SABHARI', 'DAP', 5000)
insert into STUDIES values('VIJAYA', 'BDPS', 'DCA', 48000)

select * from STUDIES


create table SOFTWARE(PNAME varchar(30), TITLE varchar(30), 
DEVELOPIN varchar(30), SCOST float, DCOST int,SOLD int
)

insert into SOFTWARE values('MARY', 'README', 'CPP', 300, 1200, 84)
insert into SOFTWARE values('ANAND', 'PARACHUTES', 'BASIC', 399.95, 6000, 43)
insert into SOFTWARE values('ANAND', 'VIDEO TITLING', 'PASCAL', 7500, 16000, 9)
insert into SOFTWARE values('JULIANA', 'INVENTORY', 'COBOL', 3000, 3500, 0)
insert into SOFTWARE values('KAMALA', 'PAYROLL PKG.', 'DBASE', 9000, 20000, 7)
insert into SOFTWARE values('MARY', 'FINANCIAL ACCT.', 'ORACLE', 18000, 85000, 4)
insert into SOFTWARE values('MARY', 'CODE GENERATOR', 'C', 4500, 20000, 23)
insert into SOFTWARE values('PATTRICK', 'README', 'CPP', 300, 1200, 84)
insert into SOFTWARE values('QADIR', 'BOMBS AWAY', 'ASSEMBLY', 750, 3000, 11)
insert into SOFTWARE values('QADIR', 'VACCINES', 'C', 1900, 3100, 21)
insert into SOFTWARE values('RAMESH', 'HOTEL MGMT.', 'DBASE', 13000, 35000, 4)
insert into SOFTWARE values('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73)
insert into SOFTWARE values('REMITHA', 'PC UTILITIES', 'C', 725, 5000, 51)
insert into SOFTWARE values('REMITHA', 'TSR HELP PKG.', 'ASSEMBLY', 2500, 6000, 7)
insert into SOFTWARE values('REVATHI', 'HOSPITAL MGMT.', 'PASCAL', 1100, 75000, 2)
insert into SOFTWARE values('VIJAYA', 'TSR EDITOR', 'C', 900, 700, 6)

select * from SOFTWARE


create table PROGRAMMER(PNAME varchar(30), DOB date, 
DOJ date, GENDER varchar(30),  PROF1 varchar(30), PROF2 varchar(30), SALARY int)

insert into PROGRAMMER values('ANAND', '12-Apr-66', '21-Apr-92', 'M', 'PASCAL','BASIC', 3200)
insert into PROGRAMMER values('ALTAF', '02-Jul-64', '13-Nov-90', 'M', 'CLIPPER','COBOL', 2800)
insert into PROGRAMMER values('JULIANA', '31-Jan-60', '21-Apr-90', 'F', 'COBOL','DBASE', 3000)
insert into PROGRAMMER values('KAMALA', '30-Oct-68', '02-Jan-92', 'F', 'C','DBASE', 2900)
insert into PROGRAMMER values('MARY', '24-Jun-70', '01-Feb-91', 'F', 'CPP','ORACLE', 4500)
insert into PROGRAMMER values('NELSON', '11-Sep-85', '11-Oct-89', 'M', 'COBOL','DBASE', 2500)
insert into PROGRAMMER values('PATTRICK', '10-Nov-65', '21-Apr-90', 'M', 'PASCAL','CLIPPER', 2800)
insert into PROGRAMMER values('QADIR', '31-Aug-65', '21-Apr-91', 'M', 'ASSEMBLY','C', 3000)
insert into PROGRAMMER values('RAMESH', '03-May-67', '28-Feb-91', 'M', 'PASCAL','DBASE', 3200)
insert into PROGRAMMER values('REBECCA', '01-Jan-67', '01-Dec-90', 'F', 'BASIC','COBOL', 2500)
insert into PROGRAMMER values('REMITHA', '19-Apr-70', '20-Apr-93', 'F', 'C','ASSEMBLY', 3600)
insert into PROGRAMMER values('REVATHI', '02-Dec-69', '02-Jan-92', 'F', 'PASCAL','BASIC', 3700)
insert into PROGRAMMER values('VIJAYA', '14-Dec-65', '02-May-92', 'F', 'FOXPRO','C', 3500)


select * from PROGRAMMER



--Tasks to be performed:
--1. Find out the selling cost AVG for packages developed in Pascal.
select avg(SCOST) AVG_selling_cost from SOFTWARE where DEVELOPIN='Pascal'


--2. Display Names, Ages of all Programmers.
select PNAME, floor(DATEDIFF(day,dob,'2022-10-09')/365.25) Age from PROGRAMMER


--3. Display the Names of those who have done the DAP Course.
select PNAME from STUDIES where COURSE='DAP'


--4. Display the Names and Date of Births of all Programmers Born in January.
select PNAME,DOB from PROGRAMMER where month(dob)=1


--5. What is the Highest Number of copies sold by a Package?
select max(SOLD) as Highest_Num_copies_sold  from SOFTWARE 


--6. Display lowest course Fee.
select min(COURSE_FEE) lowest_course_Fee from STUDIES 


--7. How many programmers done the PGDCA Course?
select PNAME from STUDIES where COURSE ='PGDCA'


--8. How much revenue has been earned thru sales of Packages Developed in C.
select sum(SCOST*SOLD) Revenue_C from SOFTWARE where DEVELOPIN='c'


--9. Display the Details of the Software Developed by Ramesh.
select DEVELOPIN from SOFTWARE where PNAME='Ramesh'


--10. How many Programmers Studied at Sabhari?
select count(PNAME) Num_programmers from STUDIES where INSTITUTE='Sabhari'


--11. Display details of Packages whose sales crossed the 2000 Mark.
select title, SCOST from SOFTWARE where SCOST>2000


--12. Display the Details of Packages for which Development Cost have been recovered.
select * from SOFTWARE where scost*sold>dcost


--13. What is the cost of the costliest software development in Basic?
select max(dcost) costliest_soft_develp_basic from SOFTWARE where DEVELOPIN='Basic'


--14. How many Packages Developed in DBASE?
select count(title) Num_packages from SOFTWARE where DEVELOPIN='dbase'


--15. How many programmers studied in Pragathi?
select count(PNAME) Num_programmers_Pragathi from STUDIES where INSTITUTE='Pragathi'


--16. How many Programmers Paid 5000 to 10000 for their course?
select count(pname) prog_5_10k from STUDIES where COURSE_FEE between 5000 and 10000


--17. What is AVG Course Fee
select avg(COURSE_FEE) AVG_course_fee from STUDIES


--18. Display the details of the Programmers Knowing C.
select * from PROGRAMMER where PROF1='c' or PROF2='c'


--19. How many Programmers know either COBOL or PASCAL.
select * from PROGRAMMER where PROF1='COBOL' or PROF2='PASCAL' or PROF1='PASCAL' or PROF2='COBOL'


--20. How many Programmers Don’t know PASCAL and C
select * from PROGRAMMER where not (PROF1='c' or PROF1='PASCAL') and
not (PROF2='PASCAL' or PROF2='c')


--21. How old is the Oldest Male Programmer.
select max(floor(DATEDIFF(day,dob,'2022-10-09')/365.25)) Age_Oldest_maleP from PROGRAMMER
where GENDER='m'

--22. What is the AVG age of Female Programmers?
select avg(floor(DATEDIFF(day,dob,'2022-10-09')/365.25)) Avg_Age_FemaleP from PROGRAMMER
where GENDER='f'

--23. Calculate the Experience in Years for each Programmer and Display with their
--names in Descending order.
select PNAME,(floor(DATEDIFF(day,DOJ,'2022-10-09')/365.25)) Experience_years from PROGRAMMER
order by Experience_years desc


--24. Who are the Programmers who celebrate their Birthday’s During the Current Month?
select PNAME from PROGRAMMER where month(DOB)=10


--25. How many Female Programmers are there?
select count(pname) Num_FemaleP from PROGRAMMER where GENDER='f'


--26. What are the Languages studied by Male Programmers.
select PROF1, PROF2, gender from PROGRAMMER where GENDER='m'



--27. What is the AVG Salary?
select avg(SALARY) AVG_Salary from PROGRAMMER 


--28. How many people draw salary 2000 to 4000?
select count(SALARY) Sal_in_2_4k from PROGRAMMER where SALARY between 2000 and 4000


--29. Display the details of those who don’t know Clipper, COBOL or PASCAL.
select * from PROGRAMMER where not (PROF1='Clipper' or PROF1='COBOL' or PROF1='PASCAL') 
and not (PROF2='Clipper' or PROF2='COBOL' or PROF2='PASCAL')


--30. Display the Cost of Package Developed By each Programmer.
select pname, DCOST as Cost_package from SOFTWARE


--31. Display the sales values of the Packages Developed by the each Programmer.
select pname, sum(scost*SOLD) as sales_values from SOFTWARE 
group by PNAME, scost*SOLD


--32. Display the Number of Packages sold by Each Programmer.
select pname, SOLD as Num_packages from SOFTWARE



--33. Display the sales cost of the packages Developed by each Programmer Language wise.
select PNAME,  DEVELOPIN,SCOST from SOFTWARE order by DEVELOPIN 


--34. Display each language name with AVG Development Cost, AVG Selling Cost and
--AVG Price per Copy.
select DEVELOPIN, avg(DCOST) AVG_Development_Cost , avg(SCOST) AVG_Selling_Cost
from SOFTWARE group by DEVELOPIN

select DEVELOPIN, avg(DCOST) as AVG_Development_Cost , avg(SCOST) AS AVG_Selling_Cost,
(avg(DCOST)/sum(SOLD)) AVG_Price_per_Copy  from SOFTWARE group by DEVELOPIN


select DEVELOPIN, avg(DCOST) as AVG_Development_Cost , avg(SCOST) AS AVG_Selling_Cost,
(avg(DCOST)/avg(SCOST)) AVG_Price_per_Copy  from SOFTWARE group by DEVELOPIN

--35. Display each programmer’s name, costliest and cheapest Packages Developed by him or
--her.
select PNAME, max(dcost) costliest_pkg, min(dcost) cheapest_pkg from SOFTWARE group by PNAME


--36. Display each institute name with number of Courses, Average Cost per Course.
select INSTITUTE, count(COURSE) Num_courses, avg(COURSE_FEE) Avg_cost_course from STUDIES
group by institute


--37. Display each institute Name with Number of Students.
select INSTITUTE, count(pname) Num_students from STUDIES group by institute


--38. Display Names of Male and Female Programmers. Gender also.
select PNAME, GENDER from PROGRAMMER order by GENDER desc


--39. Display the Name of Programmers and Their Packages.
select pname, TITLE as Packages from SOFTWARE


--40. Display the Number of Packages in Each Language Except C and C++.
select TITLE as Packages from SOFTWARE where not TITLE='c' or TITLE='cpp' 


--41. Display the Number of Packages in Each Language for which Development Cost is
--less than 1000.
select count(TITLE) Num_pkg from SOFTWARE where DCOST<1000
group by DEVELOPIN


--42. Display AVG Difference between SCOST, DCOST for Each Package.
select TITLE, avg(DCOST-SCOST) as Avg_diff_scost_dcost from SOFTWARE group by TITLE


--43. Display the total SCOST, DCOST and amount to Be Recovered for each
--Programmer for Those Whose Cost has not yet been Recovered.
select pname, SUM(scost) Total_scost,SUM(DCOST) Total_dcost from SOFTWARE
where sold*scost<DCOST
group by pname


--44. Display Highest, Lowest and Average Salaries for those earning more than 2000.
select max(SALARY) Highest_salary, min(SALARY) Lowest_salary, avg(SALARY) Avg_salary from PROGRAMMER where SALARY>2000


--45. Who is the Highest Paid C Programmers?
select PNAME, SALARY from PROGRAMMER where SALARY=(
select max(salary) from PROGRAMMER where PROF1='c' or PROF2='c')


--46. Who is the Highest Paid Female COBOL Programmer?
select PNAME, SALARY from PROGRAMMER where GENDER='f' and SALARY=(
select max(salary) from PROGRAMMER where (PROF1='COBOL' or PROF2='COBOL'))


--47. Display the names of the highest paid programmers for each Language.
select PNAME, PROF1 from PROGRAMMER where salary=(
select max(salary) from PROGRAMMER) group by PNAMe, PROF1



--48. Who is the least experienced Programmer.
select PNAME, floor(DATEDIFF(day, DOB, '2023-01-10')/365.25) as Age from PROGRAMMER where
floor(DATEDIFF(day, DOB, '2023-01-10')/365.25)=(select min(floor(DATEDIFF(day, DOB, '2023-01-10')/365.25)) from PROGRAMMER)


--49. Who is the most experienced male programmer knowing PASCAL.
select PNAME, floor(DATEDIFF(day, DOB, '2022-10-10')/365.25) as Age from PROGRAMMER 
where GENDER='m' and floor(DATEDIFF(day, DOB, '2022-10-10')/365.25)=(select max(floor(DATEDIFF(day, DOB, '2022-10-10')/365.25)) from PROGRAMMER
where PROF1='PASCAL' or PROF2='PASCAL')


--50. Which Language is known by only one Programmer?
select distinct  PROF1, PROF2 from PROGRAMMER 
where PROF1 not in (prof2)


--51. Who is the Above Programmer Referred in 50?
select *,  floor(DATEDIFF(day, DOB, '2022-10-10')/365.25) as Age from PROGRAMMER 
where  floor(DATEDIFF(day, DOB, '2022-10-10')/365.25) >50


--52. Who is the Youngest Programmer knowing DBASE?
select PNAME, floor(DATEDIFF(day, DOB, '2023-01-10')/365.25) as Age from PROGRAMMER 
where floor(DATEDIFF(day, DOB, '2023-01-10')/365.25)=(select min(floor(DATEDIFF(day, DOB, '2023-01-10')/365.25)) from PROGRAMMER
where PROF1='DBASE' or PROF2='DBASE')


--53. Which Female Programmer earning more than 3000 does not know C, C++,ORACLE or DBASE?
select pname from PROGRAMMER where gender = 'f' and not PROF1 in ('c','cpp','oracle', 'dbase') and 
not PROF2 in ('c','cpp','oracle', 'dbase')


--54. Which Institute has most number of Students?
with study as (
select INSTITUTE, count(INSTITUTE) Numbers from STUDIES group by INSTITUTE)
select top 1 INSTITUTE, Numbers from study order by Numbers desc
 
 
--55. What is the Costliest course?
select COURSE, course_fee from STUDIES where COURSE_FEE=(
select max(course_fee) from STUDIES)

--56. Which course has been done by the most of the Students?
with course as(
 select course,count(course)Num_course from studies group by course)
 select top 1 course,Num_course from course order by Num_course desc

--57. Which Institute conducts costliest course.
select INSTITUTE, course_fee from STUDIES where COURSE_FEE=(
select max(course_fee) from STUDIES)


--58. Display the name of the Institute and Course, which has below AVG course fee.
select INSTITUTE, COURSE, COURSE_FEE from STUDIES where COURSE_FEE< 
(select avg(COURSE_FEE) from studies)


--59. Display the names of the courses whose fees are within 1000 (+ or -) of the Average Fee
select INSTITUTE, COURSE, COURSE_FEE from STUDIES 
where COURSE_FEE between 10000 and 12000



--60. Which package has the Highest Development cost?
select TITLE as Package, dcost from SOFTWARE where DCOST=(
select MAX(dcost) from SOFTWARE)


--61. Which course has below AVG number of Students?
with avg_stu as (
select COURSE, count(pname) Num_stud from STUDIES group by COURSE)
select * from avg_stu where Num_stud<2


--62. Which Package has the lowest selling cost?
select TITLE as Package, SCOST from SOFTWARE where SCOST=(
select min(SCOST) from SOFTWARE)



--63. Who Developed the Package that has sold the least number of copies?
select PNAME,title, SOLD from SOFTWARE where SOLD=(
select min(SOLD) from SOFTWARE)



--64. Which language has used to develop the package, which has the highest
--sales amount?
select DEVELOPIN,title, SOLD from SOFTWARE where SOLD=(
select max(SOLD) from SOFTWARE)


--65. How many copies of package that has the least difference between
--development and selling cost where sold.
with leasts as 
(select scost, dcost, sold, (dCOST-sCOST) diff from SOFTWARE )
select min(dCOST-sCOST) Least_diff from leasts 



--66. Which is the costliest package developed in PASCAL.
select title, SCOST from SOFTWARE where SCOST=(
select max(SCOST) from SOFTWARE where DEVELOPIN='pascal')


--67. Which language was used to develop the most number of Packages.
with mostn as(
 select Developin,count(Title)Pkg_Num from software group by developin)
 select top 1 Developin,Pkg_Num from mostn order by Pkg_Num desc

--68. Which programmer has developed the highest number of Packages?
select top 1 PNAME, COUNT(TITLE) Num from SOFTWARE group by PNAME 
order by COUNT(TITLE) desc

--69. Who is the Author of the Costliest Package?
select PNAME, TITLE, SCOST  from SOFTWARE where SCOST=(
select max(SCOST) from SOFTWARE)


--70. Display the names of the packages, which have sold less than the AVG
--number of copies.
with pkg as
(select TITLE, count(TITLE) Num from SOFTWARE group by TITLE)
select Title from pkg where Num<(
select avg(Num) from pkg)
with pkg as (

--71. Who are the authors of the Packages, which have recovered more than double the
--Development cost?
select DCOST, (dcost*2) _Dcost, (SCOST*SOLD) TotalRecovered
from SOFTWARE where (SCOST*SOLD)> 2*DCOST


--72. Display the programmer Name and the cheapest packages developed by them in
--each language.
select PNAME, title, DCOST from SOFTWARE where DCOST in (
select min(dcost) from SOFTWARE group by PNAME)

--73. Display the language used by each programmer to develop the Highest
--Selling and Lowest-selling package.
select PNAME, DEVELOPIN, SOLD as Highest from SOFTWARE where SOLD=(
select max(SOLD) from SOFTWARE)
select PNAME, DEVELOPIN, SOLD as Lowest from SOFTWARE where SOLD=(
select min(SOLD) from SOFTWARE)


--74. Who is the youngest male Programmer born in 1965?
select PNAME,gender,dob, floor(DATEDIFF(DAY, DOB, '2023-01-10')/365.25) Age from PROGRAMMER 
where DOB=(select max(dob) from PROGRAMMER
where YEAR(DOB)=1965 and gender='m')


--75. Who is the oldest Female Programmer who joined in 1992?
select PNAME,gender,DOJ, floor(DATEDIFF(DAY, DOJ, '2023-01-10')/365.25) Age from PROGRAMMER 
where DOJ=(select min(DOJ) from PROGRAMMER
where YEAR(DOJ)=1992 and gender='f')


--76. In which year was the most number of Programmers born.
with born as (
(select year(dob) Year_born, count(YEAR(dob)) Born_num from PROGRAMMER 
group by YEAR(dob)))
select max(Born_num) num from born
 

--77. In which month did most number of programmers join?
with born as (
select month(DOJ) Month_num, count(month(DOJ)) Count_month from PROGRAMMER 
group by month(DOJ))
select max(count_month) Month_num from born

 

--78. In which language are most of the programmer’s proficient.
with prof as (
select PROF1, count(prof1) Num_prog from PROGRAMMER group by PROF1)
select PROF1,Num_prog from prof where Num_prog=(
select max(Num_prog) from prof)

-- similar for this column also
select PROF2, count(prof2) Num_prog from PROGRAMMER group by prof2



--79. Who are the male programmers earning below the AVG salary of
--Female Programmers?
select PNAME, SALARY from PROGRAMMER  where GENDER='m' and SALARY<(
select avg(salary) from PROGRAMMER  where GENDER='f')


--80. Who are the Female Programmers earning more than the Highest Paid?
select PNAME, salary from PROGRAMMER where SALARY=(
select max(salary) from PROGRAMMER) and GENDER='f'


--81. Which language has been stated as the proficiency by most of the Programmers?
with prof as (
select prof1,  count(PNAME) num from PROGRAMMER
group by prof1 )
select max(num) Prof_lang from prof


--82. Display the details of those who are drawing the same salary.
with same as (
select salary, count(SALARY) Num from PROGRAMMER group by SALARY)
select * from same where Num>1


--83. Display the details of the Software Developed by the Male Programmers Earning
--More than 3000/-.
select p.*,s.DEVELOPIN from PROGRAMMER p join SOFTWARE s
on p.PNAME=s.PNAME 
where p.SALARY>3000 and p.GENDER='m'


--84. Display the details of the packages developed in Pascal by the Female
--Programmers.
select p.PNAME,s.TITLE, s.DEVELOPIN from PROGRAMMER p join SOFTWARE s
on p.PNAME=s.PNAME 
where s.DEVELOPIN='pascal' and p.GENDER='f'



--85. Display the details of the Programmers who joined before 1990.
select PNAME, DOJ from PROGRAMMER where year(doj)<1990


--86. Display the details of the Software Developed in C By female programmers of
--Pragathi.
select p.PNAME, s.DEVELOPIN,p.Gender from PROGRAMMER p join SOFTWARE s
on p.PNAME=s.PNAME 
where s.DEVELOPIN='C' and p.gender='f'

--87. Display the number of packages, No. of Copies Sold and sales value of
--each programmer institute wise.
select s.Title,s.Sold,(s.sold*s.scost) as Sales_Value from software s
join studies t 
on s.pname = t.pname
join programmer p
on s.pname = p.pname 
order by institute asc


--88. Display the details of the software developed in DBASE by Male Programmers, who
--belong to the institute in which most number of Programmers studied.
select s.*, p.GENDER from SOFTWARE s
join PROGRAMMER p
on s.PNAME=p.PNAME
where DEVELOPIN ='dbase' and GENDER='m'


--89. Display the details of the software Developed by the male programmers Born
--before 1965 and female programmers born after 1975.
select s.*, year(dob) Year_born, s.DEVELOPIN from PROGRAMMER p
join SOFTWARE s
on p.PNAME=s.PNAME
where (GENDER='f'and YEAR(dob)>1975) or
(GENDER='m'and YEAR(dob)<1965 )


--90. Display the details of the software that has developed in the language which is
--neither the first nor the second proficiency of the programmers.
select s.*, p.PROF1, p.PROF2 from SOFTWARE s
join PROGRAMMER p
on s.PNAME=p.PNAME
where s.DEVELOPIN not in (PROF1, PROF2)


--91. Display the details of the software developed by the male students of Sabhari.
select s.pname,s.DEVELOPIN, p.GENDER, t.INSTITUTE from SOFTWARE s 
join PROGRAMMER p
on s.PNAME=p.PNAME
join STUDIES t
on p.PNAME=t.PNAME
where GENDER='m' and INSTITUTE='sabhari'


--92. Display the names of the programmers who have not developed any packages.
select p.pname from programmer p
join software s 
on p.pname = s.pname
where p.pname not in (s.pname)

--93. What is the total cost of the Software developed by the programmers of Apple?
select sum(DCOST) Total_cost, t.INSTITUTE from SOFTWARE s 
join STUDIES t
on s.PNAME=t.PNAME
where t.INSTITUTE='apple' 
group by INSTITUTE



--94. Who are the programmers who joined on the same day?
select * from PROGRAMMER p
where DOJ in (select DOJ from PROGRAMMER where p.PNAME<>PNAME)


--95. Who are the programmers who have the same Prof2?
select * from PROGRAMMER p
where PROF2 in (select PROF2 from PROGRAMMER where p.PNAME<>PNAME)



--96. Display the total sales value of the software, institute wise.
select  t.INSTITUTE, sum(s.SOLD) Total_Sales  from SOFTWARE s
join STUDIES t
on s.PNAME=t.PNAME
group by INSTITUTE
order by Total_Sales desc


--97. In which institute does the person who developed the costliest package studied.
select s.*, t.INSTITUTE from SOFTWARE s
join STUDIES t
on s.PNAME=t.PNAME
where s.DCOST=(select max(dcost) from SOFTWARE)



--98. Which language listed in prof1, prof2 has not been used to develop any package.
select s.*, p.PROF1, p.PROF2 from SOFTWARE s
join PROGRAMMER p
on s.PNAME=p.PNAME
where s.DEVELOPIN not in (PROF1, PROF2)

--99. How much does the person who developed the highest selling package earn and 
--what course did HE/SHE undergo.
select (s.SCOST*SOLD) Total_Earnings, t.COURSE from SOFTWARE s
join STUDIES t
on s.PNAME=t.PNAME
where s.SCOST*SOLD =(
select max(s.SCOST*SOLD) from software s)          

     

--100. What is the AVG salary for those whose software sales is more than 50,000/-.

select avg(p.SALARY) Avg_Salary from  SOFTWARE s
inner join PROGRAMMER p
on s.PNAME=p.PNAME
where s.SCOST*s.SOLD>50000


--101. How many packages were developed by students, who studied in institute that
--charge the lowest course fee?
select s.TITLE, t.INSTITUTE, t.COURSE_FEE from SOFTWARE s
join STUDIES t
on s.PNAME=t.PNAME
where t.COURSE_FEE=(select min(COURSE_FEE) from STUDIES)
group by t.INSTITUTE, s.TITLE, t.COURSE_FEE



--102. How many packages were developed by the person who developed the
--cheapest package, where did HE/SHE study?
select s.TITLE,s.DCOST, t.INSTITUTE from SOFTWARE s
join STUDIES t
on s.PNAME=t.PNAME
where s.DCOST=(select min(DCOST) from SOFTWARE)
group by t.INSTITUTE, s.TITLE, s.DCOST



--103. How many packages were developed by the female programmers earning more
--than the highest paid male programmer?
select count(*) Num_FemaleP from PROGRAMMER p
join SOFTWARE s
on p.PNAME=s.PNAME
where gender='f' and SALARY>(
select max(SALARY) from PROGRAMMER where GENDER='m')



--104. How many packages are developed by the most experienced programmer form BDPS.
with most_pkg as(
select p.PNAME, max(datediff(year,DOJ, '2022')) Age, count(s.PNAME) Num_packages 
from PROGRAMMER p
join STUDIES t
on p.PNAME=t.PNAME
join SOFTWARE s
on s.PNAME=t.PNAME
where t.INSTITUTE='bdps'
group by p.PNAME)
select max(Num_packages) Packages from most_pkg

--105. List the programmers (form the software table) and the institutes they studied.
select s.PNAME, t.INSTITUTE from SOFTWARE s
join STUDIES t
on s.PNAME=t.PNAME


--106. List each PROF with the number of Programmers having that PROF and the
--number of the packages in that PROF.
select s.DEVELOPIN, count(s.PNAME) Numbers from SOFTWARE s
join PROGRAMMER p
on s.PNAME=p.PNAME
where s.DEVELOPIN in (p.PROF1, p.PROF2)
group by DEVELOPIN


--107. List the programmer names (from the programmer table) and No. Of Packages
--each has developed.
select p.PNAME, TITLE, count(title) Num_pkg from PROGRAMMER p
inner join SOFTWARE s
on p.PNAME=s.PNAME
where s.DEVELOPIN in (PROF1,PROF2)
group by p.PNAME, TITLE
