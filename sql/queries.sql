-- CRUD Operations : Insérer un nouveau patient:
-- Insérez un nouveau patient nommé "Alex Johnson", 
-- né le 15 juillet 1990, de sexe masculin, avec le numéro de téléphone "1234567890".

insert into patients 
values (11,'Alex',  'Johnson', '1990-07-15', 'Male', '1234567890', NULL, NULL)

-- 2. SELECT Statement : Récupérer tous les départements:
-- Récupérez tous les départements avec leurs emplacements.
select * from departements

-- 3. ORDER BY Clause : Trier les patients par date de naissance Listez tous les patients,
--  triés par date de naissance dans l'ordre croissant.
select * from patients 
order by date_of_birth asc;

--  4. Filtrer les patients uniques par sexe (DISTINCT) Récupérez tous les sexes des 
-- patients enregistrés, sans doublons.
select distinct gender 
from patients ;

-- 5. LIMIT Clause : Obtenir les 3 premiers médecins Récupérez les 
-- trois premiers médecins dans la table doctors.
select * from doctors 
limit 3;

-- 6. WHERE Clause : Patients nés après 2000 Récupérez les informations
--  des patients nés après l'année 2000.
select * from patients 
where date_of_birth >= '2000-01-01';

-- 7. Logical Operators : Médecins dans des départements spécifiques 
-- Récupérez les médecins des départements "Cardiology" et "Neurology".
select * from departements 
where departement_name = 'Cardiology' 
or departement_name = 'Neurology';
-- 8. Special Operators : Vérifier des plages de dates Listez les 
-- admissions entre le 1er décembre et le 7 décembre 2024.
select * from addmissions 
where addmission_date  between '2024-12-01' and '2024-12-7' order by addmission_date;

-- 9. Conditional Expressions : Nommer les catégories d'âge des patients Ajoutez une colonne
--  catégorisant les patients en "Enfant", "Adulte", ou "Senior" selon leur âge.
alter table patients add column category enum('Enfant', 'Adulte', 'Senior');
UPDATE patients
SET category = CASE
    when TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) <= 18 then 'Enfant'
    when TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) > 18 and TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) <= 50 then 'Adulte'
    when TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) > 50 then 'Senior'
    ELSE NULL
END;

-- 10. Aggregate Functions : Nombre total de rendez-vous Comptez le nombre total de rendez-vous enregistrés.
 
select count(*) as nbr_total_de_rendez_vous from appointements;

--  11.COUNT avec GROUP BY : Nombre de médecins par département Comptez le nombre de médecins dans chaque département.
select  departement_name, count(*) as nombre_de_médecins from doctors
join departements on doctors.departement_id = departements.departement_id
group by departement_name;
-- 12. AVG : Âge moyen des patients Calculez l'âge moyen des patients.
select AVG(TIMESTAMPDIFF(YEAR, date_of_birth, NOW())) as moyenne_age from patients;


-- 13. MAX : Dernier rendez-vous Trouvez la date et l'heure du dernier rendez-vous enregistré.
 
select MAX( addmission_date) AS dernier_rendez_vous from  addmissions;
-- 14. SUM : Total des admissions par chambre Calculez le total des admissions pour chaque chambre.
select sum(
  case 
    when addmission_id is not null then 1
    else 0
  end
) AS total_admissions from addmissions group by room_id;

-- 15. Constraints : Vérifier les patients sans e-mail Récupérez tous les patients dont le champ email est vide.
select * from patients where email is NULL

-- 16. Jointure : Liste des rendez-vous avec noms des médecins et patients Récupérez 
-- les rendez-vous avec les noms des médecins et des patients.

select  concat(patients.first_name, ' ', patients.last_name) as full_name, appoimntement_date , 
concat(doctors.first_name, ' ', doctors.last_name) AS doctor_name 
from appointements
join doctors on doctors.doctor_id=appointements.doctor_id
join patients on patients.patient_id=patients.patient_id;

-- 17. DELETE : Supprimer les rendez-vous avant 2024 Supprimez tous les rendez-vous programmés avant 2024.
delete from addmissions where addmission_date< '2024-01-01'

-- 18. UPDATE : Modifier un département Changez le nom du département "Oncology" en "Cancer Treatment".
UPDATE departements 
SET departement_name = 'Cancer Treatment'
WHERE departement_name = 'Oncology';

-- 19. HAVING Clause : Patients par sexe avec au moins 2 entrées Listez les genres ayant au moins deux patients.
SELECT gender, count(*) AS all_patients
FROM patients
GROUP BY gender
HAVING all_patients >= 2;

-- 20. Créer une vue : Admissions actives Créez une vue listant toutes les admissions en cours.
create view admissions_actives as 
select * from addmissions 
where discharge_date is null ;

-- Questions bonus pour les jointures:

-- Bonus 2 : Liste des rendez-vous par département Récupérez la liste des rendez-vous avec les départements associés.
select departement_name , addmission_date 
from departements
join doctors on departements.departement_id = doctors.departement_id
join appointements on doctors.doctor_id = appointements.doctor_id
join patients on appointements.patient_id =  patients.patient_id
join addmissions on   addmissions.patient_id = patients.patient_id

-- Bonus 3 : Médicaments prescrits par médecin Listez les médicaments prescrits par chaque médecin.
select concat(patients.first_name, ' ', patients.last_name) as patient_name ,
  concat(doctors.first_name, ' ', doctors.last_name) as doctor, 
  medication_name, 
  dosage_instructions 
from prescriptions
join doctors on doctors.doctor_id = prescriptions.doctor_id
join patients on prescriptions.patient_id = patients.patient_id
join medications on prescriptions.medication_id = medications.medication_id

-- Bonus 4 : Admissions et leurs chambres associées Récupérez les informations des admissions 
-- et des chambres où les patients sont placés.
select concat(patients.first_name, ' ', patients.last_name) as patient_name ,
  addmission_date, discharge_date, room_number
from addmissions
join rooms on addmissions.room_id = rooms.room_id
join patients on addmissions.patient_id = patients.patient_id
where addmissions.discharge_date is null

-- Bonus 5 : Statistiques des patients par département Comptez 
-- le nombre de patients associés à chaque département via leurs admissions.

select departement_name , count(patients.patient_id) as nombre_des_patients
from departements
join doctors on doctors.departement_id = departements.departement_id
join appointements on doctors.doctor_id = appointements.doctor_id
join patients on appointements.patient_id = patients.patient_id
join addmissions on addmissions.patient_id = patients.patient_id
group by departement_name


