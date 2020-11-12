# sql-challenge

## About

### employees_tables.sql

This code creates tables so that it is possible to import data from csv files into our database (available in data folder).
The tables being imported are as follows:
* departments
* dept_emp
* dept_manager
* employees
* salaries
* titles

### employees_queries.sql

This code runs a series of eight queries, each with a different objective.

* Views general information about each employee along with their individual salaries
* Views each employee hired in 1986
* Views each department manager
* Views each employee and the department in which they worked
* Views each employee named Hercules with a last initial of "B"
* Views every employee that worked in the sales department
* Views every employee that worked in either sales or development
* Views the count of every employee that shares a last name
* Stores a view of salaries connected to title of employees

### employees.ipynb

This code visualizes information from the database.

* The first chart is a histogram of employee salary ranges
	* Starting at $40k/year, there is a large, but steady dropoff of employee salaries as salary increments by $20k/year
* The second chart shows the average salary of employees by title
	* Staff and senior staff average the most, appearing almost equal (almost 60k/year)
	* Managers are next with just over 50k/year
	* Technique leader, senior engineer, engineer, and assistant engineer all average just under 50k/year

	