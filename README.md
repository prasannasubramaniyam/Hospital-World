HOSPITAL WORLD
SQL Data Analysis Project • README
1. Project Overview
Hospital World is a SQL-based database project designed to manage and analyze hospital data. It uses SQL
queries to retrieve, filter, sort, and analyze information about patients, doctors, appointments, and billing records.
The project demonstrates fundamental and intermediate SQL concepts, including filtering, aggregate functions,
grouping, subqueries, and table joins.
2. Project Objectives
• Analyze patient demographics and age groups.
• Retrieve doctor details by department and salary.
• Track appointment dates and appointment statuses.
• Analyze hospital billing and payment statuses.
• Identify the oldest patients and highest billing amounts.
• Combine information from multiple tables using SQL JOINs.
3. Database Structure
Database Name: Hospital_World
Patients: Patient_ID (primary key), Patient_Name, Age, Gender, City.
Doctors: Doctor_ID (primary key), Doctor_Name, Department, Salary.
Appointments: Appointment_ID (primary key), Patient_ID, Doctor_ID, Appointment_Date, Status.
Bills: Bill_ID (primary key), Patient_ID, Bill_Amount, Payment_Status.
4. Tools and Technologies
• SQL
• MySQL or a compatible relational database system (RDBMS).
5. SQL Concepts Covered
• CREATE DATABASE, CREATE TABLE, INSERT INTO, and SELECT.
• WHERE, BETWEEN, LIKE, DISTINCT, ORDER BY, and IN.
• Aggregate functions: COUNT(), SUM(), AVG(), MIN(), and MAX().
• GROUP BY and HAVING.
• Subqueries and INNER JOIN.
• Multiple-table joins and relational data analysis.
6. Key Analysis Performed
• Retrieved patients older than 40 and patients living in Chennai.
• Filtered doctors by department and salary.
• Calculated maximum doctor salary, oldest patient age, and average patient age.
• Counted patients by city and gender.
Page 1
• Identified pending bills and cancelled appointments.
• Retrieved patient names with appointment dates and doctor names.
• Analyzed billing totals and appointment counts using GROUP BY and HAVING.
• Combined patient, doctor, appointment, and billing information using JOINs.
7. Project Insights
The queries can be used to explore patient distribution across cities, age and gender distribution, doctor salary
differences, appointment statuses, paid and pending bills, and patient-level billing totals.
Note: These insights describe the types of analysis supported by the sample data; they are not claims about real
hospital operations.
8. How to Run the Project
• Open MySQL or a compatible SQL editor.
• Execute the database creation statement.
• Create the four tables and insert the sample records.
• Run the SELECT queries and review the returned results.
9. Skills Demonstrated
• Database creation and data manipulation.
• Data retrieval, filtering, and sorting.
• Aggregate calculations and grouped analysis.
• Subqueries and relational data analysis using JOINs.
• Writing structured and readable SQL queries.
10. Conclusion
The Hospital World SQL project demonstrates how relational databases and SQL queries can be used to organize
and analyze hospital data. It provides practical experience with patient records, doctor information, appointments,
and billing analysis, while strengthening foundational SQL skills for Data Analyst roles.
Suggested repository files: README.md and Hospital_World.sql
Page 2
