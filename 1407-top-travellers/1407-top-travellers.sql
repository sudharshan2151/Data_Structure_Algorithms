# Write your MySQL query statement below
select name,case when sum(b.distance) is null then 0 else sum(distance) end as travelled_distance from users a left join rides b on a.id=b.user_id group by user_id order by travelled_distance desc, name;