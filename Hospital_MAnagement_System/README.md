# Hospital Management System | SQL Database Project

A comprehensive **Hospital Management System** developed using **MySQL**, designed to manage hospital operations including patient registration, doctor management, appointments, medical records, billing, and departmental organization.

The project demonstrates practical implementation of **Database Design, SQL Programming, Relational Database Management, and Business Intelligence Queries** using real-world healthcare scenarios.

---

# Overview

Hospitals generate large volumes of patient and operational data every day. Managing this information manually can lead to delays, data inconsistencies, and inefficient decision-making.

This project provides a relational database solution that centralizes hospital information and enables efficient management of:

- Patient Records
- Doctor Information
- Appointments
- Medical History
- Billing
- Departments
- Revenue Reports

The database is designed using **normalized relational tables**, **foreign key constraints**, and advanced SQL queries for analytical reporting.

---

# Business Problem

Hospitals require a centralized system to efficiently manage medical operations while maintaining data consistency and reducing manual work.

Common challenges include:

- Managing patient records
- Scheduling doctor appointments
- Maintaining medical history
- Tracking billing and payments
- Managing hospital departments
- Generating operational reports
- Monitoring hospital revenue

This project addresses these challenges using a relational database built with MySQL.

---

# Objectives

The primary objectives of this project are:

- Design a normalized hospital database
- Manage patient and doctor information
- Store appointment and treatment records
- Track billing and payment status
- Generate analytical hospital reports
- Practice advanced SQL concepts
- Demonstrate database management skills

---

# Database Schema

The Hospital Management System consists of **7 relational tables**.

### 1. Patients

Stores patient information including:

- Patient ID
- Name
- Date of Birth
- Gender
- Phone Number
- Email
- Address
- Registration Date

---

### 2. Doctor

Stores doctor details including:

- Doctor ID
- Doctor Name
- Specialization
- Phone Number
- Available Days
- Consultation Fee

---

### 3. Appointment

Maintains appointment records including:

- Appointment ID
- Patient ID
- Doctor ID
- Appointment Date
- Medical Problem
- Appointment Status

Relationships:

- Patient → Appointment
- Doctor → Appointment

---

### 4. Medical Records

Stores complete patient treatment history including:

- Record ID
- Patient ID
- Doctor ID
- Diagnosis
- Prescription
- Treatment Date

---

### 5. Billing

Maintains hospital billing information including:

- Invoice ID
- Patient ID
- Appointment ID
- Amount
- Payment Status
- Payment Date

---

### 6. Departments

Stores hospital department information.

Examples:

- Cardiology
- Neurology
- Orthopedics
- Pediatrics
- Oncology
- Surgery
- Radiology
- Emergency

---

### 7. Doctor_Department

Bridge table used to create many-to-many relationships between:

- Doctors
- Departments

---

# Entity Relationship

```
Patients
      │
      │
Appointments
      │
      │
Doctors
      │
Doctor_Department
      │
Departments

Patients
      │
Medical Records

Patients
      │
Billing
```

---

# SQL Concepts Implemented

## Database Operations

- CREATE DATABASE
- USE DATABASE

---

## Table Operations

- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- Constraints

---

## Data Manipulation Language (DML)

- INSERT
- UPDATE
- DELETE
- SELECT

---

## Filtering

- WHERE
- BETWEEN
- IN
- NOT IN
- LIKE

---

## Sorting

- ORDER BY

---

## Aggregation Functions

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## Grouping

- GROUP BY
- HAVING

---

## Joins

Implemented:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

---

## Subqueries

Used for:

- Patient filtering
- Doctor analysis
- Appointment reports

---

## Date Functions

Used:

- CURDATE()
- DATE_SUB()
- MONTH()
- DATE_FORMAT()

---

## String Functions

Used:

- UPPER()
- TRIM()
- IFNULL()

---

## Window Functions

Implemented:

### RANK()

Ranking doctors based on patient visits.

### Cumulative Revenue

Using

```
SUM() OVER()
```

for monthly revenue tracking.

---

## Conditional Logic

Implemented using

```
CASE WHEN
```

Example:

- High Risk Patients
- Medium Risk Patients
- Low Risk Patients

---

# Business Reports Generated

The project includes analytical SQL queries such as:

## Patient Reports

- Recently registered patients
- Patients without appointments
- Patient treatment history

---

## Doctor Reports

- Doctor specialization report
- Consultation fee analysis
- Doctor ranking based on visits

---

## Appointment Reports

- Completed appointments
- Pending appointments
- Monthly appointment analysis

---

## Billing Reports

- Paid vs Unpaid bills
- Total hospital revenue
- Top paying patients
- Monthly revenue trend

---

## Department Reports

- Revenue by department
- Doctor department mapping

---

## Medical Reports

- Diagnosis history
- Prescription tracking
- Patient risk categorization

---

# Features

- Complete Hospital Database Design
- Relational Database Management
- Patient Management
- Doctor Management
- Appointment Scheduling
- Medical Record Tracking
- Billing Management
- Department Management
- Revenue Analysis
- Business Reporting
- Advanced SQL Querying

---

# Technologies Used

### Database

- MySQL

### Query Language

- SQL

### Database Tool

- MySQL Workbench

---

# Skills Demonstrated

This project demonstrates practical experience in:

- Database Design
- Relational Database Management
- SQL Programming
- Table Normalization
- Foreign Key Relationships
- CRUD Operations
- Aggregate Queries
- SQL Joins
- Window Functions
- Subqueries
- Business Intelligence Reporting
- Healthcare Database Management

---

# Learning Outcomes

After completing this project, you will understand:

- Database schema design
- Relational database concepts
- SQL query writing
- Data relationships
- Healthcare database management
- Business reporting using SQL
- Advanced SQL functions
- Analytical query development

---

# Project Structure

```
Hospital_Management_System.sql
│
├── Database Creation
├── Table Creation
├── Data Insertion
├── Foreign Key Relationships
├── CRUD Operations
├── Aggregate Queries
├── Joins
├── Window Functions
├── Analytical Reports
└── Business Insights
```

---

# Real-World Applications

This project can be used in:

- Hospitals
- Clinics
- Healthcare Organizations
- Diagnostic Centers
- Medical Information Systems
- Healthcare Analytics

---

# Future Enhancements

- Stored Procedures
- SQL Triggers
- Views
- User Authentication
- Appointment Scheduling Automation
- Backup & Recovery Scripts
- Dashboard Integration with Power BI
- Patient Portal Integration

---

# License

This project is created for educational and portfolio purposes.

---

# Author

**Parth Solanki**

Aspiring Data Scientist | SQL Developer | Machine Learning Enthusiast
