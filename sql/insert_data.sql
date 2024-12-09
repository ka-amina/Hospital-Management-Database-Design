-- insere les donner dans la table departements
INSERT INTO departements VALUES (1, 'Cardiology', 'First Floor');
INSERT INTO departements VALUES (2, 'Neurology', 'Second Floor');
INSERT INTO departements VALUES (3, 'Orthopedics', 'Third Floor');
INSERT INTO departements VALUES (4, 'Pediatrics', 'Ground Floor');
INSERT INTO departements VALUES (5, 'Dermatology', 'Second Floor');
INSERT INTO departements VALUES (6, 'Radiology', 'Ground Floor');
INSERT INTO departements VALUES (7, 'Urology', 'Fourth Floor');
INSERT INTO departements VALUES (8, 'Gastroenterology', 'Second Floor');
INSERT INTO departements VALUES (9, 'Dermatology', 'Third Floor');
INSERT INTO departements VALUES (10, 'Psychiatry', 'First Floor');

-- insere les donner dans la table rooms
INSERT INTO rooms  VALUES (1, '101', 'General', 1);
INSERT INTO rooms  VALUES (2, '102', 'Private', 1);
INSERT INTO rooms  VALUES (3, '103', 'ICU', 0);
INSERT INTO rooms  VALUES (4, '104', 'General', 1);
INSERT INTO rooms  VALUES (5, '105', 'Private', 0);
INSERT INTO rooms  VALUES (6, '106', 'ICU', 1);
INSERT INTO rooms  VALUES (6, '106', 'ICU', 1);
INSERT INTO rooms VALUES (7, '401', 'Private', 1);
INSERT INTO rooms VALUES (8, '402', 'General', 1);
INSERT INTO rooms VALUES (9, '501', 'ICU', 0);
INSERT INTO rooms VALUES (10, '502', 'Private', 1);

-- insere les donner dans la table medications
INSERT INTO medications VALUES (1, 'Paracetamol', '500mg');
INSERT INTO medications VALUES (2, 'Ibuprofen', '200mg');
INSERT INTO medications VALUES (3, 'Aspirin', '100mg');
INSERT INTO medications  VALUES (4, 'Metformin', '850mg');
INSERT INTO medications  VALUES (5, 'Atorvastatin', '10mg');
INSERT INTO medications  VALUES (6, 'Levothyroxine', '75mcg');
INSERT INTO medications  VALUES (7, 'Amlodipine', '5mg');
INSERT INTO medications  VALUES (8, 'Omeprazole', '20mg');
INSERT INTO medications  VALUES (9, 'Atorvastatin', '40mg');
INSERT INTO medications  VALUES (10, 'Losartan', '50mg');

-- insere les donner dans la table staff
INSERT INTO staff VALUES (1, 'John', 'Doe', 'Nurse', '1234567890', 'john.doe@example.com', 1);
INSERT INTO staff VALUES (2, 'Jane', 'Smith', 'Technician', '0987654321', 'jane.smith@example.com', 2);
INSERT INTO staff VALUES (3, 'Emily', 'Johnson', 'Receptionist', '1231231234', 'emily.johnson@example.com', 3);
INSERT INTO staff VALUES (4, 'Michael', 'Williams', 'Lab Assistant', '3213214321', 'michael.williams@example.com', 1);
INSERT INTO staff VALUES (5, 'Anna', 'Davis', 'Nurse', '4564564567', 'anna.davis@example.com', 4);
INSERT INTO staff VALUES (6, 'Emily', 'Adams', 'Nurse', '1011121314', 'emily.adams@gmail.com', 6);
INSERT INTO staff VALUES (7, 'Daniel', 'Williams', 'Technician', '2021222324', 'daniel.williams@yahoo.com', 7);
INSERT INTO staff VALUES (8, 'Sophia', 'Moore', 'Lab Assistant', '3031323334', 'sophia.moore@outlook.com', 8);
INSERT INTO staff VALUES (9, 'James', 'Taylor', 'Nurse', '4041424344', 'james.taylor@hotmail.com', 9);
INSERT INTO staff VALUES (10, 'Olivia', 'Brown', 'Receptionist', '5051525354', 'olivia.brown@gmail.com', 10);

-- insere les donner dans la table doctors
INSERT INTO doctors VALUES (1, 'Alice', 'Brown', 'Cardiologist', '1122334455', 'alice.brown@example.com', 1);
INSERT INTO doctors VALUES (2, 'Bob', 'Jones', 'Neurologist', '5566778899', 'bob.jones@example.com', 2);
INSERT INTO doctors VALUES (3, 'Charlie', 'Taylor', 'Orthopedic Surgeon', '9988776655', 'charlie.taylor@example.com', 3);
INSERT INTO doctors VALUES (4, 'Diana', 'Martinez', 'Pediatrician', '8877665544', 'diana.martinez@example.com', 4);
INSERT INTO doctors VALUES (5, 'Edward', 'Garcia', 'Dermatologist', '7766554433', 'edward.garcia@example.com', 5);
INSERT INTO doctors VALUES (6, 'James', 'Anderson', 'Emergency Physician', '555-2468', 'james.anderson@clinic.com', 6);
INSERT INTO doctors VALUES (7, 'Emma', 'Wilson', 'Dermatologist', '555-1357', 'emma.wilson@clinic.com', 7);
INSERT INTO doctors VALUES (8, 'Michael', 'Brown', 'Psychiatrist', '555-9876', 'michael.brown@clinic.com', 8);
INSERT INTO doctors VALUES (9, 'Sophia', 'Martinez', 'Gynecologist', '555-3690', 'sophia.martinez@clinic.com', 9);
INSERT INTO doctors VALUES (10, 'Daniel', 'Chen', 'Urologist', '555-7410', 'daniel.chen@clinic.com', 10);

-- insere les donner dans la table patients
INSERT INTO patients VALUES (1, 'Emily', 'Clark', 'Female', '1990-05-20', '9876543210', 'emily.clark@example.com', '123 Main Street');
INSERT INTO patients VALUES (2, 'Michael', 'Johnson', 'Male', '1985-03-15', '8765432109', 'michael.johnson@example.com', '456 Elm Street');
INSERT INTO patients VALUES (3, 'Sarah', 'Brown', 'Female', '1995-07-10', '7654321098', 'sarah.brown@example.com', '789 Pine Avenue');
INSERT INTO patients VALUES (4, 'James', 'Wilson', 'Male', '1980-11-05', '6543210987', 'james.wilson@example.com', '321 Oak Boulevard');
INSERT INTO patients VALUES (5, 'Anna', 'Taylor', 'Female', '1992-09-15', '5432109876', 'anna.taylor@example.com', '213 Birch Road');
INSERT INTO patients VALUES (6, 'Lucas', 'Hall', 'Male', '1980-08-10', '9998887776', 'lucas.hall@yahoo.com', '78 Clover Lane');
INSERT INTO patients VALUES (7, 'Liam', 'Robinson', 'Male', '1993-04-20', '8887776665', 'liam.robinson@gmail.com', '45 Maple Street');
INSERT INTO patients VALUES (8, 'Sophia', 'Thompson', 'Female', '1975-03-15', '7776665554', 'sophia.thompson@outlook.com', '32 Walnut Avenue');
INSERT INTO patients VALUES (9, 'Olivia', 'Anderson', 'Female', '1997-09-05', '6665554443', 'olivia.anderson@gmail.com', '11 Elm Boulevard');
INSERT INTO patients VALUES (10, 'Ethan', 'Lopez', 'Male', '1988-01-22', '5554443332', 'ethan.lopez@hotmail.com', '56 Birch Lane');

-- insere les donner dans la table addmissions
INSERT INTO addmissions VALUES (1, 1, 1, '2024-12-01', NULL);
INSERT INTO addmissions VALUES (2, 2, 2, '2024-11-20', '2024-12-05');
INSERT INTO addmissions VALUES (3, 3, 3, '2024-12-03', NULL);
INSERT INTO addmissions VALUES (4, 4, 4, '2024-12-04', '2024-12-10');
INSERT INTO addmissions VALUES (5, 5, 5, '2024-12-05', NULL);

-- insere les donner dans la table appointements
INSERT INTO appointements VALUES (1, '2024-12-10', '10:30:00', 1, 1, 'Routine Checkup');
INSERT INTO appointements VALUES (2, '2024-12-12', '14:00:00', 2, 2, 'Headache Consultation');
INSERT INTO appointements VALUES (3, '2024-12-15', '11:00:00', 3, 3, 'Knee Pain');
INSERT INTO appointements VALUES (4, '2024-12-16', '15:00:00', 4, 4, 'Child Vaccination');
INSERT INTO appointements VALUES (5, '2024-12-18', '09:00:00', 5, 5, 'Cancer Screening');
INSERT INTO appointements VALUES (6, '2024-12-20', '10:00:00', 6, 6, 'MRI Scan');
INSERT INTO appointements VALUES (7, '2024-12-21', '12:30:00', 7, 7, 'Urinary Infection Consultation');
INSERT INTO appointements VALUES (8, '2024-12-22', '14:00:00', 8, 8, 'Abdominal Pain');
INSERT INTO appointements VALUES (9, '2024-12-23', '09:15:00', 9, 9, 'Skin Rash');
INSERT INTO appointements VALUES (10, '2024-12-24', '16:45:00', 10, 10, 'Stress Management');

-- insere les donner dans la table prescriptions
INSERT INTO prescriptions VALUES (1, 1, 1, 1, '2024-12-02', 'Take one tablet after meals');
INSERT INTO prescriptions VALUES (2, 2, 2, 2, '2024-12-06', 'Take two tablets daily with water');
INSERT INTO prescriptions VALUES (3, 3, 3, 3, '2024-12-07', 'Apply cream twice daily');
INSERT INTO prescriptions VALUES (4, 4, 4, 4, '2024-12-08', 'Take one capsule in the morning');
INSERT INTO prescriptions VALUES (5, 5, 5, 5, '2024-12-09', 'Take one tablet before meals');
INSERT INTO prescriptions VALUES (6, 6, 6, 7, '2024-12-10', 'Take one tablet daily in the evening');
INSERT INTO prescriptions VALUES (7, 7, 7, 8, '2024-12-11', 'Take one tablet after meals');
INSERT INTO prescriptions VALUES (8, 8, 8, 9, '2024-12-12', 'Take one capsule before breakfast');
INSERT INTO prescriptions VALUES (9, 9, 9, 10, '2024-12-13', 'Apply cream on affected areas twice daily');
