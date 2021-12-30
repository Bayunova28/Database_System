# Database System
<img src="https://github.com/Bayunova28/Database_System/blob/main/database-blue.png" height="450" width="1000">
A database is an organized collection of structured information, or data, typically stored electronically in a computer system. A database is usually controlled by a database 
management system (DBMS). Together, the data and the DBMS, along with the applications that are associated with them, are referred to as a database system, often shortened to just 
database.
<br />
<br />
Data within the most common types of databases in operation today is typically modeled in rows and columns in a series of tables to make processing and data querying efficient. 
The data can then be easily accessed, managed, modified, updated, controlled, and organized. Most databases use structured query language (SQL) for writing and querying data.

# Documentation
### Getting Started
```
# Create database
CREATE DATABASE database_name; 

# Show all database
SHOW DATABASES;

# Accessing database
SHOW DATABASES; 

# Delete database
DROP DATABASE database_name; 

# View table
SHOW TABLES;

# View table structure
DESC table_name;

# Delete table
DROP TABLE table_name;
```
### Alter Table
```
# Alter field name or column
ALTER TABLE table_name CHANGE old_field_name current_field_name data_type(size); 

# Alter data type
ALTER TABLE table_name MODIFY field_name current_data_type(size);

# Add field or column
ALTER TABLE table_name ADD current_field_name data_type(size);

# Delete field or column
ALTER TABLE table_name DROP COLUMN field_name;
```

### Data Manipulation Language
```
# Insert table
INSERT INTO field_name VALUES(text1, text2, …, text_n); 

# Select table
SELECT * FROM table_name;

# Update table
UPDATE table_name SET field_name = 'current_data' WHERE condition;

# Delete table
DELETE FROM table_name WHERE condition; 
```

### Single Row Function
```
# Sorting data (ascending)
SELECT * FROM table_name ORDER BY key_field_name ASC;

# Sorting data (descending)
SELECT * FROM table_name ORDER BY key_field_name DESC;

# Between operator
SELECT * FROM table_name WHERE clause_field_name BETWEEN 'clause_1' And 'clause_2'; 

# IN operator
SELECT field_name FROM table_name WHERE adapter_field_name IN ('text_1','text_2'); 

# LIKE operator
SELECT * FROM table_name WHERE field_name LIKE '%Key'; 
```

### Aggregation Function

|    Aggregate    |           Description       
| ---------- | ------------------------------- | 
| Count     | Counting of data            | 
| Sum      | Addition of data      | 
| Avg     | Finding the Average |
| Max     | Looking for maximum value |
| Min     | Looking for minimum value |
