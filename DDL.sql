-- **���ݿ⼶��**  

--  ��ʾ�������ݿ�  
SHOW DATABASES; 

--  ����ĳ�����ݿ�  
USE <����>

--  ����һ�����ݿ�  
CREATE DATABASE t1; 

--  ����ָ���ַ��������ݿ�  
CREATE DATABASE <���ݿ���> CHARACTER SET utf8 COLLATE utf8_general_ci;

--  ��ʾ���ݿ�Ĵ�����Ϣ   
SHOW CREATE DATABASE t1;

--  �޸����ݿ�ı���  
alter database <���ݿ���> character set utf8;

--  ɾ��һ�����ݿ�   
drop database <���ݿ���>;

-- **����**

--  �޸ı���
alter table <����> rename to <�±���>

--  �޸��ֶε���������
alter table <����> modify column sname varchar(20);

--  �޸��ֶ���
alter table <����> change <�ֶ���> <�ֶ�������> <�ֶε�����>

--  ����ֶ�
alter table <����> add column <�ֶ���> <�ֶ�����> default null;

--  ɾ���ֶ�
alter table <����> drop column <�ֶ���>;

--  �޸ı�Ĵ洢����
alter table mytest ENGINE = <������>;

--  ɾ��������Լ��
alter table vip drop <���>

--  ɾ��һ�ű�
drop table <����>
