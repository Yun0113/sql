
#1.一共有多少不同的用户
select count(*) from (select distinct userId from ratings)

#2.一共有多少不同的电影
select count(*) from (select distinct movieId from ratings)

#3.一共有多少不同的电影种类

#5.2018年一共有多少人进行过电影评分

select count(*) from (select distinct userId from ratings where timestamp >= '1514736000'and timestamp <= '1546272000')

#6.2018年评分5分以上的电影及其对应的标签

select t1.movieId,t2.tag from movie t1
left join tag t2 on t1.movieId = t2.movieId
where t1.genres >= '5' and t1.timestamp >= '1514736000'and t1.timestamp <= '1546272000'