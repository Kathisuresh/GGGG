select t1.name,t2.course_name,t1. from students as t1 join courses as t2 on t1.course_id=t2.course_id

select t1.name,t2.course_name from students as t1 join courses as t2 on t1.course_id=t2.course_id and t2.course_name='Data Science'

select t2.course_name,count(*) from students as t1 join courses as t2 on t1.course_id=t2.course_id group by t2.course_name;

select t2.course_name,count(*) from students as t1 join courses as t2 on t1.course_id=t2.course_id group by t2.course_name having count(t1.course_id)>1;


select t1.name,t2.course_name from students as t1 join courses as t2 on t1.course_id=t2.course_id order by t1.name OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY;