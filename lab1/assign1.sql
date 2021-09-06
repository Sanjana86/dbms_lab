use university_profile;

#1.Management wants to know the cid of colleges in the uni that can support law.
	select cid from Campus where law = true;

#2.Faculty wanted to inspect all the details of Dave excluding english and social.
	select name,rollno,age,math,sci,sports from Student where name = "dave";

#3.Management wants to know the name and roll no of students who have qualified for scholarship.Qualification parameter : math OR sci above 80
    select name, rollno from Student where math>80 or sci>80;

#4.A teacher for social wants to know what are the distinct marks she gave her students.
	select distinct social from Student;

#5.The english prof wishes to find the number of students failing in his class. Students below 70 fail. Countmanually or pro tip : google count in sql. Both will be graded equally just trying to pique your curiosity.
	select count(eng) from Student where eng < 70;

#6.The stem field wants to find the best qualified student to be head of their club as per marks. List thestudents name and rollno. (stem is sci and math in this case)
	select name,rollno,math,sci from Student where math>90 and sci>90;

#7.The Dept. of stem wants to know the college location of the university that does not provide engineering.
	select loc from Campus where engg = 0;

#8.What is the ratio of students in the campus that provides stem and does not provide stem (query and show ratio by calc yourself, no need to divide just num/denom)
	select sum(case when engg=true then cap else 0 end)/sum(case when engg=false then cap else 0 end) as engg_to_nonEngg_ratio  from Campus;

#9.For all rounder find students who have score above 70 in all subj.
	select name from Student where math>70 and sci>70 and social>70 and eng>70 and sports>70;

#10.Find the count of students in each group if I split the students as per every 20 roll numbers in one group.Note you can run multiple queries and count individually for this one or see if you can google a faster way with sql itself. Both will be graded equally just trying to pique your curiosity.
	select count(rollno) from Student where rollno<=20;
    select count(rollno) from Student where rollno>20 and rollno<41;
    select count(rollno) from Student where rollno>40 and rollno<61;
