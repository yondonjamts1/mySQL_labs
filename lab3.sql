--task 1
update staff set salary = (salary * 1.1)
where position1 = 'Assistant';

--task 2
SELECT * FROM staff WHERE sex = "M" ORDER BY dob ASC

--task 3
select * from propertyforrent
where rooms between 3 and 4
order by rent ASC;

