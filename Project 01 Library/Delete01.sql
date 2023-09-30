# delete specific ID
DELETE FROM testdelete  
	WHERE testdeleteID = 8;
    
DELETE FROM testdelete  
	WHERE testdeleteID = 1;

# delete multiple specific ID
DELETE FROM testdelete  
	WHERE testdeleteID = 2 OR testdeleteID = 3;

# delete all row data in table
TRUNCATE TABLE testdelete;

# Display data after deletion
SELECT * FROM library.testdelete;

# how to delete table in schema
DROP TABLE tablename;



















