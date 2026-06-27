CREATE DATABASE HOSPITAL_MANAGEMENT;

USE HOSPITAL_MANAGEMENT;

CREATE TABLE Patients (
    Patients_Id INT PRIMARY KEY,
    Name VARCHAR(20),
    DOB DATE,
    Gender VARCHAR(6),
    Phone_Number VARCHAR(12),
    Email VARCHAR(50),
    Address VARCHAR(100),
    Ragistration_Date DATE
);

INSERT INTO Patients VALUES
(1,'Amit Sharma','1990-05-12','Male','9876543210','amit@gmail.com','Delhi','2024-01-10'),
(2,'Riya Verma','1995-08-22','Female','9876543211','riya@gmail.com','Noida','2024-01-11'),
(3,'Rahul Singh','1988-03-15','Male','9876543212','rahul@gmail.com','Ghaziabad','2024-01-12'),
(4,'Neha Gupta','1992-07-30','Female','9876543213','neha@gmail.com','Delhi','2024-01-13'),
(5,'Ankit Jain','1985-01-10','Male','9876543214','ankit@gmail.com','Faridabad','2024-01-14'),
(6,'Pooja Mehta','1998-09-05','Female','9876543215','pooja@gmail.com','Delhi','2024-01-15'),
(7,'Suresh Kumar','1975-12-25','Male','9876543216','suresh@gmail.com','Noida','2024-01-16'),
(8,'Kavita Rao','1989-06-18','Female','9876543217','kavita@gmail.com','Gurgaon','2024-01-17'),
(9,'Vikas Malhotra','1991-04-09','Male','9876543218','vikas@gmail.com','Delhi','2024-01-18'),
(10,'Simran Kaur','1996-11-11','Female','9876543219','simran@gmail.com','Chandigarh','2024-01-19'),
(11,'Rohit Yadav','1993-02-02','Male','9876543220','rohit@gmail.com','Noida','2024-01-20'),
(12,'Sunita Devi','1980-10-10','Female','9876543221','sunita@gmail.com','Delhi','2024-01-21'),
(13,'Manoj Mishra','1978-08-08','Male','9876543222','manoj@gmail.com','Prayagraj','2024-01-22'),
(14,'Alok Pandey','1994-05-05','Male','9876543223','alok@gmail.com','Lucknow','2024-01-23'),
(15,'Nisha Kapoor','1997-07-07','Female','9876543224','nisha@gmail.com','Delhi','2024-01-24'),
(16,'Deepak Chauhan','1986-06-06','Male','9876543225','deepak@gmail.com','Meerut','2024-01-25'),
(17,'Reena Saxena','1990-01-01','Female','9876543226','reena@gmail.com','Agra','2024-01-26'),
(18,'Karan Arora','1992-02-14','Male','9876543227','karan@gmail.com','Delhi','2024-01-27'),
(19,'Priya Nair','1995-03-19','Female','9876543228','priya@gmail.com','Kochi','2024-01-28'),
(20,'Mohit Bansal','1989-09-09','Male','9876543229','mohit@gmail.com','Jaipur','2024-01-29');



CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    phone_number VARCHAR(15),
    Availeble_days INT,
    consulation_fee INT
);

INSERT INTO Doctor VALUES
(1,'Dr. Rajesh Khanna','Cardiologist','9000011111',5,1000),
(2,'Dr. Anjali Mehra','Gynecologist','9000011112',4,800),
(3,'Dr. Vikram Singh','Orthopedic','9000011113',6,900),
(4,'Dr. Neeraj Kumar','Neurologist','9000011114',3,1200),
(5,'Dr. Pankaj Verma','Dermatologist','9000011115',5,700),
(6,'Dr. Ritu Sharma','Pediatrician','9000011116',6,600),
(7,'Dr. Ashok Jain','ENT','9000011117',4,500),
(8,'Dr. Suman Rao','Psychiatrist','9000011118',3,1000),
(9,'Dr. Manish Gupta','General Physician','9000011119',6,400),
(10,'Dr. Kavya Iyer','Dentist','9000011120',5,300),
(11,'Dr. Arvind Patel','Urologist','9000011121',4,1100),
(12,'Dr. Sneha Joshi','Oncologist','9000011122',2,1500),
(13,'Dr. Rakesh Malhotra','Surgeon','9000011123',3,1300),
(14,'Dr. Priyanka Das','Radiologist','9000011124',5,900),
(15,'Dr. Nitin Agarwal','Endocrinologist','9000011125',4,1000),
(16,'Dr. Alka Mishra','Ophthalmologist','9000011126',5,700),
(17,'Dr. Sanjay Verma','Pulmonologist','9000011127',3,1200),
(18,'Dr. Mehul Shah','Gastroenterologist','9000011128',4,1100),
(19,'Dr. Tina Roy','Nephrologist','9000011129',2,1400),
(20,'Dr. Harish Bansal','Cardiologist','9000011130',5,1000);


CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    problem VARCHAR(100),
    status VARCHAR(15),

    FOREIGN KEY (patient_id) REFERENCES Patients(Patients_Id),

	FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);


INSERT INTO Appointment VALUES
(1,1,1,'2024-02-01','Chest Pain','Completed'),
(2,2,2,'2024-02-02','Pregnancy Check','Completed'),
(3,3,3,'2024-02-03','Knee Pain','Pending'),
(4,4,4,'2024-02-04','Migraine','Completed'),
(5,5,5,'2024-02-05','Skin Allergy','Completed'),
(6,6,6,'2024-02-06','Fever','Completed'),
(7,7,7,'2024-02-07','Ear Pain','Pending'),
(8,8,8,'2024-02-08','Stress','Completed'),
(9,9,9,'2024-02-09','Cold & Cough','Completed'),
(10,10,10,'2024-02-10','Tooth Pain','Completed'),
(11,11,11,'2024-02-11','Urine Issue','Pending'),
(12,12,12,'2024-02-12','Cancer Review','Completed'),
(13,13,13,'2024-02-13','Appendix','Completed'),
(14,14,14,'2024-02-14','X-Ray','Completed'),
(15,15,15,'2024-02-15','Diabetes','Completed'),
(16,16,16,'2024-02-16','Eye Check','Completed'),
(17,17,17,'2024-02-17','Breathing Issue','Pending'),
(18,18,18,'2024-02-18','Stomach Pain','Completed'),
(19,19,19,'2024-02-19','Kidney Issue','Completed'),
(20,20,20,'2024-02-20','Heart Follow-up','Completed');


CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    treatment_date DATE,

    FOREIGN KEY (patient_id) REFERENCES Patients(Patients_Id),

    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

INSERT INTO Medical_Records VALUES
(1,1,1,'Heart Blockage','Aspirin','2024-02-01'),
(2,2,2,'Normal Pregnancy','Vitamins','2024-02-02'),
(3,3,3,'Ligament Injury','Pain Killers','2024-02-03'),
(4,4,4,'Migraine','Anti Migraine','2024-02-04'),
(5,5,5,'Fungal Infection','Ointment','2024-02-05'),
(6,6,6,'Viral Fever','Paracetamol','2024-02-06'),
(7,7,7,'Ear Infection','Antibiotics','2024-02-07'),
(8,8,8,'Anxiety','Therapy','2024-02-08'),
(9,9,9,'Seasonal Flu','Cough Syrup','2024-02-09'),
(10,10,10,'Cavity','Filling','2024-02-10'),
(11,11,11,'UTI','Antibiotics','2024-02-11'),
(12,12,12,'Cancer Stable','Chemotherapy','2024-02-12'),
(13,13,13,'Appendicitis','Surgery','2024-02-13'),
(14,14,14,'Fracture','Plaster','2024-02-14'),
(15,15,15,'Diabetes','Insulin','2024-02-15'),
(16,16,16,'Vision Weak','Glasses','2024-02-16'),
(17,17,17,'Asthma','Inhaler','2024-02-17'),
(18,18,18,'Gastritis','Antacid','2024-02-18'),
(19,19,19,'Kidney Stone','Medication','2024-02-19'),
(20,20,20,'Heart Check','Beta Blocker','2024-02-20');


CREATE TABLE Billing (
    invoice_id INT PRIMARY KEY,
    patient_id INT,
    appointment_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_date DATE,

	FOREIGN KEY (patient_id) REFERENCES Patients(Patients_Id),

	FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

INSERT INTO Billing VALUES
(1,1,1,100000,'Paid','2024-02-01'),
(2,2,2,80000,'Paid','2024-02-02'),
(3,3,3,90000,'Unpaid',NULL),
(4,4,4,12000,'Paid','2024-02-04'),
(5,5,5,70000,'Paid','2024-02-05'),
(6,6,6,60000,'Paid','2024-02-06'),
(7,7,7,50000,'Unpaid',NULL),
(8,8,8,100000,'Paid','2024-02-08'),
(9,9,9,40000,'Paid','2024-02-09'),
(10,10,10,30000,'Paid','2024-02-10'),
(11,11,11,11000,'Unpaid',NULL),
(12,12,12,15000,'Paid','2024-02-12'),
(13,13,13,13000,'Paid','2024-02-13'),
(14,14,14,90000,'Paid','2024-02-14'),
(15,15,15,100000,'Paid','2024-02-15'),
(16,16,16,7000,'Paid','2024-02-16'),
(17,17,17,12000,'Unpaid',NULL),
(18,18,18,11000,'Paid','2024-02-18'),
(19,19,19,14000,'Paid','2024-02-19'),
(20,20,20,10000,'Paid','2024-02-20');

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO Departments VALUES
(1,'Cardiology'),
(2,'Gynecology'),
(3,'Orthopedics'),
(4,'Neurology'),
(5,'Dermatology'),
(6,'Pediatrics'),
(7,'ENT'),
(8,'Psychiatry'),
(9,'General Medicine'),
(10,'Dental'),
(11,'Urology'),
(12,'Oncology'),
(13,'Surgery'),
(14,'Radiology'),
(15,'Endocrinology'),
(16,'Ophthalmology'),
(17,'Pulmonology'),
(18,'Gastroenterology'),
(19,'Nephrology'),
(20,'Emergency');

CREATE TABLE Doctor_Department (
    doctor_id INT,
    department_id INT,

    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),

    FOREIGN KEY (department_id) REFERENCES Departments(department_id),

    PRIMARY KEY (doctor_id, department_id)
);
INSERT INTO Doctor_Department VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),
(16,16),(17,17),(18,18),(19,19),(20,1);

SELECT * FROM Patients;
SELECT * FROM Doctor;
SELECT * FROM Appointment;
SELECT * FROM Medical_Records;
SELECT * FROM Billing;
SELECT * FROM Departments;
SELECT * FROM Doctor_Department;

#1.
INSERT INTO Patients 
VALUES (21,'Aakash Verma','1999-01-01','Male','9876500000','aakash@gmail.com','Delhi','2024-02-01');
select * from Patients;

UPDATE Patients SET Address = 'Mumbai'
WHERE Patients_Id = 1;
select * from Patients;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Appointment
WHERE appointment_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
select * from Appointment;

# 2.
SELECT * FROM Patients
WHERE Ragistration_Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

SELECT patient_id, SUM(amount) AS total_paid FROM Billing
GROUP BY patient_id
ORDER BY total_paid DESC
LIMIT 5;

SELECT * FROM Doctor
WHERE consulation_fee > 1000;

#3.
SELECT * FROM Appointment
WHERE status = 'schedualed' AND doctor_id = 3;

SELECT * FROM Doctor
WHERE specialization = 'Cardiologist' OR specialization = 'Neurologist';

SELECT * FROM Patients
WHERE Patients_Id NOT IN (SELECT DISTINCT patient_id FROM Appointment
    WHERE appointment_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);

#4.
SELECT * FROM Doctor
ORDER BY specialization;

SELECT doctor_id, COUNT(patient_id) AS total_patients FROM Appointment
GROUP BY doctor_id;

SELECT d.department_name, SUM(b.amount) AS total_revenue FROM Billing b
JOIN Appointment a ON b.appointment_id = a.appointment_id
JOIN Doctor_Department dd ON a.doctor_id = dd.doctor_id
JOIN Departments d ON dd.department_id = d.department_id
GROUP BY d.department_name;

#5.
SELECT SUM(amount) AS total_revenue FROM Billing
WHERE payment_status = 'Paid';

SELECT doctor_id, COUNT(*) AS visits FROM Appointment
GROUP BY doctor_id
ORDER BY visits DESC
LIMIT 1;

SELECT AVG(consulation_fee) AS avg_fee FROM Doctor;

#7.
SELECT doc.doctor_name, dep.department_name FROM Doctor doc
INNER JOIN Doctor_Department dd ON doc.doctor_id = dd.doctor_id
INNER JOIN Departments dep ON dd.department_id = dep.department_id;

SELECT p.Name, a.status FROM Patients p
LEFT JOIN Appointment a ON p.Patients_Id = a.patient_id
WHERE a.status = 'Completed';

SELECT a.appointment_id FROM Appointment a
RIGHT JOIN Billing b ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Unpaid';

SELECT p.* FROM Patients p
LEFT JOIN Appointment a ON p.Patients_Id = a.patient_id
WHERE a.patient_id IS NULL;

#8.
SELECT doctor_id FROM Appointment
GROUP BY doctor_id
HAVING COUNT(patient_id) > 50;

SELECT patient_id FROM Billing
GROUP BY patient_id
ORDER BY SUM(amount) DESC
LIMIT 1;

SELECT * FROM Appointment
WHERE doctor_id IN (SELECT doctor_id FROM Doctor
    WHERE specialization = 'Dermatologist'
);

#9.
SELECT MONTH(appointment_date) AS month, COUNT(*) AS visits FROM Appointment
GROUP BY MONTH(appointment_date);

SELECT DATE_FORMAT(treatment_date,'%d-%m-%Y') AS formatted_date FROM Medical_Records;

#10.
SELECT UPPER(Name) FROM Patients;

SELECT TRIM(doctor_name) FROM Doctor;

SELECT IFNULL(phone_number,'Not Available') FROM Doctor;

#11.
SELECT doctor_id,COUNT(patient_id) AS total_patients,RANK() OVER (ORDER BY COUNT(patient_id) DESC) AS rank_no FROM Appointment
GROUP BY doctor_id;

SELECT MONTH(payment_date) AS month,SUM(amount) AS monthly_revenue,SUM(SUM(amount)) OVER (ORDER BY MONTH(payment_date)) AS cumulative_revenue FROM Billing
WHERE payment_status='Paid'
GROUP BY MONTH(payment_date);

#12.
SELECT patient_id,
CASE
    WHEN COUNT(record_id) > 5 THEN 'High'
    WHEN COUNT(record_id) BETWEEN 3 AND 5 THEN 'Medium'
    ELSE 'Low'
END AS Patient_Risk_Level FROM Medical_Records
GROUP BY patient_id;










