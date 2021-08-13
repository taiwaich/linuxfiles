set hive.exec.mode.local.auto=true;
use olympics;
show tables;

--select * from sports limit 20;

--create table athleteData (athlete_id int, age char(2),  team_id int,  game_id int, sport_id int, medal char(1)) row format delimited fields terminated by ',' tblproperties("skip.header.line.count"="1");

--load data inpath '/olympics/summergames/1.csv' into table athletedata;

--load data inpath '/olympics/summergames/${hiveconf:flag}.csv' into table athletedata;
select count(athlete_id) from athletedata;
