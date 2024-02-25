CREATE DATABASE IF NOT EXISTS MedicalRecords;
USE MedicalRecords;
/* first we will create a table with columns that correspond to the
csv file*/
CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Date_of_birth DATE,
    Gender VARCHAR(1),
    Medical_conditions VARCHAR(255),
    Medications VARCHAR(255),
    Allergies VARCHAR(255),
    Last_appointment_date DATE
);
/* After importing the csv file into the table, 
we can check to make sure the records have been succefully loaded*/
SELECT * FROM Patients;
--
-- We are now ready to run some queries
--
/*Count the Number of Patients in the Dataset:*/
SELECT COUNT(*) AS total_patients FROM Patients;

/* Display the count of females and males */
SELECT Gender, COUNT(*) AS GenderCount
FROM Patients
GROUP BY Gender;

/* Calculate the Average Age of Patients based on Last Appointment Date */
SELECT AVG(YEAR(Last_appointment_date) - YEAR(Date_of_birth)) AS average_age
FROM Patients;

/* Find patients who had appointments in the last month of the dataset */
SELECT Patient_ID, Last_appointment_date
FROM Patients
WHERE Last_appointment_date >= (SELECT MAX(Last_appointment_date) FROM Patients) - INTERVAL 1 MONTH;

/* Find patients with a specific allergy */
SELECT Patient_ID, Allergies
FROM Patients
WHERE Allergies LIKE '%tree%';

/* Find patients with a specific word in their medications */
SELECT Patient_ID, Medications
FROM Patients
WHERE Medications LIKE '%example%';

/* Find males with a specific type of condition and allergy */
SELECT Patient_ID, Medications , Allergies
FROM Patients
WHERE Gender = 'M'
    AND Medications LIKE '%account%'
    AND Allergies LIKE '%above%';

/* Display all the diffrent medical conditions and count their occurances*/
SELECT
    MedicalConditionWord,
    COUNT(*) AS WordCount
FROM (SELECT
    Patient_ID,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Medical_conditions, ',', numbers.n), ',', -1)) AS MedicalConditionWord
	FROM
    Patients
	JOIN (
    SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 )
    numbers ON CHAR_LENGTH(Medical_conditions) - CHAR_LENGTH(REPLACE(Medical_conditions, ',', '')) >= numbers.n - 1
)
AS SplitWords
GROUP BY MedicalConditionWord
ORDER BY WordCount DESC
LIMIT 1000;
