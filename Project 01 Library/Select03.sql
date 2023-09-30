# Show the name of all book involving number of book that student borrowed in 2017
SELECT COUNT(*) AS count;
SELECT DISTINCT b1.name,count(b2.bookID) as count FROM books b1 INNER JOIN borrows b2 ON b1.bookID = b2.bookID
WHERE YEAR(b2.takenDate) = 2017 GROUP BY b1.name;

SELECT b1.name,count(b2.bookID) FROM books b1 INNER JOIN borrows b2 ON b1.bookID = b2.bookID
WHERE YEAR(b2.takenDate)=2017 
GROUP BY b1.name;

# Show info of student whose age > 18
SELECT * FROM students WHERE YEAR(NOW()-birthdate) > 18 ;

SELECT * FROM students WHERE YEAR(curdate())-YEAR(birthdate) > 18;

# Show the name, sex and age of all students
SELECT name,gender,YEAR(now())-YEAR(birthdate) AS age FROM students; 

# show the average score of student grade 11a
SELECT class,point FROM students;
SELECT class,point FROM students WHERE class='11a';

SELECT COUNT(*) as count, count(class) FROM students WHERE class = '11a';

SELECT AVG(point) as average FROM students WHERE class='11a';

# show total-score, average and maximum-score, minimum-score of student 
SELECT SUM(point) as total_score, AVG(point) as average, 
	   MIN(point) as minimum_score, MAX(point) as maximum_score 
       FROM students WHERE class='11a';










