# SQL Challenge: Pewlett Hackard Employee Database Project

## Background
As a new data engineer at Pewlett Hackard, your task is to research individuals employed during the 1980s and 1990s using the company's employee database. The database consists of six CSV files. This project involves designing tables, importing CSV data into a SQL database, and conducting data analysis.

## Files
Downloaded files from [Module 9 Challenge files](#).

## Overview
The challenge comprises three parts: data modeling, data engineering, and data analysis.

### Data Modeling
- Inspected the CSV files and sketched an Entity Relationship Diagram (ERD) of the tables, using `Quick DBD`.

![image](https://github.com/imnana18/sql-challenge/assets/147445115/e4b57349-3aa5-47fe-bf58-546da27e1b5d)


### Data Engineering
- Utilized provided information to create table schemas for the six CSV files.
  - Defined data types, primary keys, foreign keys, and other constraints.
  - Ensured uniqueness for primary keys; use composite keys if necessary.
  - Created tables in the correct order to manage foreign keys.
    
**NOTE:** 
For this part of the project, please refer to the `DB DDL` section of the `EmployeeSQL` folder for table schemas.
See `value_length_check.sql` to check for appropriate character lengths when creating table schemas. 

- Imported each CSV file into its respective SQL table.

**NOTE:** 
Please refer to the `SQL` section of the `EmployeeSQL` folder for importing data into created tables.
  - `prepare_SQL.py` file contains code used to prepare CSV data for SQL use.


### Data Analysis
Performed the following queries on the database using SQL in Postgres:
1. List employee number, last name, first name, sex, and salary of each employee.
2. List first name, last name, and hire date for employees hired in 1986.
3. List managers of each department with department number, department name, employee number, last name, and first name.
4. List department number for each employee with employee number, last name, first name, and department name.
5. List first name, last name, and sex of employees named Hercules with last names starting with B.
6. List employees in the Sales department, including their employee number, last name, and first name.
7. List employees in Sales and Development departments with employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all employee last names.

