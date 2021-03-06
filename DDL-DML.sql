--DDL

-- **数据库级别：**  

--  显示所有数据库  
SHOW DATABASES; 

--  进入某个数据库  
USE <库名>

--  创建一个数据库  
CREATE DATABASE t1; 

--  创建指定字符集的数据库  
CREATE DATABASE <数据库名> CHARACTER SET utf8 COLLATE utf8_general_ci;

--  显示数据库的创建信息   
SHOW CREATE DATABASE t1;

--  修改数据库的编码  
alter database <数据库名> character set utf8;

--  删除一个数据库   
drop database <数据库名>;

-- **表级别**

--  修改表名
alter table <表名> rename to <新表名>

--  修改字段的数据类型
alter table <表名> modify column sname varchar(20);

--  修改字段名
alter table <表名> change <字段名> <字段新名称> <字段的类型>

--  添加字段
alter table <表名> add column <字段名> <字段类型> default null;

--  删除字段
alter table <表名> drop column <字段名>;

--  修改表的存储引擎
alter table mytest ENGINE = <引擎名>;

--  删除表的外键约束
alter table vip drop <外键>

--  删除一张表
drop table <表名>


--DML

-- 插入记录 
 insert into 表名 (属性名1,属性名2) values ('数值','数值')

-- 修改记录  

update 表名 set 属性名1=取值1,属性名2=取值2 where 筛选条件

-- 删除记录  

update 表名 set 属性名1=取值1,属性名2=取值2 where 筛选条件

-- 查询记录  

select  属性列表 from 表名 where 条件表达式  group by 属性名1[having 条件表达式] order by 属性名2 dese