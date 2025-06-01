jupyter nbconvert \
    --to html \
    --ExtractOutputPreprocessor.enabled=True \
    --ExtractOutputPreprocessor.extract_output_types='image/png,image/jpeg,image/svg+xml' \
    --output-dir=exported_files \
    SB_Activity_Salifort_Motors_project_lab.ipynb