use clinic;
select * from staff where End_Time_Work >= All(select End_Time_Work from staff);
select * from staff where End_Time_Work = (select max(End_Time_Work) from staff);

select Address, count(Address) as number_patients from patient GROUP BY Address;
# show the number of patient where come from battambang group by gender.
select gender, count(gender) from patient where Address = 'Battambang' GROUP BY gender;

select AVG(year(now())-year(DoB)) as age from patient;
# show number of patient where age > 18
select count(*) as number_patient from patient where year(now())-year(DoB) > 18;









