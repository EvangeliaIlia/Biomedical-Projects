# Medical Records SQL Project

## Overview
This SQL project focuses on analyzing a simulated medical records dataset. The dataset is entirely fictional, generated using the Python Faker library, and is meant for demonstration and testing purposes only.

## Dataset Description
The dataset includes the following fields for each patient:
- Patient ID: A unique identifier for each patient (integer).
- Name: A randomly generated full name (string).
- Date of birth: A randomly generated date of birth with ages between 1 and 100 years old (date).
- Gender: A randomly selected gender (M or F) (string).
- Medical conditions: A list of three random, unique words representing medical conditions (string).
- Medications: A list of three random, unique words representing medications (string).
- Allergies: A list of three random, unique words representing allergies (string).
- Last appointment date: A randomly generated date within the range of the last 2 years (date).

## Queries Included
The project includes a set of SQL queries for various analyses:
1. Display the count of females and males.
2. Calculate the average age of patients based on the last appointment date.
3. Find patients who had appointments in the last month of the dataset.
4. Find patients with a specific allergy.
5. Find patients with a specific word in their medications.
6. Find females with a specific type of condition and allergy.
7. Display all the different medical conditions and count their occurrences.

## Notes
- The dataset is entirely fake, and the conditions, medications, allergies columns have 3 random words that are not 
correlated with the columns.
- The queries are designed for educational and illustrative purposes.

## Dataset Source
The dataset used in this project was obtained from Kaggle. Please note that the license information for the dataset is 
marked as "unknown" on Kaggle. 


## Instructions
1. Load the dataset into your MySQL database using the provided CSV file.
2. Execute the SQL queries in your MySQL environment to perform the analyses.
