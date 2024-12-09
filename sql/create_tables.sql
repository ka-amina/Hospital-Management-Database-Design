drop database Care_Clinic;
create database Care_Clinic;
use Care_Clinic;
create table departements (
departement_id int(11) NOT NULL UNIQUE primary key,
departement_name varchar(50),
location varchar(100)
);

create table rooms(
room_id int(11) UNIQUE NOT NULL primary key,
room_number varchar(10) ,
room_type enum('General', 'Private', 'ICU'),
availability tinyint(1)
);

create table medications (
medication_id int(11) UNIQUE NOT NULL primary key,
medication_name varchar(100),
dosage varchar(50)
);

create table staff (
staff_id int(11) UNIQUE NOT NULL primary key,
first_name varchar(50),
last_name varchar(50),
job_title varchar(50),
phone_number varchar(15),
email varchar(100) UNIQUE,
departement_id int(11),
foreign key (departement_id) references departements(departement_id)
);

create table doctors(
doctor_id int(11) UNIQUE NOT NULL primary key,
first_name varchar(50),
last_name varchar(50),
specialization varchar(50),
phone_number varchar(15),
email varchar(100),
departement_id int(11),
foreign key (departement_id) references departements(departement_id)
);

create table  patients(
patient_id int(11) UNIQUE NOT NULL primary key,
first_name varchar(50),
last_name varchar(50),
gender enum('Male', 'Female', 'Other'),
date_of_birth date,
phone_number varchar(15),
email varchar(100) UNIQUE,
address varchar(255) 
);

create table addmissions (
 addmission_id int(11) UNIQUE NOT NULL primary key,
 patient_id int(11),
 room_id int(11),
 addmission_date date ,
 discharge_date date,
 foreign key (patient_id) references patients (patient_id),
 foreign key (room_id) references rooms (room_id)
);
 
create table appointements (
 appointement_id int(11)NOT NULL UNIQUE primary key,
 appoimntement_date date,
 apointement_time time,
 doctor_id int(11),
 patient_id int(11),
 reason varchar (255),
 foreign key(doctor_id) references doctors (doctor_id),
 foreign key(patient_id) references patients (patient_id)
);

create table prescriptions (
 prescription_id int(11) UNIQUE NOT NULL primary key,
 patient_id int(11),
 doctor_id int(11),
 medication_id int(11),
 prescription_date date,
 dosage_instructions varchar(255),
 foreign key (patient_id) references patients (patient_id),
 foreign key (doctor_id) references doctors (doctor_id),
 foreign key (medication_id) references medications (medication_id)
);

 