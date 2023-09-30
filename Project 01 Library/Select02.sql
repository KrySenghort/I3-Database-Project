# Count number of book and indentify the word "TotalBook"
SELECT * FROM books;
SELECT COUNT(*) FROM books;
SELECT COUNT(*) AS TotalBook FROM books;
SELECT COUNT(*) AS 'Total Book' FROM books;

# Count the number of book which have pagecount more or equal 200 pages.
SELECT COUNT(*) AS 'Total Book which has page more than or equal to 200' FROM books
	WHERE pagecount>=200;

# Show the name of students who borrow more than 30 times
SELECT DISTINCT s.name FROM students s INNER JOIN borrows b ON s.studentID = b.studentID; 

SELECT DISTINCT s.name, count(b.studentID)>30 FROM students s INNER JOIN borrows b ON s.studentID = b.studentID
	GROUP BY s.name;

SELECT DISTINCT s.name, count(b.studentID) as count FROM students s INNER JOIN borrows b ON s.studentID = b.studentID
	GROUP BY s.name HAVING count>30;   
    
# Count the number of book borrowing in 2016
SELECT COUNT(*) FROM borrows WHERE year(takenDate)=2016;

# Count the number of book borrowing for each year
SELECT year(takenDate) AS year, COUNT(*) AS count FROM borrows
	GROUP BY year;

# Count the number of all student who borrowed 
SELECT COUNT(*) FROM students; # 505
SELECT COUNT(DISTINCT studentID) FROM borrows; # there exist 504 record of borrowed list

# Count the number of all student who did not borrow
SELECT * FROM students s WHERE s.studentID NOT IN (SELECT studentID FROM borrows);

# Show total of book which type of comics 
SELECT COUNT(*) AS frequency FROM books b INNER JOIN types t 
	ON b.typeID = t.typeID WHERE t.name='comics';

# Show total of book which type of comics(use sub-query)
SELECT COUNT(*) AS frequency FROM books WHERE typeID IN (SELECT typeID FROM types WHERE name ='comics');

# Show type of book and total number of each type.
SELECT * FROM types;
SELECT t.name,count(b.typeID) as Counts FROM types t INNER JOIN books b ON t.typeID = b.typeID GROUP BY t.name;
