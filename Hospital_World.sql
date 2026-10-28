Create Database Hospital_World;
Use Hospital_World;


CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50)
);

INSERT INTO Patients VALUES
(1,'Arun',28,'Male','Chennai'),
(2,'Priya',35,'Female','Madurai'),
(3,'Karthik',42,'Male','Salem'),
(4,'Divya',25,'Female','Chennai'),
(5,'Suresh',51,'Male','Coimbatore'),
(6,'Meena',31,'Female','Trichy'),
(7,'Ravi',46,'Male','Chennai'),
(8,'Anitha',29,'Female','Salem'),
(9,'Kumar',60,'Male','Madurai'),
(10,'Swathi',38,'Female','Coimbatore');

CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Doctors VALUES
(101,'Dr. Raj','Cardiology',85000),
(102,'Dr. Priya','Neurology',90000),
(103,'Dr. Kumar','Orthopedic',75000),
(104,'Dr. Anitha','General',60000),
(105,'Dr. Suresh','Dermatology',70000);

CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATE,
    Status VARCHAR(20)
);

INSERT INTO Appointments VALUES
(1001,1,101,'2026-09-01','Completed'),
(1002,2,102,'2026-09-02','Completed'),
(1003,3,103,'2026-09-03','Pending'),
(1004,4,104,'2026-09-04','Completed'),
(1005,5,101,'2026-09-05','Cancelled'),
(1006,6,105,'2026-09-06','Completed'),
(1007,7,102,'2026-09-07','Pending'),
(1008,8,103,'2026-09-08','Completed'),
(1009,9,101,'2026-09-09','Completed'),
(1010,10,104,'2026-09-10','Pending');

CREATE TABLE Bills (
    Bill_ID INT PRIMARY KEY,
    Patient_ID INT,
    Bill_Amount DECIMAL(10,2),
    Payment_Status VARCHAR(20)
);

INSERT INTO Bills VALUES
(501,1,5000,'Paid'),
(502,2,7500,'Paid'),
(503,3,4500,'Pending'),
(504,4,3000,'Paid'),
(505,5,12000,'Paid'),
(506,6,6500,'Pending'),
(507,7,9000,'Paid'),
(508,8,4000,'Paid'),
(509,9,15000,'Pending'),
(510,10,5500,'Paid');

Select * From Bills;
Select * From Doctors;
Select * From Patients;
Select * From Appointments;

-- BASIC SQL--

Select Age From Patients
Where Age>40;

Select Patient_Name,City From Patients
Where City="Chennai";

Select Patient_Name,Gender From Patients
Where Gender="female";

Select Patient_Name,Age
From Patients
Where Age Between 30 And 50;

Select Doctor_Name,Department
From Doctors
Where Department='Cardiology';

Select max(Salary) High_Salary
From Doctors;

Select Max(Age) Senior_Patient
From Patients;

Select Count(City) As Chennai_Patients
From Patients
Where City="Chennai";

Use hospital_world;

Select City,Count(*) As Toatl_Patients
From Patients
Group By City;

Select Doctor_Name,Salary
From Doctors
Where Salary >70000
Group By Doctor_Name,Salary;

Select Patient_Id,Bill_Amount
FRom Bills
Where Bill_Amount>5000
Order By Patient_Id,Bill_Amount Asc;

select * From Appointments;

Select Appointment_Id,Status
From Appointments
Where Status ="Completed";

Select Patient_Name,Age
From Patients
Where Age=(Select Max(Age) From Patients);

Use hospital_world;

-- Display Pattient Records--
Select * From Patients;

-- Show Only Patients Name --
Select Patient_Name,City 
From Patients;

-- Find Patients Older Than 30 --
Select Patient_Name,Age 
From Patients 
Where Age>30;

-- Find Patients Living In Chennai --
Select Patient_Name 
From Patients
Where City ="Chennai";

-- Sort Patients From Youngest And Oldest --
Select Patient_Name,Age
From Patients
Order By Patient_Name,Age Asc;

-- Find Patients Aged 20 To 40 Inculusisve--
Select Patient_Name,Age
From Patients
Where Age Between 20 And 40;

-- Count Total Patients--
Select Count(*) As Total_Patients From Patients;

-- Find Names With "D" --
Select Patient_Name 
From Patients
Where Patient_Name Like"D%";

-- Show Unique Patient Cities --
Select Distinct City From Patients Order By City;

-- Find Patients Whose City Is Not Chennai--
Select Patient_Name,City
From Patients
Where City<>"Chennai";

-- AGGREGATES & GROUP BY--

-- Calculate AVerage Patient Age--
Select Round(Avg(Age)) Average_Age 
From Patients;

-- Find Youngest And Oldest Ages--
Select Min(Age) Youngest, Max(Age) Oldest
From Patients;

-- Calculate Total Billing Amount--
Select Sum(Bill_Amount) Total_Amount
From Bills; 

Select Bill_Amount,Payment_Status
From Bills
Where Payment_Status="Pending";

Select Gender,Count(*)As Total_Genders
From Patients
Group By Gender;

Select Gender From Patients;

-- Find The Names Of Doctors Who Belong To The Neurology OR Orthopedic--
Select Doctor_Name,Department
From Doctors
Where Department In ("Neurology","Orthopedic");

-- Find The Names Of Patients Whose Names End With The Letter 'A"--
Select Patient_Name
From Patients
Where Patient_Name Like "%A";

-- Display The List Of Doctors Sorted By Their Salary Is Ascending Order--
Select Doctor_Name,Salary
From Doctors
Order By Salary Asc;

Select Sum(Bill_Amount)Total_Amount,Payment_Status
From Bills
Where Payment_Status="Paid";

-- Count How Many Bills Are There In Each Payment_Status Category--
Select Payment_Status,Count(*)  Total_Bills
From Bills
Group By Payment_Status;

-- Find The Total Numbers Of Appointments That Have Been Cancelled--
Select Count(Patient_Id) Total_Cancel
From Appointments
Where Status="Cancelled";

-- Find The Names Of Patients Along With The Appoinment Date For Their Appoinments--
Select P.Patient_Name,A.Appointment_Date
From Patients p
Join Appointments A On P.Patient_Id=A.Patient_Id;

-- List Of The Names Of Patients Along With Me Names Of The Doctors They Have Appointments With--
Select P.Patient_Name,D.Doctor_Name
From Patients P
Join Appointments A on P.Patient_Id=A.Patient_Id
Join Doctors D On A.Doctor_Id= D.Doctor_Id;

Select Patients.Patient_Name,Sum(Bills.Bill_Amount) Total_Amount
From Patients
Join Bills On Patients.Patient_Id=Bills.Patient_Id
Group By Patient_Name
Having Sum(Bills.Bill_Amount)>5000;

Select Doctors.Doctor_Name,Count(Appointments.Appointment_Id) Total_Appointments
From Doctors
Join Appointments On Doctors.Doctor_Id=Appointments.Doctor_Id
Group By Doctors.Doctor_Name
Having Count(Appointments.Appointment_Id)>2;

Select Patients.Patient_Name,Count(Appointments.Appointment_ID) Total_Appointments
From Patients
Join Appointments On Patients.Patient_Id=Appointments.Patient_Id
Group By Patients.Patient_Name;

Select Doctors.Doctor_Name,Patients.Patient_Name
From Doctors
Join Appointments On Doctors.Doctor_Id=Appointments.Doctor_Id
Join Patients On Appointments.Patient_Id=Patients.Patient_Id
Group By Doctors.Doctor_Name,Patients.Patient_Name;













































