#1
select * from student inner join marks_sem1 on marks_sem1.rollno= student.rollno;

#2
select student.name, marks_sem1.sports from student inner join marks_sem1 on marks_sem1.rollno= student.rollno;

#3
select student.name,marks_sem1.rollno,marks_sem1.math  from student inner join marks_sem1 on student.rollno = marks_sem1.rollno  inner join campus on student.cid = campus.cid where campus.law = 1;

#4
select * from student left join campus on student.cid=campus.cid;
select * from student right join campus on student.cid=campus.cid;