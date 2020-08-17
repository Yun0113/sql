# 1.��ѯͬʱ����1�γ̺�2�γ̵����
select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId = '1' and t2.courseId = '2'  



# 2.��ѯͬʱ����1�γ̺�2�γ̵����


select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId = '1' and t2.course_Id = '2'  


# 3.��ѯƽ���ɼ����ڵ���60�ֵ�ͬѧ��ѧ����ź�ѧ��������ƽ���ɼ�


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

# 4.��ѯ��student_course���в����ڳɼ���ѧ����Ϣ��SQL���



select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId is null   
# 5.��ѯ�����гɼ���SQL
select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId is not null 



# 6.��ѯѧ�����Ϊ1����Ҳѧ�����Ϊ2�Ŀγ̵�ͬѧ����Ϣ


select * from student t1
left join student_course t2 on t1.id = t2.studentId
left join course t3 on t3.id = t2.courseId
where t3.id = '1' and t3.id = '2'
# 7.����1�γ̷���С��60���������������е�ѧ����Ϣ


select * from student t1
left join student_course t2 on t1.id = t2.studentId
where t2.courseId = '1' and t2.score > 60
order by t2.score desc

# 8.��ѯÿ�ſγ̵�ƽ���ɼ��������ƽ���ɼ��������У�ƽ���ɼ���ͬʱ�����γ̱��������


select t1.name,avg(t2.score) from student t1
left join student_course t2 on t1.id = t2.studentId
group by t1.id
order by avg(t2.score) asc


# 9.��ѯ�γ�����Ϊ"��ѧ"���ҷ�������60��ѧ�������ͷ���

select t1.name, t2.score from student t1
left join student_course t2 on t1.id = t2.studentId
left join course t3 on t3.id = t2.studentId
where t3.name = '��ѧ' and t2.score < 60
