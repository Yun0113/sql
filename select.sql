# 1.查询同时存在1课程和2课程的情况
select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId = '1' and t2.courseId = '2'  



# 2.查询同时存在1课程和2课程的情况


select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId = '1' and t2.course_Id = '2'  


# 3.查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩


select
    t1.id,
    t1.name,
    avg(t2.score) as avg_score
from
    student t1
left join student_course t2 on
    t1.id = t2.studentId
group by
    t1.id
having
    avg(t2.score) >= 60

# 4.查询在student_course表中不存在成绩的学生信息的SQL语句



select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId is null   
# 5.查询所有有成绩的SQL
select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId is not null 



# 6.查询学过编号为1并且也学过编号为2的课程的同学的信息


select * from student t1
left join student_course t2 on t1.id = t2.studentId
left join course t3 on t3.id = t2.courseId
where t3.id = '1' and t3.id = '2'
# 7.检索1课程分数小于60，按分数降序排列的学生信息


select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId = '1' and t2.score > 60
order by t2.score desc

# 8.查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排


select t1.name,avg(t2.score) from student t1
left join student_course t2 on t1.id = t2.studentId
group by t1.id
order by avg(t2.score) asc


# 9.查询课程名称为"数学"，且分数低于60的学生姓名和分数

select t1.name, t2.score from student t1
left join student_course t2 on t1.id = t2.studentId
left join course t3 on t3.id = t2.studentId
where t3.name = '数学' and t2.score < 60
