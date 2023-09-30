# Show the each table 
SELECT * FROM authors;
SELECT * FROM students;
SELECT * FROM types;
SELECT * FROM books;
SELECT * FROM borrows;

# Show the information about books that have pages more than 200 pages
SELECT * FROM books WHERE pagecount > 200;

# show the information of books where the pagecounts are on the interval 100 to 200 pages
SELECT * FROM books WHERE pagecount >= 100 AND pagecount <= 200; # close interval
SELECT * FROM books WHERE pagecount BETWEEN 100 AND 200; # close interval
SELECT * FROM books WHERE pagecount > 100 AND pagecount < 200; # open interval

# show the class of student and illustrating just one time for the same class
SELECT class FROM students; # just show all
SELECT DISTINCT class FROM students;

# show the name and username of authors
SELECT name FROM authors;
SELECT surname FROM authors;
SELECT surname,name FROM authors; # in full form

# show the name of books that wriiten by Mr.Jack
SELECT a.name AS Authors, 
	   b.name AS BookTitle FROM books b INNER JOIN authors a ON b.authorID = a.authorID 
	   WHERE a.name = 'Jack';
       
# show the name, sex, DOB, class of all students
SELECT name, gender, birthdate, class FROM students;

# show the name, DOB, class of all female students
SELECT name,birthdate,class FROM students WHERE gender='F';
SELECT name,birthdate,class FROM students WHERE gender='f';

# show the info of all student whose mark score from 800 upforward
SELECT * FROM students WHERE point >= 800 AND gender='F';






