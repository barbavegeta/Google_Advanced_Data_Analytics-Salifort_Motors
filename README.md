# Salifort Motors – HR Analytics & Employee Turnover
This repository contains my work for the **Salifort Motors HR analytics capstone project** from the Google Advanced Data Analytics programme.
The goal of the project is to use HR data to:
- Understand which factors are most associated with employees leaving the company.
- Build predictive models to estimate the probability of turnover.
- Translate the findings into actionable recommendations for retention.
The analysis is implemented in Python using **pandas**, **NumPy**, **scikit-learn**, and **XGBoost**, with visualisation in **Matplotlib/Seaborn**.
---
## Repository structure
- `SB_Activity_Salifort_Motors_project_lab.ipynb`  
  Main Jupyter notebook.  
  Contains:
  - Exploratory data analysis (EDA) of the HR dataset.
  - Feature engineering and preprocessing.
  - Model training and evaluation for:
    - Baseline models (e.g. logistic regression / simple classifiers).
    - Tree-based models (Random Forest, XGBoost).
  - Comparison of model performance and interpretation of key features.
- `HR_capstone_dataset_Salifort.csv`  
  HR dataset used in the project (employee-level records with features such as satisfaction, tenure, salary, etc.).
- `hr_rf1.pickle`, `hr_rf2.pickle`  
  Serialized **RandomForest** models fitted in the notebook.
- `hr_xgb_model1.json`, `hr_xgb_model2.json`  
  Serialized **XGBoost** models.
- `xgb_model1_metadata.pkl`, `xgb_model2_metadata.pkl`  
  Python pickles containing metadata for the XGBoost models (e.g. feature lists, preprocessing details).
- `html_visual_SB_Activity_Salifort_Motors_project_lab.html`  
  HTML export of the main notebook for viewing in a browser without Jupyter.
- `extract_images_from_ipynb.sh`  
  Helper shell script to extract image outputs from the notebook.
- `ipynb_to_html.sh`  
  Helper shell script to convert the notebook to HTML.
> Note: The model files (`*.pickle`, `*.pkl`, `*.json`) and HTML export are convenience artefacts.  
> The notebook can recreate the models from scratch as long as the required libraries and dataset are available.
---
## How to run the notebook
### 1. Clone the repository
```bash
git clone https://github.com/barbavegeta/Google_Advanced_Data_Analytics-Salifort_Motors.git
cd Google_Advanced_Data_Analytics-Salifort_Motors
```
### 2. Create and activate an environment
Using **conda** (recommended):
```bash
conda create -n salifort_motors python=3.10 -y
conda activate salifort_motors
```
### 3. Install dependencies
```bash
pip install   numpy   pandas   matplotlib   seaborn   scikit-learn   xgboost   jupyter
```
(If you already have these packages installed, you can skip this step.)
### 4. Launch Jupyter
```bash
jupyter notebook
```
In the browser interface, open:
```text
SB_Activity_Salifort_Motors_project_lab.ipynb
```
and run the cells from top to bottom.
---
## Reusing the trained models
The repository includes pre-trained model artefacts:
- RandomForest: `hr_rf1.pickle`, `hr_rf2.pickle`
- XGBoost: `hr_xgb_model1.json`, `hr_xgb_model2.json`
- XGBoost metadata: `xgb_model1_metadata.pkl`, `xgb_model2_metadata.pkl`
These are primarily for convenience and reproducibility.  
If you only care about understanding the analysis and the modelling workflow, you can ignore these files and simply retrain the models by running the notebook.
> If you want a lighter clone of the repository, you can safely delete the model artefacts from your local copy and re-run the notebook to regenerate them.
---
## Project outline
The main notebook roughly follows these steps:
1. **Load data**
   - Read `HR_capstone_dataset_Salifort.csv` into a pandas DataFrame.
   - Inspect structure, data types, and missing values.
2. **Exploratory data analysis**
   - Summary statistics and distributions for key variables.
   - Visualisations (e.g. histograms, boxplots, bar charts) to compare employees who stayed vs left.
   - Correlations and simple cross-tabs.
3. **Preprocessing and feature engineering**
   - Handle missing values if present.
   - Encode categorical variables (e.g. one-hot encoding).
   - Scale or transform features as needed for certain models.
4. **Model training and evaluation**
   - Train baseline models and tree-based models (RandomForest, XGBoost).
   - Split data into training and test sets.
   - Evaluate models using accuracy and other metrics (e.g. precision, recall, ROC-AUC) on a hold-out set.
   - Compare performance and select preferred model(s).
5. **Interpretation and business recommendations**
   - Inspect feature importances / model coefficients.
   - Identify which HR factors are most strongly associated with turnover.
   - Translate findings into suggested actions (e.g. targeting specific risk groups, adjusting workload/compensation, or monitoring key indicators).
---
## Notes
- This project is designed as a **learning and portfolio piece**, not a production system.
- All modelling is done on a static, de-identified dataset. No live or proprietary company data is used.
- The emphasis is on:
  - Clear, reproducible analysis in a single notebook.
  - Interpretable results that can inform HR decisions at Salifort Motors or similar organisations.
