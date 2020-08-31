-- 创建存储过程之前需判断该存储过程是否已存在，若存在则删除
 
DROP PROCEDURE IF EXISTS calc_student_stat
-- 创建存储过程

DELIMITER $

CREATE PROCEDURE calc_student_stat()

BEGIN
	
   SELECT subject, AVG(score) from students.score t1 
   left join students.subject t2 on t1.subject_id = t2.id
    
   group by t1.subject_id ;

END $
DELIMITER ;





CALL calc_student_stat();