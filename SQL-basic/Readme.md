- Create a Database.

```bash
$ CREATE DATABASE sqlstart;
```

- Create a Table

```bash
# Use this Database
$ USE sqlstart


# Create A table
$  create table users(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) unique NOT NULL,
gender ENUM('MALE', 'female','Other'),
date_of_birth DATE,
created_at timestamp default current_timestamp
);

```

- Dropping the database

```bash
$ drop database sqlstart
```

- Data Types Explained
  - INT : Integer type, used for whole numbers.
  - VARCHAR(100) : Variable-length string, up to 100 characters.
  - enum : A string object with a value chosen from a list of permitted values, eg. gender enum('Male','Female','Other')
  - DATE : Stores data values eg. date_of_birth date
  - timestamp : Stores data and time, automatically set to the current timestamp when a row is created.

---

# New

- **_Data Type_**:
  - Defined while creating tables in database
  - Data types mainly classified into three categories + most used:
    - _String_ : char, varchar, etc.
    - _Numeric_ : int, float, bool, etc
    - _Data and Time_ : data, datetime, etc
  - date: Date format yyyy-mm-dd
  - datetime: date & time combination, format is yyyy-mm-dd hh:mm:ss

---

## Primary and Foreign Keys:

- **Primary Key (PK)**
  - A Primary key is a unique column we set in a table to easily identify and locate data in queries.
  - A table can have only one primary key, which should be unique and NOT NULL
- **Foreign Keys (FK)**
  - A Foreign key is a column used to link two or more tables together
  - A table can have any number of foreign keys, can contain duplicate and NULL values

---

## Constraints :

- Constraints are used to specific rules for data in a table.
  - This ensures the accuracy and reliability of the data in the table.
  - Constraints can be specified when the table is created with the CREATE TABLE statement, or
  - after the table is created with the ALTER TABLE statement
    Commonly used constraints in SQL:
  - _NOT NULL_ : Ensures that a column can't have a NULL value.
  - _UNIQUE_ : Ensures that all values in a column are different
  - _PRIMARY KEY_ : A combination of a NOT NULL and UNIQUE
  - _FOREIGN KEY_ : Prevents actions that would destroy links between tables (used to link multiple tables together)
  - _CHECK_ : Ensures that the values in a column satisfies a specific condition.
  - _DEFAULT_: Sets a default value for a column if no value is specified
  - _CREATE INDEX_ : Used to create and retrieve data from the database very quickly

- _Syntax_:

```bash
CREATE TABLE table_name(
column1 datatype constraint,
column2 datatype constraint,
column3 datatype constraint
);
```

---

## Create Table

The create table statement is used to create a new table in a database

```bash
# Syntax :
  create table table_name(
  column_name1 datatype	constraint,
  column_name2 datatype	constraint,
  column_name3 datatype	constraint,
  )

# Example:
  create table customer (
  id int8 primary key,
  name varchar(50) not null,
  age int not null,
  city char(50),
  salary numeric
)
```

## Insert values in table

The insert into statement is used to insert new records in a table

```bash
# Syntax
insert into table_name(column1,column2,column3 )
values
(value1, value2, value3,... valueN)

# Example

insert into customer(id, name, age, city, salary)
values
(1,'Badhon Biswas', 25, 'Dhaka, Bangladesh', '20000'),
(2,'Badhon Biswas', 25, 'Dhaka, Bangladesh', '20000'),
(3,'Badhon Biswas', 25, 'Dhaka, Bangladesh', '20000');

```

---

## Update values in table

The update command is used to update existing rows in a table

```bash
# Syntax
update table_name
set "name" = "value1", "age" = "27"
where "id"="value"

# Example
update customer
set name = "Emran", age = 28
where id = 3;

```

---

## Delete Values In Table

The delete statement is used to delete existing records in a table

```bash
#  Syntax
delete from table_name where condition;

# example
delete from customer where id=3
```

---

## Alter Table

The alter table statement is used to add, delete, or modify columns in an existing table

- Alter table - Add column Syntax
  - alter table table_name
  - add column column_name
- alter table - drop column syntax
  - alter table table_name
  - drop column column_name
- alter table - alter/modify column syntax
  - alter table table_name
  - alter column column_name datatype;

---

## Drop & Truncate Table

The DROP TABLE command deletes a table in the database

- Syntax : **drop table table_name**

The truncate table command deletes the data inside a table but not the table itself

- Syntax : **truncate table table_name**

---

## Select statement

The select statement is used to select data from a database.

- Syntax : select column_name from table_name;
  To Select all the fields available in the table
- Syntax : select \* from table_name
  To select distinct/unique fields available in the table
- Syntax : select distinct column_name from table_name;

---

## Where Clause

The where clause is used to filter records.
It is used to extract only those records that fulfill a specified condition

```bash
# Syntax :
select column_name from table_name
where condition

# Example:
select name from customer
where name='Emran'

```

## Operators In SQL

The SQL reserved words and characters are called operators, which are used with a where clause in a sql query
Most used operators:

1. Arithmetic Operators: numeric values. _+_, _-_ ""\*"" _/_ _%_
2. Comparison operators: compare two different data of SQL table : =, !=, >, <,
3. Logical Operators : perform the boolean operations. ALL, IN, Between, Like, and , or, not, any.
4. Bitwise Operators: Perform the bit operations on the . and (&) and or(|)

## Limit Clause

THe limit clause is used to set an upper limit on the number of tuples returned by sql

```bash
# example: below code will return 5 rows of data
select column_name/* from table_name
limit 5;

```

## Order by clause

The order by is used to sort the result-set in ascending (ASC) or desending order (DESC).

```bash
# Example : below code will sort the output data by column name in ascending order
select column_name from table_name
order by column_name e ASC;
```

---

## Import SCV File

```bash
COPY customer (
    CustomerId,
    FirstName,
    LastName,
    Company,
    City,
    Country,
    Phone1,
    Phone2,
    Email,
    SubscriptionDate,
    Website
)
FROM 'D:/ETH/SQL-basic/sql/customers-100.csv'
DELIMITER ','
CSV HEADER;
```

---

<!-- ## String Function in SQL -->

## Aggregate Functions

Aggregate function performs a calculation on multiple values and returns a single value.
And aggregate function are often used with group by & select statement

- COUNT() returns number of values
- SUM() returns number of values
- AVG() return average value
- MAX() return maximum value
- MIN() returns minimum value
- ROUND() Rounds a number to a specified number of decimal places
