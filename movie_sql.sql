
#1.һ���ж��ٲ�ͬ���û�
select count(*) from (select distinct userId from ratings)

#2.һ���ж��ٲ�ͬ�ĵ�Ӱ
select count(*) from (select distinct movieId from ratings)

#3.һ���ж��ٲ�ͬ�ĵ�Ӱ����

#5.2018��һ���ж����˽��й���Ӱ����

select count(*) from (select distinct userId from ratings where timestamp >= '1514736000'and timestamp <= '1546272000')

#6.2018������5�����ϵĵ�Ӱ�����Ӧ�ı�ǩ

select t1.movieId,t2.tag from movie t1
left join tag t2 on t1.movieId = t2.movieId
where t1.genres >= '5' and t1.timestamp >= '1514736000'and t1.timestamp <= '1546272000'