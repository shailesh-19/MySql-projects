create database hospital;
use hospital;
create table patient (
patient_id int primary key,
patient_name varchar(255) unique ,
patient_address varchar(255),
admit_date date 
);
create table disease (
    disease_id int,
    disease_name varchar(255),
    report varchar(255),
    foreign key (disease_id) references patient(patient_id)
);
insert into patient ( patient_id , patient_name, patient_address, admit_date) values
(1,'Priya Sharma', ' Delhi', '2025-04-12'),
(2,'Rahul Verma', ' Mumbai', '2025-04-13'),
(3,'Sneha Gupta', ' Kolkata', '2025-04-14'),
(4,'Amit Singh', 'Chennai', '2025-04-15'),
(5,'Kavita Joshi', 'Bangalore', '2025-04-16'),
(6,'Vikram Kumar', 'Hyderabad', '2025-04-17'),
(7,'Deepika Menon', 'Pune', '2025-04-18'),
(8,',Suresh Yadav', 'Jaipur', '2025-04-19'),
(9,'Anjali Patel', 'Ahmedabad', '2025-04-20'),
(10,'Rajesh Nair', 'Kochi', '2025-04-21');
insert into  disease (disease_id, disease_name, report) values
(1, 'Flu', 'Mild symptoms observed'),
(2, 'Fever', 'High temperature recorded'),
(3, 'Cold', 'Runny nose and cough'),
(4, 'Allergy', 'Skin rash and itching'),
(5, 'Headache', 'Severe pain in the head'),
(6, 'Stomach ache', 'Abdominal discomfort'),
(7, 'Back pain', 'Lower back stiffness'),
(8, 'Sore throat', 'Pain while swallowing'),
(9, 'Cough', 'Persistent dry cough'),
(10, 'Fatigue', 'Feeling unusually tired');
select *from patient where patient_id =5;
select
    concat(patient_name, ', ', patient_address) as patient_info
from
    patient;
select patient_address, group_concat(patient_name) as patients
from patient
group by patient_address
having count(*) > 1;

