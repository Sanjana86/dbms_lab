# 1. For a certain event only students who belong to team R or are females are allowed to participate. Find the list of students eligible. (Union)
select name from student where team='R' UNION select name from student where gender='F';

#2.Display count of students in each team. (group by)
select count(name) as no_of_students ,team from student group by team;

#3.Display the average math score of boys from each team. (group by)
select avg(math) as avg_math,team from student where gender='M' group by team;

#4.Display data in the following format using Group By and Order By
select * from student group by team,gender order by team,gender desc;

#5.Use the group by followed by order by followed by limit to show ‘team’ and ‘avg(sci)’ columns of the top two teams with highest average in science.
select team,avg(sci) as avg_sci from student group by team order by avg(sci) DESC limit 2;