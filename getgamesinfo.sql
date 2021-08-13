set hive.exec.mode.local.auto=true;
--show databases;
use olympics;
--show tables;
select g.year,
       g.season,
       c.city,
       c.country
from games g
inner join
     cities c
on g.city_id=c.city_id
where g.season like '${hiveconf:seasonis}';


select count(g.season)
from games g
where g.season like '${hiveconf:seasonis}';
