use university_profile;

#1.Suppose we are having a vaccination drive and someone suggests we give the vaccines as per age. We want to vaccinate the eldest student first and youngest last with nobody under 18( as there might be people under 18)
select name,rollno,datediff('2021-09-13',dob)/365.25  from student where (datediff('2021-09-13',dob)/365.25)>18 order by datediff('2021-09-13',dob)/365.25 desc;

#2.Suppose the college was holding an event for sports for the students, one of the sports sections has a minimum age of 20 years for participating. Now give a count of women and men separately that qualify for this event from the students table.
select count(gender) from student where datediff('2021-09-13',dob)/365.25>=20 and gender = 'F' as female_over_20;
select count(gender) from student where datediff('2021-09-13',dob)/365.25>=20 and gender = 'M' as male_over_20;

#3.Display number of students whose maths score is more than the class avg score in all subjects. (sub query)
select name,math from student where math > (select avg((math+sci+eng+social+sports)/5) from student);

#4.Suppose the university expansion team was looking at how they should expand further and in what areas of the country. As of now they currently need the ratio of campus capacity that is in the south to the west zone of the country. (Like, use resource mentioned towards the end)
select (sum(case when instr(pincode,"5")=1 then cap else 0 end)+sum(case when instr(pincode,"6")=1 then cap else 0 end))/(sum(case when
instr(pincode,"3")=1 then cap else 0 end)+sum(case when instr(pincode,"4")=1 then cap else 0 end)) as ratio_s_w from campus;

#5.This year the college has decided to not only award the student who came first in the college(from any batch/joining yrs) but also the student who has come second. Find the student who has the second highest avg in the table.(sub queries, aggregation, comparison, logical)
select name,rollno,((math+sci+eng+social+sports)/5) as avg from Student order by ((math+sci+eng+social+sports)/5) desc limit 1,1;

#6.Display student’s name, rno, avg marks (“avg_marks”), score status (“score_status”) where score status is “High” if above average and “Low” if below average. (sub queries)
select name, rollno,(math+sci+eng+social+sports)/5 as avg_marks,if(((math+sci+eng+social+sports)/5)>(select avg((math+sci+eng+social+sports)/5)  from student),"High","Low") as score_status from student;