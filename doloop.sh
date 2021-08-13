hive -S -hiveconf seasonis=$2 -f $1 

for  flag in 4 8;
do
    hive -hiveconf flag=$flag -f olympics.sql
done    

