# Salifort Motors: Employee Turnover Analysis

This repository contains the **Capstone Project** for the **Google Advanced Data Analytics Certificate**, focusing on employee turnover analysis at **Salifort Motors**. The goal is to identify factors contributing to employee attrition and to build predictive models that can help HR teams make data-driven decisions to retain talent.

## Project Overview

In this project, we:
- Explored and analyzed the Salifort Motors HR dataset.
- Conducted feature engineering (e.g., ordinal encoding of salary).
- Built and evaluated classification models (Random Forest and XGBoost).
- Analyzed model performance using metrics like accuracy, ROC-AUC, precision, recall, and F1 score.
- Visualized confusion matrices for clear interpretation.

## Project Structure

```
salifort-motors-employee-turnover/
|
├── images/
│
├── hr_data.csv # Raw HR dataset
│
├── analysis.ipynb # Jupyter Notebook with analysis
│
├── hr_rf1.pickle # Trained Random Forest model for Dataset 1
├── hr_rf2.pickle # Trained Random Forest model for Dataset 2
│
├── hr_xgb_model1.json # Trained XGBoost model for Dataset 1
├── hr_xgb_model1_metadata.pkl # Metadata for XGBoost model 1
│
├── hr_xgb_model2.json # Trained XGBoost model for Dataset 2
├── hr_xgb_model2_metadata.pkl # Metadata for XGBoost model 2
├── extract_images_from_ipynb.sh # bash script to extract all images
└── README.md # This file

```


### Confusion Matrix
Plot confusion matrices using ConfusionMatrixDisplay from sklearn.metrics.

#### Key Libraries
- Python 3.12+

- pandas

- numpy

- scikit-learn

- xgboost

- matplotlib

- seaborn