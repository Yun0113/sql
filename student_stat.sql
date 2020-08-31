-- �����洢����֮ǰ���жϸô洢�����Ƿ��Ѵ��ڣ���������ɾ��
 
DROP PROCEDURE IF EXISTS calc_student_stat
-- �����洢����

DELIMITER $

CREATE PROCEDURE calc_student_stat()

BEGIN
	
   SELECT subject, AVG(score) from students.score t1 
   left join students.subject t2 on t1.subject_id = t2.id
    
   group by t1.subject_id ;

END $
DELIMITER ;





CALL calc_student_stat();