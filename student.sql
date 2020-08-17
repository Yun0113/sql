CREATE TABLE `student` (
  
  `id` int NOT NULL,
 
  `name` varchar(45) NOT NULL,
  
  `age` varchar(45) NOT NULL,
 
  `sex` varchar(45) NOT NULL,
 
 PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ID';

INSERT INTO `student`.`student` (`id`, `name`, `age`, `sex`) VALUES ('001', '张三', '18', '男');
INSERT INTO `student`.`student` (`id`, `name`, `age`, `sex`) VALUES ('002', '李四', '20', '女');



CREATE TABLE `subject` (
  
  `id` int NOT NULL,
 
  `subject` varchar(45) NOT NULL,
  
  `teacher` varchar(45) NOT NULL,
 
  `description` varchar(45) NOT NULL,
 
 PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ID';

INSERT INTO `student`.`subject` (`id`, `subject`, `teacher`, `description`) VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO `student`.`subject` (`id`, `subject`, `teacher`, `description`) VALUES ('1002', '数学', '刘老师', '本次考试比较难');


CREATE TABLE `score` (
  
  `id` int NOT NULL,
 
  `student_id` varchar(45) NOT NULL,
  
  `subject_id` varchar(45) NOT NULL,
 
  `score` varchar(45) NOT NULL,
 
 PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ID';

INSERT INTO `student`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('1', '001', '1001', '80');
INSERT INTO `student`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('2', '002', '1002', '60');
INSERT INTO `student`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('3', '003', '1003', '70');
INSERT INTO `student`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('4', '004', '1004', '60.5');