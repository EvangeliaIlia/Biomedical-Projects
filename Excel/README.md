# Clinical Trial Data Analysis

## Overview
This project involves the analysis of a synthetic clinical trial dataset generated using Python's Faker library. The dataset includes information about patients participating in clinical trials, such as trial phase, outcomes, side effects, participant age, and gender.

## Dataset Generation
The dataset was generated using a Python script that utilizes the Faker library to create synthetic clinical trial data. The script specifies the number of patients, defines the fields for the CSV file, generates fake data, and introduces missing values for participant ages.

### Columns Created in Python:
1. **PatientID:** Unique identifier for each patient participating in the clinical trials.
2. **Phase:** The phase of the clinical trial the patient is assigned to (e.g., Phase 1, Phase 2, Phase 3, Phase 4).
3. **Outcome:** The outcome of the clinical trial for each patient (e.g., Positive, Negative, Neutral).
4. **SideEffects:** Any reported side effects experienced by the patient during the clinical trial.
5. **Participant_Age:** The age of the participant in the clinical trial. Missing values may be present as part of the synthetic data generation process.
6. **Participant_Gender:** The gender of the participant in the clinical trial (e.g., Male, Female).

## Data Analysis Steps
The data analysis was performed in Excel and involved several steps:

1. **Data Cleaning:** Missing ages were identified and handled appropriately.
2. **Data Formatting:** Conditional formatting was applied to color cells based on trial outcomes.
3. **Lookup Table:** A summary lookup table was created to provide an overview of the dataset, including key metrics such as average age, gender distribution, outcome counts, and most common side effects.
4. **Pivot Tables:** Several pivot tables were generated to analyze and summarize different aspects of the data, including outcomes per phase, side effects per gender, total outcomes, and age distribution.
5. **Charts:** Charts and graphs were generated from the pivot tables to visually represent the analyzed data.
6. **Calculations:** Various calculations were performed, including average age, average age per gender, percentage of positive outcomes, percentage of reports with tachycardia, and percentage of reports with no side effects.

## Project Structure
The project files include:
- `Fake_Clinical_Trial_Dataset.ipynb` : The python script notebook used to create the dataset (can be modified)
- `clinical_trial_data.csv`: The synthetic dataset generated using Python.
- `clinical_trial_analysis.xlsx`: The Excel file containing the dataset and analysis results.
- `README.md`: This README file providing an overview of the project.

## Usage
1. **Dataset Generation:** Run the provided Python script to generate the synthetic dataset or download the provided CSV.
2. **Data Analysis:** Open the Excel file to view the dataset and analysis results.
3. **Exploration:** Explore the pivot tables, charts, and summary metrics to gain insights into the clinical trial data.

## License
This project is licensed under the [MIT License](https://www.mit.edu/~amini/LICENSE.md).

## Acknowledgments
- The synthetic dataset was generated using the [Faker](https://faker.readthedocs.io/en/master/) library.
- Analysis and visualization were performed using Microsoft Excel.
