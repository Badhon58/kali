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
